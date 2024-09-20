## FlutterSwitchPanel
flutter_switch_panel 
该仓库是封装的切换组件

<img src="https://raw.githubusercontent.com/DMSkin/flutter_switch_panel/main/images/1.png" width='300'>
<img src="https://raw.githubusercontent.com/DMSkin/flutter_switch_panel/main/images/2.png" width='300'>

表情组件             |  功能组件
:-------------------------:|:-------------------------:
<img src="https://raw.githubusercontent.com/DMSkin/flutter_switch_panel/main/images/1.png" width='300'> |  <img src="https://raw.githubusercontent.com/DMSkin/flutter_switch_panel/main/images/2.png" width='300'>

## 项目引用
```yaml
# 引入组件，可以引用本地，也可以使用远程仓库
  flutter_switch_panel:
    #path: ../flutter_switch_panel // 本地引用方式
    git: 
       url: https://github.com/DMSkin/flutter_switch_panel.git
       # ref: main //分支
       # path: ../flutter_switch_panel  //设置本地路径，但是暂时无效
       # name: flutter_switch_panel //名称
```

## 动态设置键盘高度
```dart
/// 需要设置 键盘高度
final keyBoardHeight = MediaQuery.of(context).viewInsets.bottom;
controller.switchPanelController.setKeyBoardHeight(keyBoardHeight);
```

## 布局
```dart
/// 需要设置键盘覆盖内容
Scaffold(
  resizeToAvoidBottomInset: false,
)

SwitchPanel(
controller: controller.switchPanelController,
 children: [
    // 表情组件
    _buildEmojiPanel(),
    // 工具组件
    _buildToolPanel(),
  ],
)
```

## 控制器
```dart
  // 底部控制器
  late SwitchPanelController switchPanelController;

  @override
  void onInit() {
    /// 初始化控制器
    switchPanelController = SwitchPanelController();
    super.onInit();
  }

  @override
  void onClose() {
    /// 记得销毁控制器
    switchPanelController.dispose();
    super.onClose();
  }
```

## 使用
```dart
   // 关闭键盘
   FocusUtils.unfocus();
   controller.switchPanelController.hide();

   // 显示键盘
   TextField(
     onTap: () async {
        controller.switchPanelController.show();
      }
   )

   // 表情组件
   FocusUtils.unfocus();
   controller.switchPanelController.show(index: 0);

   // 工具组件
   FocusUtils.unfocus();
   controller.switchPanelController.show(index: 1);
```

