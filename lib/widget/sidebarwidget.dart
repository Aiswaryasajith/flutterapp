
import 'package:flutter/material.dart';

class SidebarWidget extends StatelessWidget {
  const SidebarWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return          new Drawer(
          child: ListView(
            children: [
              new UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://s3.amazonaws.com/static.graphemica.com/glyphs/i500s/000/010/736/original/0274-500x500.png?1275328931"),
                ),
                accountName: Text('USER NAME',style: TextStyle(fontSize: 20),), 
                accountEmail: Text('')),
                SizedBox(
           width: 20,
           height: 20,
             ),
                 Row(
           children: [
            FlatButton(onPressed: (){
              print("Button pressed");
            },
            child: Text("WOMEN"),
            shape: StadiumBorder(),
            color: Colors.pink[100],
            ),
            SizedBox(
              width: 20,

            ),
            FlatButton(onPressed: (){
              print("Button pressed");
            },
            child: Text("MEN"),
            shape: StadiumBorder(),
            color: Colors.pink[100],
            )
           ],
         ),
                ListTile(
                  title: Text('PROFILE/DASHBOARD',style: TextStyle(fontSize: 15),),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('WISH LIST',style: TextStyle(fontSize: 15),),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('CATEGORIES',style: TextStyle(fontSize: 15),),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('SETTINGS',style: TextStyle(fontSize: 15),),
                  onTap: (){},
                ),
                ListTile(
                  title: Text('ABOUT US',style: TextStyle(fontSize: 15),),
                  onTap: (){},
                )
            ],
          ),
        );
  }
}