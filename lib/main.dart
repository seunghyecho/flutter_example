import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/src/repository/user_repository.dart';
import 'package:flutter_application_1/src/view/home_view.dart';
import 'package:flutter_application_1/src/view/home_veiw_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => UserRepository()),
        ChangeNotifierProvider(create: (context) => HomeViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Example',
      home: HomeView(),
    );
  }
}
