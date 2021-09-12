

import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart';

import 'package:bloc_e_s/presentation/routes/router.gr.dart';

class MyApp_router extends StatelessWidget {
  final _rootRouter=RootRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      
      debugShowCheckedModeBanner: false,
       routerDelegate: AutoRouterDelegate(
          _rootRouter,
          navigatorObservers: () => [AutoRouteObserver()],
        ),
        routeInformationParser: _rootRouter.defaultRouteParser(),

    );
      
      
       
  }
}