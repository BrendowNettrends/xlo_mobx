import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:xlo_mobx/screens/base/base_screen.dart';
import 'package:xlo_mobx/stores/page_store.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  setupLocators();
  runApp(MyApp());
}

void setupLocators() {

  GetIt.I.registerSingleton(PageStore());
}

Future<void> initializeParse() async {
  await Parse().initialize(
    '18AxIpUpYe0UePbZt4FSZJSbhzxik0zFBtOaW5pi',
    'https://parseapi.back4app.com/',
    clientKey: 'EJAfRBvaM2jFmXxs3ASDhMTIfeP5mZm152I218Yg',
    autoSendSessionId: true,
    debug: true,
  );
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: Colors.purple,
        cursorColor: Colors.orangeAccent,
        appBarTheme: AppBarTheme(
          elevation: 0
        )
      ),
      home: BaseScreen(),
    );
  }
}

