import 'package:app_it/widgets_TI/bottom_navigation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const InfoCartaoAlimentacao());
}

class InfoCartaoAlimentacao extends StatelessWidget {
  const InfoCartaoAlimentacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: InfoPageCartaoAlimentacao(),
    );
  }
}

class InfoPageCartaoAlimentacao extends StatefulWidget {
  const InfoPageCartaoAlimentacao({super.key});

  @override
  State<InfoPageCartaoAlimentacao> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPageCartaoAlimentacao> {
  final List<Map<String, String>> perguntasRespostas = [
    {
      'pergunta': 'Qual a data que cai o meu benefício?',
      'resposta':
          'O benefício está programado para ser depositado todo dia 10 de cada mês podendo ser utilizado até o fim do mês.'
    },
    {
      'pergunta': 'Onde eu consigo usar o meu Cartão Alimentação?',
      'resposta': 'O CARTÃO ALIMENTAÇÃO poderá ser utilizado em hipermercados,'
          '\nsupermercados, mercados, açougues, mercearias, padarias e similares, credenciados à TI EMPRESAS que aderiram ao programa CARTÃO ALIMENTAÇÃO.'
          '\nVocê pode consultar a relação de estabelecimentos credenciados pelo site ou pelo aplicativo.'
    },
    {
      'pergunta': 'O que posso comprar com o cartão?',
      'resposta':
          'O CARTÃO ALIMENTAÇÃO é destinado exclusivamente para a compra de gêneros alimentícios. O uso do cartão para outra finalidade poderá levar à perda do benefício.'
    },
    {
      'pergunta': 'Como solicito a segunda via?',
      'resposta':
          'Caso necessite de uma segunda via do cartão, a solicitação deverá ser feita através da Central de Atendimento TI EMPRESAS, '
              '\ncom um cartão virtual ou emissão diretamente com a Secretaria de Desenvolvimento Humano Sem custo nenhum.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/banner_mais_pao_e_leite.png'),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'CARTÃO ALIMENTAÇÃO',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: screenWidth * 0.8,
                child: const Text(
                  'O programa Cartão Alimentação é um Programa de transferência de renda '
                  'criado para atender as famílias em situação de vulnerabilidade social nos municípios Paraibanos. '
                  'Este cartão é recarregado mensalmente com um crédito de R\$50,00 para ser utilizado '
                  'na compra de gêneros alimentícios nos estabelecimentos credenciados em toda a cidade da Paraíba.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: SizedBox(
                          width: 300,
                          height: 180,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                elevation: 3,
                              ),
                              onPressed: () {},
                              child:
                                  Image.asset('assets/logo_pao_e_leite.png'))),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'DÚVIDAS FREQUENTES:',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: perguntasRespostas.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ExpansionTile(
                            title: Text(
                              perguntasRespostas[index]['pergunta']!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow[800]),
                            ),
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Text(
                                  perguntasRespostas[index]['resposta']!,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              )
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const CustomBottomNavigationBar(),
      ),
    );
  }
}
