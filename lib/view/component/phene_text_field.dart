import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';

import '../../bloc/phonenumber_bloc.dart';
import '../../model/phonenumber.dart';


class PhoneTextfield extends StatelessWidget {
  PhoneTextfield({
    super.key,
  });


PhoneBloc phonebloc =PhoneBloc();

  @override
  Widget build(BuildContext context) {
    return PhoneTextField(
      decoration: const InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(),
          ),
          labelText: "Phone number"),
      invalidNumberMessage: 'Invalid Phone Number',
      initialCountryCode: '+20',
      countryViewOptions: CountryViewOptions.countryCodeWithFlag,
      showCountryCodeAsIcon: true,
      onChanged: (value){
        Phonenumber phonenumber =Phonenumber(value.countryCode+value.number);
        
        phonebloc.addnumber(phonenumber);
        
        
      },
    );
  }
}
