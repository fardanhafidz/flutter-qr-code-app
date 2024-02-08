import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('nama user'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: SizedBox(
          height: 200,
          width: 1000,
          child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  const Text('Share your profile'),
                  SizedBox(
                      width: 150,
                      height: 150,
                      child: Container(
                        color: Colors.grey,
                      )
                      // Image( if (phone != null) PrettyQrView.data(data: 'wa.me/$phone'),),
                      )
                ],
              )),
        ),
      ),
    );
  }
}
