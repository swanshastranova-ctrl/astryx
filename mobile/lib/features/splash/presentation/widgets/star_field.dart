import 'dart:math';
import 'package:flutter/material.dart';

class StarField extends StatelessWidget {
  const StarField({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return Stack(
      children: List.generate(120, (index) {
        final size = random.nextDouble() * 3 + 1;
        final left = random.nextDouble() *
            MediaQuery.of(context).size.width;
        final top = random.nextDouble() *
            MediaQuery.of(context).size.height;

        return Positioned(
          left: left,
          top: top,
          child: _TwinklingStar(size: size),
        );
      }),
    );
  }
}

class _TwinklingStar extends StatefulWidget {
  final double size;

  const _TwinklingStar({required this.size});

  @override
  State<_TwinklingStar> createState() => _TwinklingStarState();
}

class _TwinklingStarState extends State<_TwinklingStar>
    with SingleTickerProviderStateMixin {

  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 1200 + Random().nextInt(2000),
      ),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0.2,
        end: 1,
      ).animate(_controller),
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}