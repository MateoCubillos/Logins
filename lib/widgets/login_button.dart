import 'package:flutter/material.dart';
import 'package:logins/pallete.dart';


class Login_Button extends StatelessWidget {
  const Login_Button({
   Key? key,
   required this.buttonName, 
  }) : super(key: key);  //boton de login  

  final String buttonName;
 
  @override
  Widget build(BuildContext context) {
    
     
    Size size = MediaQuery.of(context).size;
    return Container(
       height: size.height * 0.08,
       width: size.width * 0.8,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),),
       child: TextButton(onPressed: ( ){},
       child: Text(buttonName,
       style: kbodyText.copyWith(fontWeight: FontWeight.bold),
       
       ),
       ),
       );
  }
}
