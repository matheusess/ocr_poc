import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ocr_poc/screens/login/login_screen.dart';
import 'package:ocr_poc/stores/grocery/grocery_store.dart';
import 'package:ocr_poc/stores/login/login_store.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'firebase_options.dart';
import 'global/global_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  var initialRoute = 'login';

  runApp(MyApp(
    initialRoute: initialRoute,
  ));
}

class MyApp extends StatelessWidget {
  final String initialRoute;
  const MyApp({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    GlobalColorsLibrary color = GlobalColorsLibrary();

    return MultiProvider(
      providers: [
        Provider<LoginStore>(create: (_) => LoginStore()),
        Provider<GroceryStore>(create: (_) => GroceryStore()),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          //DefaultCupertinoLocalizations.delegate, //remove with got error
          GlobalCupertinoLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('pt', 'BR'),
        ],
        theme: ThemeData(
          useMaterial3: true,
          primaryColor: color.purple,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: color.purple,
          ),
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: initialRoute,
        routes: {
          'login': (context) => const LoginScreen(),
        },
      ),
    );
  }
}
