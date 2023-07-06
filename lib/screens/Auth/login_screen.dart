import 'package:ecommerce/screens/Master/main_screen.dart';
import 'package:ecommerce/screens/Auth/register_screen.dart';
import 'package:ecommerce/screens/Splash/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const id = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const SplashScreen()));
                  },
                  icon: const Icon(Icons.arrow_back_ios))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sign in',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                InputWidget(textController: _emailController, name: 'Email'),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black))),
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterScreen()));
                  },
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Don t have an account yet? '),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFDB3022),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const MainScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFDB3022),
                        minimumSize:
                            Size(MediaQuery.of(context).size.width, 50),
                        maximumSize:
                            Size(MediaQuery.of(context).size.width, 50),
                        shape: const StadiumBorder()),
                    child: const Text('Sign in')),
                const SizedBox(
                  height: 180,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Or sign in with social account')],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook_outlined)),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.alternate_email_outlined))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    )));
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
      decoration: InputDecoration(
          labelText: _name,
          border: const OutlineInputBorder(),
          labelStyle: const TextStyle(color: Colors.black),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black))),
    );
  }
}
