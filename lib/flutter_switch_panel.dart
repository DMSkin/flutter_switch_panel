library flutter_switch_panel;

import 'package:flutter/material.dart';
import 'package:flutter_switch_panel/flutter_switch_panel_controller.dart';

class FlutterSwitchPanel extends StatefulWidget {
  const FlutterSwitchPanel({
    super.key,
    this.panelHeight = 200,
    required this.children,
    required this.controller,
  });

  // 容器高度
  final double panelHeight;

  // 子页面
  final List children;

  // 控制器
  final FlutterSwitchPanelController controller;

  @override
  State<FlutterSwitchPanel> createState() => _FlutterSwitchPanelState();
}

class _FlutterSwitchPanelState extends State<FlutterSwitchPanel>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    widget.controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    //debugPrint("键盘重绘");
    double height;
    Widget? child;
    if (widget.controller.pageIndex >= 0) {
      // 工具箱
      height = widget.panelHeight;
      child = widget.children[widget.controller.pageIndex];
    } else {
      // 键盘
      height = widget.controller.keyBoardHeight;
    }
    return AnimatedSize(
      alignment: Alignment.topCenter,
      duration: Durations.short4,
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: child,
      ),
    );
  }
}
