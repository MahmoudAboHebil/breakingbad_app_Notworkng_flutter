import 'package:bloc_with_breakingbad_api/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BreakingBadApp(AppRouter()));
}

class BreakingBadApp extends StatelessWidget {
  final AppRouter appRouter;

  BreakingBadApp(this.appRouter);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.generateRoute,
    );
  }
}
