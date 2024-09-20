// 控制器
import 'package:flutter/material.dart';

class FlutterSwitchPanelController extends ChangeNotifier {
  // 工具的页下标
  late int pageIndex = -1;
  late double _keyBoardHeight = 0;
  late double _panelHeight = 180;

  double get keyBoardHeight => _keyBoardHeight;
  double get panelHeight => _panelHeight;

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

  void setPanelHeight(double height) {
    _panelHeight = height;
  }
}
