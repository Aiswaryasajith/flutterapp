import 'package:flutter/material.dart';
import 'package:sample_project/widget/sidebarwidget.dart';

class DetailPage extends StatefulWidget {

  final String img; 
  final BuildContext context;

 DetailPage(this.img, this.context);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: [
        Image.network(
          widget.img,height: MediaQuery.of(context).size.height/1.5,width: MediaQuery.of(context).size.width,fit: BoxFit.cover,
          ),
          IconButton
          (
            padding: EdgeInsets.only(left: 20,top: 40),
            icon: Icon(Icons.dehaze_rounded),onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return SidebarWidget();
        }));
            },
            
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height/2.8,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: Column(children: [
                Expanded(child: Column(children: [

                ],))
              ],),
            ),
          )
          
          
      ],
      
    
      ),
     
      
    );
  }
}