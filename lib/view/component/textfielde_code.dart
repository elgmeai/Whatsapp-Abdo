import 'package:flutter/material.dart';

class TextFieldCode extends StatelessWidget {
  final String hint;

  const TextFieldCode({super.key, required this.control, required this.hint});
  final TextEditingController control;
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaquerydata = MediaQuery.of(context);
    // var height =mediaquerydata.size.height;
    var width = mediaquerydata.size.width;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: width / 10,
      ),
      child: SizedBox(
        child: TextFormField(
          style: const TextStyle(decorationColor: Color(0xf000E4E3)),
          controller: control,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    width: 2.0, color: Color.fromARGB(255, 92, 90, 90)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            label: Text(
              hint,
              style: const TextStyle(color: Color(0xffA060FF)),
            ),
          ),
        ),
      ),
    );
  }
}
