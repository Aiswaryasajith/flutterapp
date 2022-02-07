import 'package:flutter/material.dart';
import 'package:sample_project/widget/sidebarwidget.dart';

class CampaignPage extends StatefulWidget {
  const CampaignPage({ Key? key }) : super(key: key);

  @override
  State<CampaignPage> createState() => _CampaignPageState();
}

class _CampaignPageState extends State<CampaignPage> {
  int selectedItemIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 60,
        
        child: Container(
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(blurRadius: 20,color: Colors.grey.shade300,spreadRadius: 1)
          ]
        ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildContainerBottomNav(Icons.bar_chart_outlined,0),
              BuildContainerBottomNav(Icons.add_a_photo,1),
              BuildContainerBottomNav(Icons.email_outlined,2),
            ],
          ),
        ),
      ),
      appBar:AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[200],
        shadowColor: Colors.pink[300],
        title: Text('Welcome'),
        actions: [
          IconButton(icon: Icon(Icons.search_rounded),onPressed: (){
            showSearch(context: context, delegate: MySearchDelegate(),);
          }),
                      IconButton(icon: Icon(Icons.shopping_bag_outlined),onPressed: (){}),
        ],),
        drawer: SidebarWidget(),

      
    );
  }
   Widget BuildContainerBottomNav(IconData icon,int index,) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: Container(
              decoration: BoxDecoration(
                color: index==selectedItemIndex? Colors.pink[100]:Colors.white,
                shape: BoxShape.circle,
                boxShadow:index==selectedItemIndex? [
                  BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 1)
                ]:[],
              ),
              height: 50,
              width: 50,
              child: Icon(icon,color: index==selectedItemIndex? Colors.white : Colors.black,),
            ),
    );
  }

  

  
}

class MySearchDelegate extends SearchDelegate{
 
  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(icon: const Icon(Icons.arrow_back),onPressed: ()=>close(context, null)
    );
    
    
  }
   
  @override
  List<Widget>? buildActions(BuildContext context) {
    [IconButton(icon: const Icon(Icons.clear),onPressed: (){
      if (query.isEmpty)
      {
        close(context, null);
      }else{
      query='';
      }
    },)];
  
  }


  @override
  Widget buildSuggestions(BuildContext context) {
    List<String>suggestions=[
      'shoes',
      'bags',
      'cloths',
      'camera'
    ];
    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index){
        final suggestion = suggestions[index];
        return ListTile(
         title: Text(suggestion),
         onTap: (){
           query = suggestion;
           showResults(context);
         },
        );
      }
      );
    
  }
  @override
  Widget buildResults(BuildContext context) {
   
    throw UnimplementedError();
  }

}















