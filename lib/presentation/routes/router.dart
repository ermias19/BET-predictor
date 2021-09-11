import 'package:auto_route/auto_route.dart';

import 'package:auto_route/annotations.dart';
import 'package:bloc_e_s/presentation/pages/Login/login.dart';
import 'package:bloc_e_s/presentation/pages/Signup/sign_up.dart';
import 'package:bloc_e_s/presentation/pages/home/players_home.dart';
import 'package:bloc_e_s/presentation/pages/home_description/home_descritption.dart';
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  //  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AutoRoute(page: Sign_up, path: '/Sign_Up', initial: true),
    AutoRoute(page: LoginPage, path: '/Login', initial: true),
    AutoRoute(page: Players_home, path: '/Players_in', initial: true),
    AutoRoute(page: Home_description, path: '/Players_descrition', initial: true),

  ],
)
class $Router{

}