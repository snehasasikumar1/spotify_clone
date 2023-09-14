import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  Color iconColor = Colors.white;
  int a =0;
   var text=['feel.jpg','premam.jpg','romantic.jpg'];
   var list=["Ranjin Raj, Haricharan,\n Vijay Yesudas","    Anirudh Ravichander, \n     Haricharan","Ranjin Raj, Haricharan,\n Vijay Yesudas"];
   var img=['grwmm.jpg','kolly.jpg','grwmt.jpg'];
   var list1=["Haricharan, vijay \n yesudas, Pritam"," Anirudh \n Ravichander, G.V.Prakash"," Anirudh \n Ravichander, A.R.Rahman"];
   var img2=['ar1.jpg','ay.jpg','ar3.jpg'];
   var list2=["This is A.R.Rahman.The \n essential tracks..","Hariharan, Alka \n yagnik, Mohammed Aslam","A.R.Rahman Tamil Hits"];
   var img3=['arr1.jpg','arr2.jpg','bts.jpg'];
   var list3=["Anirudh Ravichander, sid \n sriram, Shanker Mahadevan","A.R.Rahman, Anirudh \n Ravichander, Arijit Singh","BTS, RM, Agust D, j-hope, \n Coldplay"];
   @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            onTap: (index){
            setState(() {
              a= index;
            });
          },
          currentIndex: a,
          items: [
      BottomNavigationBarItem(
      icon:Icon(Icons.home,color: Colors.white,),
      label: 'home',
      backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.search,color: Colors.white,),
    label: 'search',
    backgroundColor: Colors.black,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.my_library_music_outlined,color: Colors.white,),
    label: 'your library',
    backgroundColor: Colors.black,
    ),
    ]
    ),
      body: Stack(
        children:[ CustomScrollView(
          slivers: [
          SliverAppBar(
          pinned: false,
          floating: true,
          flexibleSpace: Stack(
              children:[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  color: Colors.black,
                  child: Text( 'Good Morning', style: TextStyle(fontSize:25, fontWeight:FontWeight.w600, color: Colors.white,fontStyle:FontStyle.italic ),),

                ),
                Positioned(
                    top: 10,
                    right: 110,
                    child: Icon(Icons.notifications_none, color: Colors.white,)
                ),
                Positioned(
                    top: 10,
                    right: 70,
                    child: Icon(Icons.access_time,color: Colors.white,)
                ),
                Positioned(
                    top: 10,
                    right: 30,
                    child: Icon(Icons.settings,color: Colors.white,)
                ),
              ]
          ),
        ),
            SliverToBoxAdapter(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*2.5,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(left: 23),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(fit: BoxFit.fill,
                                    image:AssetImage('assets/liked.jpg'))
                                  ),
                                ),
                                Text('  Liked \n  Songs', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                              ],
                            )
                          ],
                        ),
                        Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    margin: EdgeInsets.only(left: 80),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(fit: BoxFit.fill,
                                            image:AssetImage('assets/happy.jpg'))
                                    ),
                                  ),
                                  Text('  Happy Vibes \n  Malayalam', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                                ],
                              )
                            ],
                          ),
                      ],
                    ),
                    SizedBox(
                      width: 15,
                      height: 15,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(left: 23),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(fit: BoxFit.fill,
                                          image:AssetImage('assets/trending.jpg'))
                                  ),
                                ),
                                Text('  Trending Now \n  Malayalam', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  margin: EdgeInsets.only(left: 13),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(fit: BoxFit.fill,
                                          image:AssetImage('assets/cover.jpg'))
                                  ),
                                ),
                                Text('  Malayalam Cover \n  Songs', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
           Padding(
             padding: const EdgeInsets.all(20),
             child: Container(
               margin: EdgeInsets.only(right: 265),
                 child: Text('More of what you like', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white  ))
             ),
           ),
                                    Container(
                                      height: 235,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                          itemCount: text.length,
                                          itemBuilder: (context, index) {
                                          return Row(
                                            children: [
                                              Column(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.all(10),
                                                    width: 170,
                                                    height: 170,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(text[index]),
                                                        fit: BoxFit.cover
                                                      ),
                                                    ),
                                                  ),
                                                  Text(list[index],style: TextStyle(
                                                      color: Colors.white38
                                                  ),)
                                                ],
                                              ),
                                            ],
                                          );
                                          }
                                      ),
                                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                          margin: EdgeInsets.only(right: 265),
                          child: Text('Recommended for today', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white  ))
                      ),
                    ),
                    Container(
                      height: 254,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: text.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      width: 170,
                                      height: 170,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(img[index]),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    Text(list1[index],style: TextStyle(
                                        color: Colors.white38
                                    ),)
                                  ],
                                ),
                              ],
                            );
                          }
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Container(
                            width: 54,
                            height: 54,
                            margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(54),
                              image: DecorationImage(fit:BoxFit.fill,
                                image: AssetImage('assets/rahman.jpg')
                              )
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('  DISCOVER MORE FROM',style: TextStyle(fontSize:12,color: Colors.white38),),
                              Text('  A.R.Rahman',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 254,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: text.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      width: 170,
                                      height: 170,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(img2[index]),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    Text(list2[index],style: TextStyle(
                                        color: Colors.white38
                                    ),)
                                  ],
                                ),
                              ],
                            );
                          }
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Container(
                          margin: EdgeInsets.only(right: 265),
                          child: Text('Recommended radio', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white  ))
                      ),
                    ),
                    Container(
                      height: 254,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: text.length,
                          itemBuilder: (context, index) {
                            return Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.all(10),
                                      width: 170,
                                      height: 170,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(img3[index]),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    Text(list1[index],style: TextStyle(
                                        color: Colors.white38
                                    ),)
                                  ],
                                ),
                              ],
                            );
                          }
                      ),
                    ),
                              ],
                            ),
              ),
                        ),
              ],
            ),
          Positioned(
            bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fill,
                        image: AssetImage('assets/cover.jpg'))
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('  Naruchiriyude Minnayam',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text('  Shaan Rahman',style: TextStyle(fontSize: 14,color:Colors.white),)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        margin: EdgeInsets.only(left: 90),
                        child: IconButton(
                          icon: Icon(Icons.devices_outlined,color: Colors.white,),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.favorite,color: iconColor),
                          onPressed: () {
                            setState(() {
                              if(iconColor == Colors.white){
                                iconColor = Colors.green;
                              } else{
                                iconColor = Colors.white;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Container(
                        child: IconButton(
                          icon: Icon(Icons.play_arrow,color: Colors.white,),
                          onPressed: () {
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ))
     ]
      )
    );
  }
}
