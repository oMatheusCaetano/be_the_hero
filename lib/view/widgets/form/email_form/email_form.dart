import 'package:be_the_hero/view/widgets/button/button/button.dart';
import 'package:be_the_hero/view/widgets/text/text.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class CEmailForm extends StatefulWidget {
  final Function(String)? onSubmit;

  const CEmailForm({Key? key, this.onSubmit}) : super(key: key);

  @override
  State<CEmailForm> createState() => _CEmailFormState();
}

class _CEmailFormState extends State<CEmailForm> {
  bool isButtonDisabled = true;
  String inputValue = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Column(
        children: [
          Row(
            children: [
              Spacer(),
              CloseButton(
                color: Theme.of(context).textTheme.bodyLarge?.color,
              ),
            ],
          ),
          CText(
            'Informe o seu e-mail',
            padding: EdgeInsets.symmetric(horizontal: 24),
            theme: CTextTheme.bodyLarge,
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              cursorHeight: 40,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Color(0xFFE02041),
              onChanged: (val) {
                final v = ValidationBuilder().email().build()(val);
                setState(() {
                  inputValue = val;
                  isButtonDisabled = (v != null);
                });
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  left: 24,
                  top: 15,
                  right: 24,
                ),
              ),
            ),
          ),
          CButton(
            label: 'Avançar',
            isDisabled: isButtonDisabled,
            onPressed: () {
              if (widget.onSubmit != null) widget.onSubmit!(inputValue);
            },
          ),

          SizedBox(height: 24),
        ],
      ),
    );
  }
}
