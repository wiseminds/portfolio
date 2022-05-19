import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

class FadeRoute extends PageRouteBuilder {
  final Widget Function(BuildContext) builder;
  final RouteSettings settings;
  final bool soft;
  final Duration? duration;
  FadeRoute(
      {this.soft = false,
      this.duration,
      required this.settings,
      required this.builder})
      : super(
            settings: settings,
            transitionDuration: duration ?? const Duration(milliseconds: 400),
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                builder(context),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              // animation =
              //     CurvedAnimation(parent: animation, curve: Curves.decelerate);
              return soft
                  ? FadeTransition(
                      opacity: animation,
                      child: FadeTransition(
                          opacity: ReverseAnimation(secondaryAnimation),
                          // animation: animation,
                          // secondaryAnimation: secondaryAnimation,
                          child: child))
                  : FadeThroughTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      child: child);
            });
}

class FadeRouteAlt extends PageRouteBuilder {
  final Widget Function(BuildContext) builder;
  final RouteSettings settings;

  final Duration? duration;
  FadeRouteAlt({this.duration, required this.settings, required this.builder})
      : super(
            settings: settings,
            transitionDuration: duration ?? const Duration(milliseconds: 400),
            pageBuilder: (BuildContext context, Animation<double> animation,
                    Animation<double> secondaryAnimation) =>
                builder(context),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.ease);
              return FadeTransition(
                  opacity: animation,
                  child: FadeTransition(
                      opacity: ReverseAnimation(secondaryAnimation),
                      // animation: animation,
                      // secondaryAnimation: secondaryAnimation,
                      child: child));
            });
}
