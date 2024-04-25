import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logins/pallete.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
                'assets/images/fondo morado final.jpg'), // imagen del fondo
                fit: BoxFit.cover,
                
          )),
        ),
         const Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text ('',
                   style: TextStyle(color: Colors.black, fontSize: 50,
                   fontWeight: FontWeight.bold,
                    ),
                   ),
                ),
              ),
              
            TextInputField(
              icon: CupertinoIcons.person_circle_fill, 
              hint: 'Usuario',
              inputType: TextInputType.name, 
              inputAction: TextInputAction.next,
              ),

            Password(
              icon: FontAwesomeIcons.lock, 
              hint: 'Contraseña', 
              inputType: TextInputType.name, 
              inputAction: TextInputAction.done,
              ),

              SizedBox(
                height: 25.0,
                ),

            ],
          ) ,
        )
      ],
    );
  }
}

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
