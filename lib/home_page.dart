import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
      //   actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.messenger_outline)),
      //     IconButton(onPressed: (){}, icon: Icon(Icons.notifications_active)),
      //   ],
      // ),
      

      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // backgroundColor: Colors.blue[100],
            title: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.messenger_outline)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_active)),
            ],
            expandedHeight: 310,
            flexibleSpace: Container(
              // color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello, Priya!",
                              style: GoogleFonts.lora(
                                  fontSize: 20, fontWeight: FontWeight.w500),
                            ),
                            Gap(5),
                            Text("What do you wanna learn today?",style: GoogleFonts.inter(fontSize:12,fontWeight:FontWeight.w500),),
                          ],
                        ),
                      )),
                  Gap(10),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: GridView(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            mainAxisExtent: 50,
                          ),
                          children: [
                            AppbarGridTile(
                              text: 'Program',
                              icon: Icons.book,
                            ),
                            AppbarGridTile(
                              text: 'Get Help',
                              icon: Icons.help,
                            ),
                            AppbarGridTile(
                              text: 'Learn',
                              icon: Icons.menu_book,
                            ),
                            AppbarGridTile(
                              text: 'DD Tracker',
                              icon: Icons.graphic_eq_rounded,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListViewCustom(heading: 'Programs for you',),
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListViewCustom(heading: 'Events and exerience',),
              )
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListViewCustom(heading: 'Learning for you',),
              )
            ),
          ),
        ],
      ),
    );
  }
}

class AppbarGridTile extends StatelessWidget {
  String text;
  IconData icon;
  AppbarGridTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon),
            Gap(20),
            Text(text),
          ],
        ),
      ),
    );
  }
}

class ListViewCustom extends StatelessWidget {
  String heading ;
  ListViewCustom({super.key,required this.heading});

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(heading,style: GoogleFonts.lora(fontSize: 18,fontWeight: FontWeight.w500,color:Colors.black),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("View all",style: GoogleFonts.inter(fontSize:12,fontWeight:FontWeight.w500),),
                                Gap(3),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      // color: Colors.amber,
                      width: MediaQuery.sizeOf(context).width,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 12,
                                      spreadRadius: 0
                                    )
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        // height: 10,

                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10)),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage('assets/pp.jpg'),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Expanded(
                                        child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(10),
                                            bottomRight: Radius.circular(10)),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('LIFESTYLE',style: GoogleFonts.inter(
                                              fontSize:12,
                                              fontWeight:FontWeight.w500,
                                              color:Colors.blue[600]

                                            ),),
                                            Expanded(
                                                child: Text(
                                                    'A Complete guide for a new born baby',style: GoogleFonts.inter(fontSize:16,fontWeight:FontWeight.w700),
                                                    )),
                                            Gap(10),
                                            Text('16 lessons',style: GoogleFonts.inter(fontSize:12,fontWeight:FontWeight.w500),)
                                          ],
                                        ),
                                      ),
                                    )),
                                  ],
                                ),
                              ),
                            );
                          }
                          ),)
                  ],
                  );
  }
}