import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:subway_info_app/di/di_setup.dart';
import 'package:subway_info_app/ui/main/main_screen.dart';
import 'package:subway_info_app/ui/main/main_view_model.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt<MainViewModel>(),
        child: MainScreen(),
      ),
    ),
  ],
);
