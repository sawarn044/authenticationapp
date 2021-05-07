import 'package:brew_crew/screens/user.dart';
import 'package:flutter/material.dart';
import 'package:brew_crew/screens/authenticate.dart';
import 'package:brew_crew/screens/home.dart';
import 'package:provider/provider.dart';

class  Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<Userr>(context);
    //print(user);
    if (user == null){
      return Authenticate();
    } else {
      return Home();
    }
  }
}
