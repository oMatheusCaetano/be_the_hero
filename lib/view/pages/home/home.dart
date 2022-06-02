import 'package:flutter/material.dart';

import 'package:be_the_hero/data/repositories/hero_case_repository.dart';

import 'package:be_the_hero/domain/helpers/launcher.dart';
import 'package:be_the_hero/domain/helpers/media.dart';
import 'package:be_the_hero/domain/models/hero_case.dart';

import 'package:be_the_hero/view/widgets/misc/if.dart';
import 'package:be_the_hero/view/widgets/card/card.dart';
import 'package:be_the_hero/view/widgets/text/tile.dart';
import 'package:be_the_hero/view/widgets/app_bar/app_bar.dart';
import 'package:be_the_hero/view/widgets/list/list.dart';
import 'package:be_the_hero/view/widgets/text/text.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<HeroCase> data = [];

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final heroCases = await HeroCaseRepository().all();
    setState(() {
      data = heroCases;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(
        actions: [
          CText(
            'Total de',
            alignment: Alignment.center,
          ),
          CText(
            ' ${data.length} casos',
            alignment: Alignment.center,
            weight: FontWeight.bold,
          ),
          SizedBox(width: 24),
        ],
      ),
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
            CList(
              data: data,
              onRefresh: _loadData,
              builder: (heroCase, _, __) => CCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CTile('CASO:', heroCase.title),
                        ),
                        Expanded(child: CTile('ONG:', heroCase.ong)),
                      ],
                    ),
                    CTile(
                      'DOAÇÃO NECESSÁRIA:',
                      heroCase.neededValueToCurrency(),
                      margin: EdgeInsets.only(top: 24, bottom: 20),
                    ),
                    Divider(),
                    TextButton(
                      child: Row(children: [
                        Text('Ver mais detalhes'),
                        Spacer(),
                        Icon(Icons.arrow_forward_rounded),
                      ]),
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          constraints: BoxConstraints(
                            minHeight: 300,
                            maxHeight:
                                MediaQuery.of(context).size.height / 1.07,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          builder: (_) => Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                              top: 10,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    UMedia.svg(
                                      UMedia.logoSvg,
                                      alt: 'Be the Hero',
                                      height: 24,
                                    ),
                                    Spacer(),
                                    CloseButton(),
                                  ],
                                ),
                                SizedBox(height: 24),
                                Expanded(
                                  child: ListView(
                                    physics: BouncingScrollPhysics(),
                                    children: [
                                      CText(
                                        'Informações',
                                        theme: CTextTheme.titleMedium,
                                      ),
                                      Divider(),
                                      SizedBox(height: 15),
                                      CTile('CASO:', heroCase.title,
                                          margin: EdgeInsets.only(bottom: 24)),
                                      CTile('ONG:', heroCase.ong,
                                          margin: EdgeInsets.only(bottom: 24)),
                                      CTile('DESCRIÇÃO:', heroCase.description,
                                          margin: EdgeInsets.only(bottom: 24)),
                                      CTile('DOAÇÃO NECESSÁRIA:',
                                          heroCase.neededValueToCurrency(),
                                          margin: EdgeInsets.only(bottom: 30)),
                                      Divider(),
                                      SizedBox(height: 30),
                                      CText(
                                        'Salve o dia!',
                                        theme: CTextTheme.titleMedium,
                                      ),
                                      CText(
                                        'Seja o herói deste caso.',
                                        theme: CTextTheme.titleMedium,
                                      ),
                                      CText(
                                        'Entre em contato:',
                                        margin: EdgeInsets.only(
                                          top: 15,
                                          bottom: 10,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          CIf(
                                            condition: heroCase.email != null,
                                            child: Expanded(
                                              child: Container(
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    ULauncher.mail(
                                                      heroCase.email,
                                                      subject: 'Doação: ${heroCase.title}',
                                                    );
                                                  },
                                                  child: Text('E-mail'),
                                                ),
                                              ),
                                            ),
                                          ),
                                          CIf(
                                            condition: heroCase.email != null &&
                                                heroCase.cellphone != null,
                                            child: SizedBox(width: 24),
                                          ),
                                          CIf(
                                            condition:
                                                heroCase.cellphone != null,
                                            child: Expanded(
                                              child: Container(
                                                height: 50,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                    ULauncher.whatsapp(
                                                        heroCase.cellphone);
                                                  },
                                                  child: Text('Whatsapp'),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 50),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
