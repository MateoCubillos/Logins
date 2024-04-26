import 'package:flutter/material.dart';
import 'package:logins/pallete.dart';



class Password extends StatelessWidget {      //boton de contraseña
  const Password({
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
    Size  size = MediaQuery.of(context).size;

    return Padding(    //Boton de Contraseña
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
                hintText: hint,
                hintStyle: kbodyText,
                prefixIcon: Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Icon(icon, color: kBlack,
                  ),
                ),                        
              ),
              obscureText: true,
              style: kbodyText,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
        
            ),
          ),
        ),
      );
  }
}