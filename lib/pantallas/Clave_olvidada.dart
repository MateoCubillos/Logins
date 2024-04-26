import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logins/widgets/widgets.dart';
import 'package:logins/pallete.dart';

class ClaveOlvidada extends StatelessWidget {
   const ClaveOlvidada({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Stack(
      children: [
        const Fondo(image: 'assets/images/griiis.jpg',),        //fondo de la pantalla de olvido de contraseña
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar (
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
              title: const Text(
                'Clave olvidada', style: kbodyText,
                ),
              centerTitle: true,

            ),

            body: Column(children: [    //columna de la pantalla de olvido de contraseña
              Center(
                child: Column(
                  children: [

                     SizedBox( 
                      height: size.height * 0.1,),

                    Container(    //contenedor de la pantalla de olvido de contraseña
                      width: size.width * 0.8,
                      child: const Text('Introduce tu correo electrónico. Recibirás un enlace para crear una nueva contraseña por correo electrónico.', style: kbodyText,
                      ),
                    ),

                    const SizedBox( 
                      height: 20,),


                    const TextInputField(   //cajon de texto para correo
                      icon: FontAwesomeIcons.envelope, 
                      hint: 'Correo', 
                      inputType: TextInputType.emailAddress, 
                      inputAction: TextInputAction.done),

                    const SizedBox( 
                      height: 20,),

                    const Login_Button(buttonName: 'Enviar',),    //boton de enviar

                  ],
                ),
              )

            ],
            ),
          ),
        
      ],

    );
  }
}