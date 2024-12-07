import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Welcome To KFUPM!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Image.asset("assets/images/kfupm.png",
                      width: 250, height: 300),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset("assets/images/syria.png",
                  width: 100, height: 100),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // Ensures it hugs the content
                  children: [
                    // Login Button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        fixedSize: const Size(200, 50), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 10),
                    // Signup Button
                    ElevatedButton(
                      onPressed: () {
                        // Add your signup action here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade100,
                        fixedSize: const Size(200, 50), // Button size
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        "SIGNUP",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
