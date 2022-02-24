import 'package:flutter/material.dart';
import 'package:sample_project/widget/sidebarwidget.dart';

class CampaignPage1 extends StatefulWidget {
  const CampaignPage1({ Key? key }) : super(key: key);

  @override
  State<CampaignPage1> createState() => _CampaignPage1State();
}

class _CampaignPage1State extends State<CampaignPage1> {
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

       body:       
             Column(
               children: [
               Column(
                 children: [
                   Container(
                     width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQH-r_2uVDS-NiHXaZmdbHkGjM0OlDHRQ0uQ&usqp=CAU"),)
                      
                      
                    ),
                     child: Center(
                       
                       child: Text("CAMPAIGN NAME",style: TextStyle(  
                                   fontSize: 20,  
                                   color: Colors.black,  
                                   fontWeight: FontWeight.w500,    
                                   letterSpacing: 2,  
                                   wordSpacing: 4,  
                                   shadows: [  
                                     Shadow(color: Colors.grey, offset: Offset(2,1), blurRadius:10)  
                                   ]  
                                 ),),
                     ),
                   ),
                 ],
               ),
              

                 
                    Expanded(
                      child: Container(
                       child: 
                           GridView.count(
                             physics: BouncingScrollPhysics(),
                             crossAxisCount: 2,
                             crossAxisSpacing: 1,
                             mainAxisSpacing: 1,
                             children: [
                               campaign('https://m.media-amazon.com/images/I/71hgzeX--TL._AC_SS450_.jpg'),
                               campaign('https://m.media-amazon.com/images/I/71D3y82w27L._AC_UY327_FMwebp_QL65_.jpg'),
                               campaign('https://m.media-amazon.com/images/I/61i9kCsTwTL._AC_UY327_QL65_.jpg'),
                               campaign('https://m.media-amazon.com/images/I/41nwo7rInKL._SY450_.jpg'),
                               campaign('https://m.media-amazon.com/images/I/31UOKpF7iQL._AC_UY327_QL65_.jpg'),
                               campaign('https://m.media-amazon.com/images/I/71lT-zWEYkL._SX522_.jpg'),
                             ],
                             )
                        
                           
                           
                                     
                         
                       ),
                    ),
                 
               ],
             )
             );
  }

  Card campaign(String img) {
    return Card(
                 color: Colors.transparent,
                 elevation: 0,
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                     image: DecorationImage(
                       image: NetworkImage(img),
                       fit: BoxFit.cover,
                       )
                     ),
                 ),
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