import 'package:be_the_hero/data/repositories/repository.dart';
import 'package:be_the_hero/domain/models/hero_case.dart';

class HeroCaseRepository extends Repository<HeroCase> {

  @override
  Future<List<HeroCase>> all() {
    return Future.delayed(Duration(seconds: 4), () => [
      HeroCase(
        id: 'a2sd3a1sa5d4sd3',
        title: 'Cadelinha atropelada',
        ong: 'oOng',
        description:
            'A cadelinha Jolie foi atropelada por um carro no bairro Santana e teve que passar por uma cirurgia às pressas.',
        neededValue: 120.00,
        cellphone: '5562911112222',
        email: 'email@email.com',
      ),
      HeroCase(
        id: '2a3sdas1da5ds43ds1',
        ong: 'Organização dos Remédios',
        title: 'Remédio para uma senhorinha',
      ),
      HeroCase(
        id: 'a5s4d5as4ads6as5da6',
        ong: 'APAD',
        title: 'Campanha de arrecadação de alimentos',
        description:
            'Esta campanha visa arrecadar alimentos que serão doados para famílias carentes entre o natal e o ano novo.',
        email: 'email@email.com',
      ),
      HeroCase(
        id: 'a5s4d5as4ads6as5da6',
        title: 'Arrecadação de brinquedos',
        ong: 'APAD',
        description: 'Arrecadação de brinquedos para o dia das crianças.',
        cellphone: '5562911112222',
      ),
    ]);
  }
}
