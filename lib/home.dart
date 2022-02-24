
import 'package:flutter/material.dart';
import 'package:sample_project/campaign1.dart';
import 'package:sample_project/campaign.dart';
import 'package:sample_project/detailpage.dart';
import 'package:sample_project/widget/sidebarwidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

 

  
  
  

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _myColorOne = Colors.white;
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
        
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              
              children: [
                SizedBox(
                  width: 40,
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CampaignPage();
        }));
                  },
                  child: Container(
                    width: 400,
                    height: 166,
                    
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://images-eu.ssl-images-amazon.com/images/G/31/img21/Laptops/December/D35259883_IN_PC-Laptops-December-BAU-Creatives-December_1500x300.jpg"),)
                    ),
                    ),
                ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://assetscdn1.paytm.com/images/catalog/product/F/FO/FOOSMOKY-TRENDYSMOK381955669A9D8/1622965634045_0..jpg?imwidth=282&impolicy=hq",context),
                  
                    buildColum("https://5.imimg.com/data5/VY/JM/FF/SELLER-69536136/men-red-jackets-500x500.jpg",context),
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://sc04.alicdn.com/kf/Hdf69a8b0fd914065a6a3e513a86aee7cM.jpg",context),
                    buildColum("https://imgmedia.lbb.in/media/2021/02/602a7bef11cac138ef9ea867_1613396975774.jpg",context),
                      
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://www.dhresource.com/260x260s/f2-albu-g19-M00-C9-EF-rBNaN2DYX0yACFa5AAFYK5z3Huc236.jpg/outdoor-bags-simple-korean-style-pure-candy.jpg",context),
                    buildColum("https://cdn.pocket-lint.com/r/s/1200x/assets/images/141437-cameras-review-canon-eos-200d-image2-ejkgtps96p.jpg",context),
                      
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUXaS8E8vwkygOK6UaY2fj2EIpboIgxhAiFg&usqp=CAU",context),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmI0qVyIkHHbh8YZpRULxvQVzs7264xGwOwg&usqp=CAU",context),
                      
                    ],
                  ),
                  SizedBox(
                  width: 40,
                  height: 10,
                ),
                 GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CampaignPage1();
        }));
                  },
                  child: Container(
                    width: 400,
                    height: 166,
                    
                    decoration: BoxDecoration(
                      
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage("https://t3.ftcdn.net/jpg/04/44/73/62/360_F_444736205_2OVRaCzyl2PPfW9mDwRygOVVEh2sofrN.jpg"),)
                    ),
                    ),
                ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKPdxO8JfWUWfxRNOIUR-UvCyQOVJk2ml3MQ&usqp=CAU",context),
                  
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQolYyYwgjcel5Qitfbq13_epcr79ye1xRhfw&usqp=CAU",context),
                      
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://images.meesho.com/images/products/73457612/qjolg_512.jpg",context),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9Ee9iT2pmY2AqdqtFMyRglJYEkfnS3NKY-g&usqp=CAU",context),
                      
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStaOwXYVptExrSOhBT1O2iMg4C0eIQgWU1yA&usqp=CAU",context),
                    buildColum("https://i.etsystatic.com/25015176/r/il/fae576/3287825967/il_340x270.3287825967_3jfi.jpg",context),
                      
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                       const SizedBox(
                            width: 5,
                          ),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNVpQO_kQYc-yuaW1y__OhztGGk6PNUpRoGg&usqp=CAU",context),
                    buildColum("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLNLS_SWk_h5rh_S8-q0z5gmbzpUZR8b1udQ&usqp=CAU",context),
                      
                    ],
                  ),
                  
                   
                  
                    
                  
              
                
              ],
              
              
            ),
          ),
        ),
        
        
      
         
       

             
                     
                    
           
      
        
        
         
    
        
           
              
              
           
        
        
        
        
       
     
             
          
            
               
             
             
             
             
           
          
    
           
           
             
              
      
               
             
         
        
    );  

  }

  Widget buildColum(String img,BuildContext context) {
    return GestureDetector(
      onTap: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return DetailPage(img,context);
        }));
      },
      child: Column(
                        children: [
                         
                           Stack(children: [
                            Container(
                            
                            height: 200,
                            width: 200,
                            child: ClipRRect
                            (
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(img,fit: BoxFit.cover,),
                              
    
                            )
                            
                          ),
                          
                                   
                                   IconButton
                                   (
                                     icon: Icon(Icons.favorite_border_rounded),onPressed: ()=>setState((){
                                       _myColorOne=Colors.orange.shade300; }),
                                      color: _myColorOne,
                                       
                                        iconSize: 35,     
                                   ),
                                
                          
                           ],),
                          
                        ],
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

