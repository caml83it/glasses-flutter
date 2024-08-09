import 'package:auto_route/auto_route.dart';
import 'package:glasses/features/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: "Screen|Page,Route")
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const MaterialRouteType();

  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(page: SignInRoute.page, path: '/sign-in'),
      AutoRoute(
        page: MainRoute.page,
        path: "/",
        children: [
          AutoRoute(page: HomeRoute.page, path: 'home'),
          AutoRoute(page: ChatRoute.page, path: 'chat'),
          AutoRoute(page: NotificationRoute.page, path: 'notifications'),
          AutoRoute(page: ProfileRoute.page, path: 'profile'),
          AutoRoute(page: SignInRoute.page, path: 'sign-in'),
        ],
      ),
    ];
  }

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
