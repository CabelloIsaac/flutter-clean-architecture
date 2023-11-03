import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'config/constants/app_constants.dart';
import 'config/theme/app_theme.dart';
import 'presentation/providers/projects_provider.dart';
import 'shared/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProjectsProvider>(
          create: (_) => ProjectsProvider.instance(),
        ),
      ],
      child: MaterialApp(
        title: AppConstants.appName,
        theme: AppTheme.themeData,
        routes: AppRouter.routes,
        initialRoute: AppRouter.initialRoute,
      ),
    );
  }
}
