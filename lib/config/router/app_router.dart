import 'package:go_router/go_router.dart';

import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/', //Pantalla y path inicial
  routes: [ //listado de RUTAS
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      name: ButtonsScreen.name,
      builder: (context, state) => ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      name: CardsScreen.name,
      builder: (context, state) => CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      name: ProgressScreen.name,
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbar',
      name: SnackbarScreen.name,
      builder: (context, state) => SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      name: AnimatedScreen.name,
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: '/uicontrols',
      name: UiControlScreen.name,
      builder: (context, state) => UiControlScreen(),
    ),
    GoRoute(
      path: '/tutorial',
      name: AppTutorialScreen.name,
      builder: (context, state) => AppTutorialScreen(),
    ),
    GoRoute(
      path: '/infiniteScroll',
      name: InfiniteScrollScreen.name,
      builder: (context, state) => InfiniteScrollScreen(),
    ),
  ],
);

