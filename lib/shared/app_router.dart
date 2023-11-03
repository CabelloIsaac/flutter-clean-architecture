import '../presentation/screens/projects_list/projects_list_screen.dart';

class AppRouter {
  static final routes = {
    ProjectsListScreen.route: (context) => const ProjectsListScreen(),
  };

  static const initialRoute = ProjectsListScreen.route;
}
