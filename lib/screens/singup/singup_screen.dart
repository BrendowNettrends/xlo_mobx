import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:xlo_mobx/screens/singup/components/field_title.dart';

class SingUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Card(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  FieldTitle(
                    title: 'Apelido',
                    subtitle: 'Como aparecerá em seus anúncios.',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Exemplo: João S.',
                      isDense: true,
                    ),
                  ),
                  const SizedBox(height: 16,),
                  FieldTitle(
                    title: 'E-mail',
                    subtitle: 'Enviaremos em e-mail de confirmação.',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Exemplo: joao@gmail.com.',
                      isDense: true,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                  ),
                  const SizedBox(height: 16,),
                  FieldTitle(
                    title: 'Celular',
                    subtitle: 'Proteja sua conta.',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '(99) 99999-9999',
                      isDense: true,
                    ),
                    keyboardType: TextInputType.phone,
                    inputFormatters: [
                      WhitelistingTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter()
                    ],
                  ),
                  const SizedBox(height: 16,),
                  FieldTitle(
                    title: 'Senha',
                    subtitle: 'Use letras, números e caracteres especiasi.',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16,),
                  FieldTitle(
                    title: 'Confirmar Senha',
                    subtitle: 'Repita a senha.',
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                    obscureText: true,
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 20, bottom: 12),
                    child: RaisedButton(
                      color: Colors.orange,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      onPressed: () {
                      },
                      child: Text(
                        'CADASTRE-SE',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: <Widget> [
                        const Text(
                          'Não tem uma conta?',
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => SingUpScreen()));
                          },
                          child: Text(
                            'Entrar',
                            style:  TextStyle(
                              decoration: TextDecoration.underline,
                              color: Colors.purple,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}