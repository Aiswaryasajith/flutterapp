import 'package:flutter/material.dart';
import 'package:sample_project/widget/sidebarwidget.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({ Key? key }) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
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
                   SizedBox(
                     height: 10,
                   ),
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
                       
                       child: Text("CATEGORIES",style: TextStyle(  
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
            SizedBox(
              height: 10,
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
                               campaign('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQxccIgZfPO_OwvmKICSNZtnO2CfBFf_0L61g&usqp=CAU'),
                               campaign('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWSYA7T6c4XvNu64HB3Rl1Vpe35VJadK_glQ&usqp=CAU'),
                               campaign('https://thumbs.dreamstime.com/b/natural-scandinavian-living-room-interior-wooden-furniture-mockup-picture-empty-white-wall-154024411.jpg'),
                               campaign('https://media.istockphoto.com/photos/row-of-books-on-a-shelf-multicolored-book-spines-stack-in-the-picture-id1222550815?b=1&k=20&m=1222550815&s=170667a&w=0&h=MTxBeBrrrYtdlpzhMpD1edwLYQf3OPgkNeDEgIzYJww='),
                               campaign('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRt2ZVDpX3TF_R8zCUMV389ljV_SJtkMTeXPA&usqp=CAU'),
                               campaign('https://media.istockphoto.com/photos/sports-balls-on-the-field-with-yard-line-soccer-ball-american-and-picture-id942206100?b=1&k=20&m=942206100&s=170667a&w=0&h=S6SIMeZy5KWm-SEmOAlW-TGTUqCEvtK9WrupPA7qLKg='),
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
