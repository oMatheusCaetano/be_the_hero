import 'package:be_the_hero/core/view/widgets/appbar/app_bar.dart';
import 'package:be_the_hero/core/view/widgets/text/text.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final data = [1,1,1,1,1,1,1,1,1,1,1,1];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            CText('Bem-vindo!', theme: CTextTheme.titleLarge),
            SizedBox(height: 10),
            CText(
              'Escolha um dos casos abaixo e salve o dia.',
              theme: CTextTheme.bodyLarge,
            ),
            SizedBox(height: 24),

            Expanded(
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemCount: data.length,
                separatorBuilder: (_, __) => SizedBox(height: 16),
                itemBuilder: (_, __) => Container(
                  padding: EdgeInsets.only(
                    top: 24,
                    left: 24,
                    right: 24,
                    bottom: 12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CText(
                                  'CASO:',
                                  theme: CTextTheme.displayMedium,
                                  margin: EdgeInsets.only(bottom: 5),
                                ),
                                CText('Cadelinha atropelada'),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CText(
                                  'ONG:',
                                  theme: CTextTheme.displayMedium,
                                  margin: EdgeInsets.only(bottom: 5),
                                ),
                                CText('APAD'),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      Column(
                        children: [
                          CText(
                            'VALOR:',
                            theme: CTextTheme.displayMedium,
                            margin: EdgeInsets.only(bottom: 5),
                          ),
                          CText('R\$ 120,00 reais'),
                        ],
                      ),

                      SizedBox(height: 20),
                      Divider(),
                      TextButton(
                        onPressed: () {}, 
                        child: Row(
                          children: [
                            Text('Ver mais detalhes'),
                            Spacer(),
                            Icon(Icons.arrow_forward_rounded),
                          ]
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
