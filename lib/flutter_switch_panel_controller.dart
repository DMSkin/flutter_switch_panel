// 控制器
import 'package:flutter/material.dart';

class FlutterSwitchPanelController extends ChangeNotifier {
  // 工具的页下标
  late int pageIndex = -1;
  late double _keyBoardHeight = 0;

  double get keyBoardHeight => _keyBoardHeight;

  void hide() {
    pageIndex = -1;
    notifyListeners();
  }

  void show({int index = -1}) {
    //display = true;
    pageIndex = index;
    notifyListeners();
  }

  void setKeyBoardHeight(double height) {
    _keyBoardHeight = height;
  }
}
