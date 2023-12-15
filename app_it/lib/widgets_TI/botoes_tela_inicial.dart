import 'package:app_it/cartao_alimentacao/tela_cartao_alimentacao.dart';
import 'package:app_it/pao_e_leite/tela_pao_e_leite.dart';
import 'package:flutter/material.dart';

class BotaoPaoELeite extends StatelessWidget {
  const BotaoPaoELeite({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        width: 150,
        height: 110,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 3,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InfoPagePaoELeite()));
          },
          child: Image.network(
            'https://www.maispaoeleite.com.br/images/logocartao.png',
          ),
        ),
      ),
    );
  }
}

class BotaoCartaoAlimentacao extends StatelessWidget {
  const BotaoCartaoAlimentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        width: 150,
        height: 110,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            elevation: 3,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const InfoPageCartaoAlimentacao()));
          },
          child: Image.network(
            'https://www.cartaoalimentacaoparaiba.com.br/images/logocartao.png',
          ),
        ),
      ),
    );
  }
}
