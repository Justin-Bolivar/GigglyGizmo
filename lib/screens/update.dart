import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Update extends StatelessWidget {
  const Update({Key? key});

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/Background.png',
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Positioned(
                bottom: 200,
                left: 60,
                child: GestureDetector(
                  onTap: () {
                    TextEditingController newEmailController =
                        TextEditingController();
                    TextEditingController passwordController =
                        TextEditingController();
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Enter new email and password'),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextField(
                                controller: newEmailController,
                                decoration: const InputDecoration(
                                  labelText: 'New Email',
                                ),
                              ),
                              TextField(
                                controller: passwordController,
                                decoration: const InputDecoration(
                                  labelText: 'Password',
                                ),
                                obscureText: true,
                              ),
                            ],
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Cancel'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: const Text('Update'),
                              onPressed: () async {
                                String newEmail = newEmailController.text;
                                String password = passwordController.text;
                                if (user != null) {
                                  try {
                                    // Re-authenticate the user
                                    AuthCredential credential =
                                        EmailAuthProvider.credential(
                                      email: user!.email!,
                                      password: password,
                                    );
                                    await user?.reauthenticateWithCredential(
                                        credential);

                                    // Change the email
                                    await user?.updateEmail(newEmail);
                                    print("Email Updated");

                                    // Refresh the user variable
                                    user = auth.currentUser;
                                  } catch (error) {
                                    print("Failed to update email: $error");
                                    // Show a snackbar or dialog with the error message
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(
                                          "Failed to update email: $error",
                                        ),
                                      ),
                                    );
                                  }
                                } else {
                                  print("No user is currently signed in.");
                                }
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    height: 45,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0xff2D81FF),
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: const Color(0xff2D81FF),
                        width: 3.0,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Change E-mail Address',
                        style: TextStyle(
                          color: Color(0xffF2FBF9),
                          letterSpacing: .8,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 55,
                left: 30,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
