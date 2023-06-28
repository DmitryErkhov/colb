import 'package:colb_progect/blocs/bloc_exports.dart';
import 'package:colb_progect/screens/splash_screen.dart';
import 'package:colb_progect/services/app_router.dart';
import 'package:colb_progect/services/app_theme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(MyApp(appRouter: AppRouter(),));


  // final storage = await HydratedStorage.build(
  //     storageDirectory: await getApplicationDocumentsDirectory());

  // HydratedBlocOverrides.runZoned(
  //       () => runApp(MyApp(appRouter: AppRouter(),)),
  //   storage: storage,
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.appRouter}) : super(key: key);

  final AppRouter appRouter;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => IntroductionBloc(),
        ),
        BlocProvider(
          create: (context) => ChangeCardOnTopMenuBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => ContentDayBloc(),
        ),
      ],
      child: BlocBuilder<SwitchBloc, SwitchState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Flutter Tasks App',
            theme: state.switchValue ? AppThemes.appThemeData[AppTheme.darkTheme]: AppThemes.appThemeData[AppTheme.lightTheme],
            home: const SplashScreen(),
            onGenerateRoute: appRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}