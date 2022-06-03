import 'package:flutter/material.dart';

import 'package:be_the_hero/domain/helpers/media.dart';
import 'package:be_the_hero/domain/helpers/dimensions.dart';

import 'package:be_the_hero/view/widgets/button/button/button.dart';
import 'package:be_the_hero/view/widgets/button/text_button/text_button.dart';
import 'package:be_the_hero/view/widgets/form/email_form/email_form.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  Map<String, dynamic> formData = {'email': '', 'password': ''};

  showFormModal(BuildContext c, HDimensions dimensions, [field = 'email']) {
    return showModalBottomSheet(
      context: c,
      isScrollControlled: true,
      constraints: BoxConstraints(maxHeight: dimensions.vh / 1.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      builder: (_) => CEmailForm(
        onSubmit: (value) {
          formData[field] = value;
          showFormModal(c, dimensions, 'password');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final dimensions = HDimensions(context);

    return Scaffold(
      backgroundColor: Colors.white38,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, dimensions.top + 24, 24, 40),
            child: Text(
              'Juntos \nsomos mais fortes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          UMedia.svg(
            UMedia.injuredSvg,
            expanded: true,
            height: dimensions.vh / 2,
            fit: BoxFit.cover,
          ),
          CButton(
            margin: EdgeInsets.only(top: 24, left: 24, right: 24),
            label: 'Criar Conta',
            onPressed: () => showFormModal(context, dimensions),
          ),
          CTextButton(
            margin: EdgeInsets.fromLTRB(24, 10, 24, 24),
            label: 'Acessar minha conta',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
