# 12. Implementando a lógica do Widget NumeroAleatorio

Nessa aula veremos a implementação da lógica do Widget `NumeroAleatorio`. Vamos ver como é feita a mudança de valores dentro do componente dinâmico.

O código do Widget é apresentado no **Código 1**.

```dart
import 'package:flutter/material.dart';
import 'dart:math';
  
class NumeroAleatorio extends StatefulWidget {
  @override
  _NumeroAleatorioState createState() => _NumeroAleatorioState();
}
  
class _NumeroAleatorioState extends State<NumeroAleatorio> {
  
  int _numero = 0;
  
  void _gerarNumero() {
    setState(() {
      Random numeroAleatorio = new Random();
      _numero = numeroAleatorio.nextInt(1000);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '$_numero',
            style: TextStyle(color: Colors.black54, fontSize: 28),
          ),
          SizedBox(height: 30),
          RaisedButton(
            onPressed: _gerarNumero,
            child: Text("Gerar número")
          )
        ],
      ),
    );
  }
}
```

Estamos importando a biblioteca `math` do Dart, que contém constantes e funções matemáticas, para gerar números randômicos:

```dart
import 'dart:math';
```

Abaixo temos a variável que será iniciada com o valor zero e que pode ser modificada durante a execução da aplicação:

```dart
int _numero = 0;
```

Na linha a seguir definimos o método `_gerarNumero` como privado iniciando o seu nome com underline `_` e o utilizaremos para gerar um número aleatório:

```dart
void _gerarNumero() {
```

Abaixo estamos usando a biblioteca `math` do Dart para criar o objeto `Random` e o guardamos na variável `numeroAleatorio`:

```dart
Random numeroAleatorio = new Random();
_numero = numeroAleatorio.nextInt(1000);
```

Logo após usamos o método `nextInt` para retornar um número aleatório e colocamos esse retorno na variável `_numero`, que vimos anteriormente. O número gerado varia até 1000, conforme indicado no parâmetro.

Agora veremos a implementação do método `build` do componente dinâmico:

```dart
return Container(
     child: Column(
       children: [
         Text(
           '$_numero',
           style: TextStyle(, fontSize: 28),
         ),
         SizedBox(height: 30),
         RaisedButton(
           onPressed: _gerarNumero,
           child: Text("Gerar número")
         )
       ],
     ),
   );
```

Colocamos a variável `_numero` como valor do `Widget Text`. É essa variável que será alterada e colocada nesse Widget, como vimos no método `_gerarNumero`.

```dart
Text(
  '$_numero',
  style: TextStyle(fontSize: 28),
),
```

No Widget `RaisedButton` colocamos o evento `onPressed`, que será chamado com um clique no botão. Esse evento chamará o método `_gerarNumero`, criado anteriormente:

```dart
RaisedButton(
      onPressed: _gerarNumero,
      child: Text("Gerar número")
  )
```

>**Checkpoint**
>O gerenciamento de estados do Flutter atualiza o Widget Text na tela toda vez que _numero mudar seu valor.

| [Início](../README.md) | [Voltar](info-11.md) | [Avançar](info-13.md) |
