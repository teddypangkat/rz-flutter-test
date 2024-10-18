import 'package:flutter/material.dart';

class RZSpacing extends StatelessWidget {
  const RZSpacing.vertical({
    super.key,
    required this.size,
  }) : axis = Axis.vertical;
  const RZSpacing.vertical4({super.key})
      : size = 4,
        axis = Axis.vertical;
  const RZSpacing.vertical8({super.key})
      : size = 8,
        axis = Axis.vertical;
  const RZSpacing.vertical12({super.key})
      : size = 12,
        axis = Axis.vertical;
  const RZSpacing.vertical16({super.key})
      : size = 16,
        axis = Axis.vertical;
  const RZSpacing.vertical20({super.key})
      : size = 20,
        axis = Axis.vertical;
  const RZSpacing.vertical24({super.key})
      : size = 24,
        axis = Axis.vertical;
  const RZSpacing.vertical28({super.key})
      : size = 28,
        axis = Axis.vertical;
  const RZSpacing.vertical32({super.key})
      : size = 32,
        axis = Axis.vertical;
  const RZSpacing.vertical36({super.key})
      : size = 36,
        axis = Axis.vertical;
  const RZSpacing.vertical40({super.key})
      : size = 40,
        axis = Axis.vertical;
  const RZSpacing.vertical44({super.key})
      : size = 44,
        axis = Axis.vertical;
  const RZSpacing.vertical48({super.key})
      : size = 48,
        axis = Axis.vertical;
  const RZSpacing.vertical52({super.key})
      : size = 52,
        axis = Axis.vertical;
  const RZSpacing.vertical56({super.key})
      : size = 56,
        axis = Axis.vertical;
  const RZSpacing.vertical60({super.key})
      : size = 60,
        axis = Axis.vertical;
  const RZSpacing.vertical64({super.key})
      : size = 64,
        axis = Axis.vertical;
  const RZSpacing.vertical68({super.key})
      : size = 68,
        axis = Axis.vertical;
  const RZSpacing.vertical72({super.key})
      : size = 72,
        axis = Axis.vertical;
  const RZSpacing.vertical76({super.key})
      : size = 76,
        axis = Axis.vertical;
  const RZSpacing.vertical80({super.key})
      : size = 80,
        axis = Axis.vertical;

  const RZSpacing.horizontal({
    super.key,
    required this.size,
  }) : axis = Axis.horizontal;
  const RZSpacing.horizontal4({super.key})
      : size = 4,
        axis = Axis.horizontal;
  const RZSpacing.horizontal8({super.key})
      : size = 8,
        axis = Axis.horizontal;
  const RZSpacing.horizontal12({super.key})
      : size = 12,
        axis = Axis.horizontal;
  const RZSpacing.horizontal16({super.key})
      : size = 16,
        axis = Axis.horizontal;
  const RZSpacing.horizontal20({super.key})
      : size = 20,
        axis = Axis.horizontal;
  const RZSpacing.horizontal24({super.key})
      : size = 24,
        axis = Axis.horizontal;
  const RZSpacing.horizontal28({super.key})
      : size = 28,
        axis = Axis.horizontal;
  const RZSpacing.horizontal32({super.key})
      : size = 32,
        axis = Axis.horizontal;
  const RZSpacing.horizontal36({super.key})
      : size = 36,
        axis = Axis.horizontal;
  const RZSpacing.horizontal40({super.key})
      : size = 40,
        axis = Axis.horizontal;
  const RZSpacing.horizontal44({super.key})
      : size = 44,
        axis = Axis.horizontal;
  const RZSpacing.horizontal48({super.key})
      : size = 48,
        axis = Axis.horizontal;
  const RZSpacing.horizontal52({super.key})
      : size = 52,
        axis = Axis.horizontal;
  const RZSpacing.horizontal56({super.key})
      : size = 56,
        axis = Axis.horizontal;
  const RZSpacing.horizontal60({super.key})
      : size = 60,
        axis = Axis.horizontal;
  const RZSpacing.horizontal64({super.key})
      : size = 64,
        axis = Axis.horizontal;
  const RZSpacing.horizontal68({super.key})
      : size = 68,
        axis = Axis.horizontal;
  const RZSpacing.horizontal72({super.key})
      : size = 72,
        axis = Axis.horizontal;
  const RZSpacing.horizontal76({super.key})
      : size = 76,
        axis = Axis.horizontal;
  const RZSpacing.horizontal80({super.key})
      : size = 80,
        axis = Axis.horizontal;

  final double size;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return axis == Axis.horizontal
        ? SizedBox(width: size)
        : SizedBox(height: size);
  }
}
