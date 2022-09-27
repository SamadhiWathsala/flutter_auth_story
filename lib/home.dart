import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width/25,vertical: size.height/30),
              child: Container(
                color: Colors.green,
                height: size.height/5,
                child: Text('first view'),
              ),
            );
          }
      ),
    );
  }
}
