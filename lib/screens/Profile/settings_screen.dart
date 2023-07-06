import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  static const id = 'settings_screen';

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _fullNameController = TextEditingController();
  final _dateOfBirthController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context, true);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Personal Information',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputWidget(
                      textController: _fullNameController, name: 'Full name'),
                  const SizedBox(
                    height: 12,
                  ),
                  InputWidget(
                      textController: _dateOfBirthController,
                      name: 'Date of birth'),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Personal Information',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0)),
                            ),
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                  height: 700,
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 10),
                                            child: Text(
                                              'Password Change',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: Column(
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            TextField(
                                              controller: _passwordController,
                                              decoration: const InputDecoration(
                                                  labelText: 'Old Password',
                                                  border: OutlineInputBorder(),
                                                  labelStyle: TextStyle(
                                                      color: Colors.black),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black))),
                                              enableSuggestions: false,
                                              autocorrect: false,
                                              obscureText: true,
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                InkWell(
                                                  onTap: () {},
                                                  child: const Text(
                                                      'Forgot Password?',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black26)),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            TextField(
                                              controller: _passwordController,
                                              decoration: const InputDecoration(
                                                  labelText: 'New Password',
                                                  border: OutlineInputBorder(),
                                                  labelStyle: TextStyle(
                                                      color: Colors.black),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black))),
                                              enableSuggestions: false,
                                              autocorrect: false,
                                              obscureText: true,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            TextField(
                                              controller: _passwordController,
                                              decoration: const InputDecoration(
                                                  labelText:
                                                      'Repeat New Password',
                                                  border: OutlineInputBorder(),
                                                  labelStyle: TextStyle(
                                                      color: Colors.black),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black))),
                                              enableSuggestions: false,
                                              autocorrect: false,
                                              obscureText: true,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFDB3022),
                                                    minimumSize: Size(
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                        50),
                                                    maximumSize: Size(
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                        50),
                                                    shape:
                                                        const StadiumBorder()),
                                                child: const Text(
                                                    'SAVE PASSWORD')),
                                          ],
                                        ),
                                      )
                                    ],
                                  ));
                            },
                          );
                        },
                        child: const Text(
                          'Change',
                          style: TextStyle(fontSize: 12, color: Colors.black26),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InputWidget(
                      textController: _fullNameController, name: 'Password'),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Notifications',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sale',
                        style: TextStyle(fontSize: 14),
                      ),
                      Switch(
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New arrivals',
                        style: TextStyle(fontSize: 14),
                      ),
                      Switch(
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery status change',
                        style: TextStyle(fontSize: 14),
                      ),
                      Switch(
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery complete',
                        style: TextStyle(fontSize: 14),
                      ),
                      Switch(
                        value: isChecked,
                        onChanged: (bool value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required TextEditingController textController,
    required String name,
  })  : _textController = textController,
        _name = name;

  final TextEditingController _textController;
  final String _name;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textController,
      readOnly: true,
      enabled: false,
      decoration: InputDecoration(
          labelText: _name,
          border: const OutlineInputBorder(),
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
