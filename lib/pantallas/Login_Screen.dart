import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logins/pallete.dart';
import 'package:logins/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [


        const Fondo(image : 'assets/images/fondo morado final.jpg'),

           Scaffold(   //pantalla de login
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
               const Flexible(
                child: Center(
                  child: Text ('',
                   style: TextStyle(color: Colors.black, fontSize: 50,
                   fontWeight: FontWeight.bold,
                    ),
                   ),
                ),
              ),
              
             Column(
              crossAxisAlignment: CrossAxisAlignment.end,
               children: [
                 const TextInputField(
                  icon: CupertinoIcons.person_circle_fill, 
                  hint: 'Usuario',
                  inputType: TextInputType.name, 
                  inputAction: TextInputAction.next,
                  ),

              const Password(     //boton de contraseña
                icon: FontAwesomeIcons.lock, 
                hint: 'Contraseña', 
                inputType: TextInputType.name, 
                inputAction: TextInputAction.done,
              ),

              GestureDetector(   //boton de olvido su contraseña
                onTap: () => Navigator.pushNamed(context, 'Clave olvidada'),    //ruta a 'Olvido su contraseña
                child: const Text('Clave olvidada?', style: kbodyText,
                ),
              ),

              const SizedBox(
                height: 25.0,
                ),
              
              const Login_Button(buttonName: 'Login',),   //boton de login

               const SizedBox(
                height: 25.0,
                ),

                
               ],
             ),

              GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'Crea tu cuenta'),    //ruta a 'Crea tu cuenta'
                  child: Container(child:
                  const Text('Crea tu cuenta', 
                  style:  kbodyText,),
                  decoration: const BoxDecoration(border: 
                  Border(bottom: BorderSide(color: kwhite, width: 1))),
                  ),
                ),   //boton de nueva cuenta
              
                const SizedBox(height: 20,
              )
             
            ],

          ) ,
        )
      ],
    );
  }
}



//AssetImage('assets/images/fondo morado final.jpg'),          ) 


