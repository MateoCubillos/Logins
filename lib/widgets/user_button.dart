
import 'package:flutter/material.dart';
import 'package:logins/pallete.dart';



class TextInputField extends StatelessWidget {    //boton de usuario
  const TextInputField({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
    
  }) : super(key: key);

final IconData icon;
final String hint;
final TextInputType inputType;
final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(    //Boton de usuario
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: size.height * 0.08,
        width: size.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
          
        ),
        child:   Center(
          child: TextField(
            decoration:  InputDecoration(
              border: InputBorder.none,
             
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  icon ,
                  size: 28.0,
                 color: kBlack,),
              ),
               hintText: hint,
              hintStyle: kbodyText,
            ),
            style: kbodyText,
            keyboardType: inputType,
            textInputAction: inputAction,
      
          ),
        ),
      ),
    );
  }
}
