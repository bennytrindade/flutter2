import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Center(child: MensagemDinamica())));
  }
}

// 1- Crie uma classe para o seu componente herdanddo a classe StatefulWidget

class MensagemDinamica extends StatefulWidget {
  /* 3- Implemente na classe principal do componente o método obrigatório
    "createState()". Ele criará "Estado" instanciando a classe privada do componente
  */

  @override
  State<StatefulWidget> createState() => _MensagemDinamica();
}
/* 2- Crie uma classe com o nome do componente só que iniciada com _ (underline)
e que herde a classe State com o tipo do componente principal. No Dart, classes, atributos e métodos começados com
_ se tornam privados(private)
*/

class _MensagemDinamica extends State<MensagemDinamica> {
  /*
    5- Declarar na classe de implementação do componente com estado a(s) variável(is)
    necessária(s) para o estado. Em seguida, associe cada variável a um atributo do componente
    que pode ser mudado.
  */

  String mensagem = "Mensagem";

  /* 4- Implemente (agora sim) o método build que constrói o componente. No caso de componentes Stateful, o build
    deve ser implementado na classe privada que herda State
    */
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(mensagem, style: TextStyle(fontSize: 24)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              mensagem = "Mudei!";
            });
          },
          child: Text("Clique para mudar meu estado"),
        ),
      ],
    );
  }
}
