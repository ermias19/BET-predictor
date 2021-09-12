// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../pages/home/players_home.dart' as _i5;
import '../pages/home_description/home_descritption.dart' as _i6;
import '../pages/Login/login.dart' as _i4;
import '../pages/Signup/sign_up.dart' as _i3;

class RootRouter extends _i1.RootStackRouter {
  RootRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    Sign_up.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.Sign_up();
        }),
    LoginRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.LoginPage();
        }),
    Players_home.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.Players_home();
        }),
    Home_description.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.Home_description();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig('/#redirect',
            path: '/', redirectTo: '/Login', fullMatch: true),
        _i1.RouteConfig(Sign_up.name, path: '/Sign_Up'),
        _i1.RouteConfig(LoginRoute.name, path: '/Login'),
        _i1.RouteConfig(Players_home.name, path: '/Players_in'),
        _i1.RouteConfig(Home_description.name, path: '/Players_descrition')
      ];
}

class Sign_up extends _i1.PageRouteInfo {
  const Sign_up() : super(name, path: '/Sign_Up');

  static const String name = 'Sign_up';
}

class LoginRoute extends _i1.PageRouteInfo {
  const LoginRoute() : super(name, path: '/Login');

  static const String name = 'LoginRoute';
}

class Players_home extends _i1.PageRouteInfo {
  const Players_home() : super(name, path: '/Players_in');

  static const String name = 'Players_home';
}

class Home_description extends _i1.PageRouteInfo {
  const Home_description() : super(name, path: '/Players_descrition');

  static const String name = 'Home_description';
}
