import 'package:flutter/material.dart';
import 'dart:math' as math;

Widget _defaultTransitionBuilder(Widget child, Animation<double> animation) =>
    ScaleTransition(
      scale: animation,
      child: child,
    );

class IconToggle extends StatefulWidget {
  IconToggle({
    this.unselectedIconData = Icons.radio_button_unchecked,
    this.selectedIconData = Icons.radio_button_checked,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
    this.value = false,
    this.onChanged,
    this.transitionBuilder = _defaultTransitionBuilder,
    this.duration = const Duration(milliseconds: 100),
    required this.reverseDuration,
  });
  final IconData selectedIconData;
  final IconData unselectedIconData;
  final Color activeColor;
  final Color inactiveColor;
  final bool value;
  final ValueChanged<bool>? onChanged;
  final AnimatedSwitcherTransitionBuilder transitionBuilder;
  final Duration duration;
  final Duration reverseDuration;
  @override
  _IconToggleState createState() => _IconToggleState();
}

class _IconToggleState extends State<IconToggle>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _position;
  bool _cancel = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 100),
      reverseDuration: Duration(milliseconds: 50),
    );
    _position = CurvedAnimation(parent: _controller, curve: Curves.linear);
    _position.addStatusListener((status) {
      if (status == AnimationStatus.dismissed &&
          widget.onChanged != null &&
          _cancel == false) {
        widget.onChanged!(!widget.value);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (event) {
        _cancel = false;
        _controller.forward();
      },
      onTapUp: (event) {
        _controller.reverse();
      },
      onTapCancel: () {
        _cancel = true;
        _controller.reverse();
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: _IconToggleable<double>(
          listenable: _position,
          activeColor: widget.activeColor,
          inactiveColor: widget.inactiveColor,
          child: AnimatedSwitcher(
            duration: widget.duration,
            reverseDuration: widget.reverseDuration,
            transitionBuilder: widget.transitionBuilder,
            child: Icon(
              widget.value
                  ? widget.selectedIconData
                  : widget.unselectedIconData,
              color: widget.value ? widget.activeColor : widget.inactiveColor,
              size: 22,
              key: ValueKey<bool>(widget.value),
            ),
          ),
        ),
      ),
    );
  }
}

class _IconToggleable<T> extends AnimatedWidget {
  _IconToggleable({
    required this.listenable,
    required this.activeColor,
    required this.inactiveColor,
    required this.child,
  }) : super(listenable: listenable);
  final Color activeColor;
  final Color inactiveColor;
  final Widget child;
  final Animation<double> listenable;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _IconPainter(
        position: listenable,
        activeColor: activeColor,
        inactiveColor: inactiveColor,
      ),
      child: child,
    );
  }
}

class _IconPainter extends CustomPainter {
  _IconPainter({
    required this.position,
    required this.activeColor,
    required this.inactiveColor,
  });
  final Animation<double> position;
  final Color activeColor;
  final Color inactiveColor;

  double get _value => position.value;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Color.lerp(inactiveColor, activeColor, _value)!
          .withOpacity(math.min(_value, 0.15))
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), 20 * _value, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
