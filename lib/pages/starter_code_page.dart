import 'package:flutter/material.dart';

class StarterPage extends StatefulWidget {
  const StarterPage({super.key});

  @override
  State<StarterPage> createState() => _StarterPageState();
}

class _StarterPageState extends State<StarterPage> {
  String? username;
  String? phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSubmitted: (value) {
                          setState(() {
                            username = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onSubmitted: (value) {
                          setState(() {
                            phone = value;
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vehicula vel libero hendrerit commodo. Nunc in accumsan eros, sit amet volutpat est. Proin non tristique sem.'),
                  ],
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(10)),
              child: TextButton(
                onPressed: () {
                  Navigator.popAndPushNamed(context, '/menu');
                },
                child: const Text(
                  'Get Started',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
