import 'package:books_application_germanbarrera/presentation/screens/library_screen.dart';
import 'package:books_application_germanbarrera/presentation/screens/villains_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => const LibraryScreen(),
      routes: [
        GoRoute(
          path: 'villains',
          builder: (context, state) => const VillainsScreen(),
        )
      ]),
]);
