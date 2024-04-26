import 'package:flutter/material.dart';
import 'package:logins/pallete.dart';

class nueva_cuenta extends StatelessWidget {
  const nueva_cuenta({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(child:
       const Text('Crea tu cuenta', 
       style:  kbodyText,),
       decoration: const BoxDecoration(border: 
       Border(bottom: BorderSide(color: kwhite, width: 1))),
       );
  }
}