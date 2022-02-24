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
  var _myColorOne = Colors.grey;
  var _myColorTwo = Colors.grey;
  var _myColorThree = Colors.grey;
  var _myColorFour = Colors.grey;
  var _myColorFive = Colors.grey;
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
             iconSize: 30,
            
          ),
          IconButton
          (
            padding: EdgeInsets.only(left: 350,top: 40),
            icon: Icon(Icons.shopping_bag_outlined),onPressed: (){
            
            },
            iconSize: 30,
            
          ),
           IconButton
          (
            padding: EdgeInsets.only(left: 300,top: 400),
            icon: Icon(Icons.favorite_border_rounded),onPressed: (){
            
            },
            color: Colors.orange.shade300,
            iconSize: 40,
            
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
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("ASIAN Men's Bouncer-01",
                          style: TextStyle(fontSize: 28),
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                          Text("Casual Shoes",style: TextStyle(fontSize: 20),),
                          Divider(
                            thickness: 1.5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Text("RATING",style: TextStyle(fontSize: 15),),
                             new IconButton(icon: new Icon(Icons.star),
                  onPressed: ()=>setState((){
                    _myColorOne=Colors.orange;
                    _myColorTwo=Colors.grey;
                    _myColorThree=Colors.grey;
                    _myColorFour=Colors.grey;
                    _myColorFive=Colors.grey;
                }),color: _myColorOne,),
                new IconButton(icon: new Icon(Icons.star),
                  onPressed: ()=>setState((){
                    _myColorOne=Colors.orange;
                    _myColorTwo=Colors.orange;
                    _myColorThree=Colors.grey;
                    _myColorFour=Colors.grey;
                    _myColorFive=Colors.grey;
                }),color: _myColorTwo,),
                new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.grey;
                  _myColorFive=Colors.grey;
                }),color: _myColorThree,),
                new IconButton(icon: new Icon(Icons.star), onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.orange;
                  _myColorFive=Colors.grey;
                }),color: _myColorFour,),
                new IconButton(icon: new Icon(Icons.star_half), onPressed: ()=>setState((){
                  _myColorOne=Colors.orange;
                  _myColorTwo=Colors.orange;
                  _myColorThree=Colors.orange;
                  _myColorFour=Colors.orange;
                  _myColorFive=Colors.orange;
                }),
                color: _myColorFive,),
                            ],
                          ),
                          Divider(
                            thickness: 1.5,
                          ),
                 Text("PRICE : ₹398.00",style: TextStyle(fontSize: 20),),
                 Divider(
                            thickness: 1.5,
                          ),
                 Text("CONTIDITION",style: TextStyle(fontSize: 22),),
                 Divider(
                            thickness: 1.5,
                          ),
                 ListTile(
                   
                  leading:   Text("DESCRIPTION",style: TextStyle(fontSize: 22),),
                  trailing:    IconButton
          (
           
            icon: Icon(Icons.add_shopping_cart),onPressed: (){},
            color: Colors.black,
            
          ),
                  
                 )
                  
                                  ],),
                  ))
              ],),
            ),
          )
          
          
      ],
      
    
      ),
     
      
    );
  }
}

