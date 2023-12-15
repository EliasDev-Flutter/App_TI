import 'package:app_it/widgets_TI/botoes_tela_inicial.dart';
import 'package:flutter/material.dart';
import 'package:app_it/widgets_TI/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset('assets/logo_empresa2.png'),
            ),
            const Text('TI EMPRESAS', style: TextStyle(color: Colors.blueGrey, fontSize: 30,fontWeight: FontWeight.bold),),
            const Row(
              children: [
                BotaoPaoELeite(),
                BotaoCartaoAlimentacao(),
              ],
            )
          ],
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
