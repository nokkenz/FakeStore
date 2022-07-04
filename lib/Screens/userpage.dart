import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  TextEditingController _user = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        backgroundColor: Colors.lightBlue,
        label: const Text('Ajuda'),
        activeLabel: const Text('Fechar'),
        activeChild: const Icon(Icons.close),
        childMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: [
          SpeedDialChild(
            child: const Icon(
              Icons.password,
              color: Colors.grey,
            ),
            label: 'Esqueceu a senha?',
          ),
          SpeedDialChild(
            child: Icon(
              Icons.person_add_alt,
              color: Colors.green[600],
            ),
            backgroundColor: Colors.lightGreen[100],
            label: 'Fazer cadastro',
          ),
        ],
        child: const Icon(Icons.help_outline),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Center(),
          ),
          Expanded(
            flex: 2,
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _user,
                      showCursor: false,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.grey[400],
                        ),
                        hintText: 'Email/CPF',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _password,
                      showCursor: false,
                      decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green),
                        ),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.grey[400],
                        ),
                        hintText: 'Senha',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.lightGreen,
                        ),
                        onPressed: () {},
                        icon: const Icon(Icons.check),
                        label: const Text('Entrar'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
