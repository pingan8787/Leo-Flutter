import 'package:flutter/material.dart';

// 重写动画效果
class CustomeRouter extends PageRouteBuilder {
  final Widget widget;

  CustomeRouter(this.widget):super(
    transitionDuration:Duration(seconds: 1),
    pageBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
    ){
      return widget;
    },
    transitionsBuilder:(
      BuildContext context,
      Animation<double> animation1,
      Animation<double> animation2,
      Widget child,
    ){
      // 1. 渐隐渐显效果
      // return FadeTransition(
      //   opacity: Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn, // 动画曲线
      //   )),
      //   child: child,
      // );
      // 注释：
      // FadeTransition:渐隐渐现过渡效果，主要设置opactiy（透明度）属性，值是0.0-1.0。
      // animate :动画的样式，一般使用动画曲线组件（CurvedAnimation）。
      // curve: 设置动画的节奏，也就是常说的曲线，Flutter准备了很多节奏，通过改变动画取消可以做出很多不同的效果。
      // transitionDuration：设置动画持续的时间，建议再1和2之间。

      // 2. 缩放动画效果
      // return ScaleTransition(
      //   scale: Tween(begin: 0.0 ,end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: child,
      // );

      // 3. 旋转 + 缩放效果
      // return RotationTransition(
      //   turns: Tween(begin: 0.0 ,end: 1.0).animate(CurvedAnimation(
      //     parent: animation1,
      //     curve: Curves.fastOutSlowIn
      //   )),
      //   child: ScaleTransition(
      //     scale: Tween(begin: 0.0 ,end: 1.0).animate(CurvedAnimation(
      //       parent: animation1,
      //       curve: Curves.fastOutSlowIn
      //     )),
      //     child: child,  
      //   ),
      // );

      // 4. 左右滑动动画效果
      return SlideTransition(
        position: Tween<Offset>(
          begin: Offset(-1.0, 0.0),
          end: Offset(0.0, 0.0)
        ).animate(CurvedAnimation(
          parent: animation1,
          curve: Curves.fastOutSlowIn

        )),
        child: child,
      );
    }
  );
}