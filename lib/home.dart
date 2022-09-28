import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth views'),
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context,index){
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width/25,vertical: size.height/100),
              child: InkWell(
                onTap: (){
                //  Navigation rute going here
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(size.width/20)),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 9,
                        color: Colors.grey.shade200,
                        offset: const Offset(4, 3)
                      )
                    ]
                  ),

                  height: size.height/5,
                  child: Row(
                    children: [
                      Container(
                        width: size.width/3.5,
                        height: size.height/6,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(size.width/30),
                                bottomLeft: Radius.circular(size.width/30)
                            ),
                            image: const DecorationImage(image: AssetImage('assets/images/authView.png'),fit: BoxFit.cover)
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: size.width/30),
                          child: SizedBox(
                            height: size.height/6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Auth view ' + (index+1).toString(),style: Theme.of(context).textTheme.headline6,overflow: TextOverflow.ellipsis,),
                                const Text('3 views'),
                                const Text('Design By : Sami_Wathsala',overflow: TextOverflow.ellipsis,),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height/6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,color: Colors.red,)),
                            Text('23',style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.red),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }
}
