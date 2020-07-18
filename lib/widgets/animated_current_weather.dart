import 'package:flutter/material.dart';

class AnimatedCurrentWeather extends StatefulWidget {
  const AnimatedCurrentWeather({
    Key key,
    @required this.toValue,
    this.duration = const Duration(milliseconds: 500),
  })  : assert(toValue != null),
        assert(duration != null),
        super(key: key);

  final double toValue;
  final Duration duration;

  @override
  State<StatefulWidget> createState() => _AnimatedCurrentWeatherState();
}

class _AnimatedCurrentWeatherState extends State<AnimatedCurrentWeather>
    with SingleTickerProviderStateMixin {
  // Animation<double> _animation;
  // AnimationController _controller;

  // String _number;

  // @override
  // void initState() {
  //   super.initState();

  // _controller = AnimationController(
  //   duration: widget.duration,
  //   vsync: this,
  // );

  // _animation = Tween<double>(
  //         begin: widget.toValue >= 10
  //             ? widget.toValue - 10
  //             : widget.toValue + 10,
  //         end: widget.toValue)
  //     .animate(_controller)
  //       ..addListener(() {
  //         setState(() {
  //           _number = _animation.value.toStringAsFixed(0);
  //         });
  //       });

  // _controller.forward();
  // }

  // @override
  // Future<void> dispose() async {
  //   _controller.dispose();

  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          widget.toValue.toStringAsFixed(1) ?? '0',
          style: textTheme.headline1.copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
