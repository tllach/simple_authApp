import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../authentication/login.dart';
import 'detail.dart';

class HomePage extends StatelessWidget {
  const HomePage(
      {Key? key, required this.loggedEmail, required this.loggedPassword})
      : super(key: key);
  final String loggedEmail;
  final String loggedPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                Get.off(() => LoginScreen(
                      email: loggedEmail,
                      password: loggedPassword,
                    ));
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Hello $loggedEmail"),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const DetailPage());
                },
                child: const Text("Details")),
          ],
        ),
      ),
    );
  }
}
