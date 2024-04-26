// File: nueva_cuenta.dart
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logins/pallete.dart';
import 'package:logins/widgets/widgets.dart';

class NuevaCuenta extends StatelessWidget {
  const NuevaCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
         const Fondo(image:'assets/images/waves.png'),    //fondo de la pantalla de nueva cuenta

        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children:[
            
                SizedBox(height: size.width * 0.1
                ),
            
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Color.fromARGB(250, 0, 0, 0),
                                            
                          child: Icon(    //icono de usuario
                            FontAwesomeIcons.user, 
                            size: size.width * 0.13, 
                            color: Colors.white,
                            ),                  
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.07,
                      left: size.width * 0.57,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xff874CCC),
                          shape: BoxShape.circle,
                          border:  Border.all(color: kBlack, width: 2),
                        ),
                        child: Icon(FontAwesomeIcons.arrowUp, color: kwhite, size: size.width * 0.05),
            
            
                      ),
                    )
                  ],
                ),
            
                 SizedBox(height: size.width * 0.1
                ),
            
                 Column(
                  children: [
                    const TextInputField(   //boton de usuario
                      icon: FontAwesomeIcons.user, 
                      hint: 'Usuario', 
                      inputType: TextInputType.name, 
                      inputAction: TextInputAction.next
                      ),
            
                    const TextInputField(   //boton de correo
                      icon: FontAwesomeIcons.envelope, 
                      hint: 'Correo', 
                      inputType: TextInputType.emailAddress, 
                      inputAction: TextInputAction.next
                      ),
            
                    const  Password(   //boton de contraseña
                        icon: FontAwesomeIcons.lock, 
                        hint: 'Contraseña', 
                        inputType: TextInputType.name , 
                        inputAction: TextInputAction.next
                      ),
            
                    const  Password(   //boton de confirmar contraseña
                        icon: FontAwesomeIcons.lock, 
                        hint: 'Confirmar Contraseña', 
                        inputType: TextInputType.name , 
                        inputAction: TextInputAction.done
                        ),

                    const  SizedBox(height: 25
                        ),

                    const  Login_Button(buttonName: 'Registrar'
                        ), //boton de crear cuenta 

                    const  SizedBox(height: 30
                        ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Ya estas registrado?', style: kbodyText.copyWith(fontWeight: FontWeight.bold),
                            ),
                          GestureDetector(
                            onTap: () => Navigator.pushNamed(context, 'Login'),    //ruta a 'Login'
                            child: Text('Ingresar', style: kbodyText.copyWith(color: kwhite,),
                              ),
                          ),
                        ],
                      ),
                  ],
                ),
              ]
            ),
          ),
        )
      ],
    );
  }
}