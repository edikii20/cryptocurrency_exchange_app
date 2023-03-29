import 'package:cryptocurrency_exchange_app/src/pages/trade_page/ui/trade_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigation {
  static GoRouter get getRouter => GoRouter(
        routes: [
          GoRoute(
            path: '/',
            pageBuilder: (context, state) => CustomTransitionPage(
              child: const TradePageWidget(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) =>
                      FadeTransition(opacity: animation, child: child),
              transitionDuration: Duration.zero,
            ),
          ),
        ],
      );
}
