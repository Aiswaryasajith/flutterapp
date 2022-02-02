
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample_project/detailpage.dart';
import 'package:sample_project/widget/sidebarwidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
    
      bottomNavigationBar: Container(
        height: 70,
        
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
              BuildContainerBottomNav(Icons.bar_chart_outlined),
              BuildContainerBottomNav(Icons.add_a_photo,isSelected: true),
              BuildContainerBottomNav(Icons.email_outlined),
            ],
          ),
        ),
      ),
      appBar:AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink[300],
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
            SizedBox(
              width: 40,
              height: 10,
            ),
            Container(
              width: 400,
              height: 166,
              
              decoration: BoxDecoration(
              
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("https://t3.ftcdn.net/jpg/04/44/73/62/360_F_444736205_2OVRaCzyl2PPfW9mDwRygOVVEh2sofrN.jpg"),)
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
               child: GridView.count(crossAxisCount: 2,
               children: <Widget>[
                
                 buildColumnWithRow("https://assetscdn1.paytm.com/images/catalog/product/F/FO/FOOSMOKY-TRENDYSMOK381955669A9D8/1622965634045_0..jpg?imwidth=282&impolicy=hq",context),
                
                 buildColumnWithRow("https://5.imimg.com/data5/VY/JM/FF/SELLER-69536136/men-red-jackets-500x500.jpg",context),
                 buildColumnWithRow("https://sc04.alicdn.com/kf/Hdf69a8b0fd914065a6a3e513a86aee7cM.jpg",context),
                 buildColumnWithRow("https://imgmedia.lbb.in/media/2021/02/602a7bef11cac138ef9ea867_1613396975774.jpg",context),
                 buildColumnWithRow("https://www.dhresource.com/260x260s/f2-albu-g19-M00-C9-EF-rBNaN2DYX0yACFa5AAFYK5z3Huc236.jpg/outdoor-bags-simple-korean-style-pure-candy.jpg",context),
                 buildColumnWithRow("https://cdn.pocket-lint.com/r/s/1200x/assets/images/141437-cameras-review-canon-eos-200d-image2-ejkgtps96p.jpg",context),
                 
               ],
               
               )
               
                )
                
              
          
            
          ],
          
        ),
        

     
             
          
            
               
             
             
             
             
           
          
    
           
           
             
              
          
               
             
           
        
    );    

  }

  GestureDetector buildColumnWithRow(String img, BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return DetailPage(img,context);
        }));
      },
      child: Card(
        
                         shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
                         elevation: 10.0,
                         child: ClipRRect(
                           borderRadius: BorderRadius.all(Radius.circular(20.0),
                           ),
                           child: Stack(
                             children: <Widget>[
                               Image.network(img,width: 200,fit: BoxFit.fill,),
                               Padding(
                                 padding: const EdgeInsets.all(140.0),
                                 child: IconButton
                                 (
                                   icon: Icon(Icons.favorite),onPressed: (){},
                                      color: Colors.white,
                                      iconSize: 35,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
    );  
    
  }

  Container BuildContainerBottomNav(IconData icon,{isSelected=false}) {
    return Container(
            decoration: BoxDecoration(
              color: isSelected? Colors.pink[100]:Colors.white,
              shape: BoxShape.circle,
              boxShadow:isSelected? [
                BoxShadow(color: Colors.grey,blurRadius: 10,spreadRadius: 1)
              ]:[],
            ),
            height: 50,
            width: 50,
            child: Icon(icon,color: isSelected? Colors.white : Colors.black,),
          );
  }
}

class MySearchDelegate extends SearchDelegate{
 
  @override
  Widget? buildLeading(BuildContext context) {
    IconButton(icon: const Icon(Icons.arrow_back),onPressed: ()=>close(context, null)
    );
    
    
  }
   
  List<Widget>? buildActions(BuildContext context) {
    [IconButton(icon: Icon(Icons.clear),onPressed: (){
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

