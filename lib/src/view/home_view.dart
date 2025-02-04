import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/src/model/user.dart';
import 'package:flutter_application_1/src/view/home_veiw_model.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final HomeViewModel homeViewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Consumer<HomeViewModel>(
          builder: (context, homeViewModel, child) {
            if (homeViewModel.user != null) {
              User user = homeViewModel.user!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Name is ${user.firstName} ${user.lastName}\n"
                    "Gender is ${user.gender}\n"
                    "Email is ${user.email}\n",
                    style: const TextStyle(fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () async {
                      await homeViewModel.fetchUser();
                    },
                    child: const Text('Fetch User'),
                  ),
                ],
              );
            } else {
              return ElevatedButton(
                onPressed: () async {
                  await homeViewModel.fetchUser();
                },
                child: const Text('Fetch User'),
              );
            }
          },
        ),
      ),
    );
  }
}