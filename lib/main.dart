import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:glasses/features/app_router.dart';
import 'package:glasses/setup_locator.dart';

Future<void> main() async {
  setupLocator();
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GlassesApplication());
}

class GlassesApplication extends StatelessWidget {
  final _appRouter = AppRouter();

  GlassesApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routeInformationProvider: _appRouter.routeInfoProvider(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
    );
  }
}
