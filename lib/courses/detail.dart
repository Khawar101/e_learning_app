import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class CourseDetailPage extends StatefulWidget {
  const CourseDetailPage({super.key});

  @override
  State<CourseDetailPage> createState() => _CourseDetailPageState();
}

class _CourseDetailPageState extends State<CourseDetailPage> {
  TabController? controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffe4f1f8),
          appBar: AppBar(
            backgroundColor: const Color(0xffe4f1f8),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.arrow_back_ios, color: Colors.black),
                Text(
                  "Details",
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                const Icon(
                  Icons.bookmark_outline,
                  color: Colors.black,
                  size: 27,
                )
              ],
            ),
          ),
          body: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.amber.shade100,
                  child: Image.asset(
                    'assets/images/profile-pic.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                sliver: SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16),
                      Container(
                        height: 30,
                        width: 60,
                        color: Colors.blue,
                        child: const Center(
                            child: Text(
                          "HOT",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                                'assets/images/profile_picture.jpeg'),
                          ),
                          const SizedBox(width: 15),
                          Text("Anny Morriarty",
                              style: GoogleFonts.ibmPlexSans(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text("Comic drawing essential for everyone!",
                          style: GoogleFonts.ibmPlexSans(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.w500)),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.access_time_outlined,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("1 hours 30 min",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_border_outlined,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("4.7 (753)",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.videocam_sharp,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("12 Lessons",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.person_outline,
                                    size: 16,
                                  ),
                                  const SizedBox(width: 7),
                                  Text("2K students",
                                      style: GoogleFonts.ibmPlexSans(
                                          fontSize: 12)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors",
                        style: TextStyle(height: 1.3, wordSpacing: 2),
                      ),
                      const SizedBox(height: 40),
                      TabBar(
                        indicatorWeight: 1,
                        indicatorPadding: const EdgeInsets.only(bottom: 4),
                        indicatorColor: Colors.blue,
                        controller: controller,
                        labelStyle: GoogleFonts.ibmPlexSans(
                            fontSize: 18.0, fontWeight: FontWeight.w500),
                        onTap: (value) {},
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black.withOpacity(0.4),
                        tabs:const [
                           Tab(
                            text: 'Overview',
                          ),
                           Tab(
                            text: 'completed',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                fillOverscroll: true,
                  child: TabBarView(
                              
                                controller: controller,
                                children: [
                  SingleChildScrollView(
                                
                     physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 15),
                        child: Column(
                             
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Introduction",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 16,fontWeight:FontWeight.w500),),
                            const SizedBox(height: 8),
                            ReadMoreText(
                                            'The Flutter framework builds its layout via the composition of widgets, everything that you construct programmatically is a widget and these are compiled together to create the user interface. ',
                                            trimLines: 2,
                                            trimLength: 80,
                                            style: TextStyle(color: Colors.black.withOpacity(0.7)),
                                            colorClickableText: Colors.black,
                                            trimMode: TrimMode.Length,
                                            trimCollapsedText: 'Read more',
                                            moreStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                                            trimExpandedText: ' Less',
                                            lessStyle: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                                          ),
                                           const SizedBox(height: 30),
                                           Container(
                                            height: 55,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(30)
                                            ),
                                            child: Center(child: Text("See more",style: GoogleFonts.ibmPlexSans(color: Colors.white,fontSize: 18,fontWeight:FontWeight.w500),)),
                                           ),
                                            const SizedBox(height: 30),
                                             Text("Feedback",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontSize: 16,fontWeight:FontWeight.w500),),
                                             const SizedBox(height: 20),
                                             Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,  
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.star,size: 22,color: Colors.yellow[700],),
                                        const SizedBox(width: 7),
                                        Text("4.7",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontWeight: FontWeight.w600),),
                                      ],
                                    ),                                 
                                  ),
                                  
                                      Text("Reviews",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width*0.4,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,  
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.person_outline,size: 22,),
                                        const SizedBox(width: 7),
                                        Text("753",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontWeight: FontWeight.w600),),
                                      ],
                                    ),                                 
                                  ),
                                  
                                      Text("Students",style: GoogleFonts.ibmPlexSans(color: Colors.black,fontWeight: FontWeight.w600),),
                                ],
                              ),
                            ),
                          ),
                        ],
                                             ),
                                             const SizedBox(height: 20),
                                             ListView.builder(
                                             physics: NeverScrollableScrollPhysics(),
                                             scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                         itemCount: 7,
                         itemBuilder: (BuildContext context, int index) {
                         return 
                                            Row(
                                           crossAxisAlignment: CrossAxisAlignment.center,
                                           children: [
                                             const CircleAvatar(
                                               radius: 25,
                                               backgroundImage:
                                                   AssetImage('assets/images/profile-pic.jpg'),
                                             ),
                                             SizedBox(
                                                 width: MediaQuery.of(context).size.width * 0.03),
                                             Column(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                               children: [
                                                 Text(
                                                   "@mouni",
                                                   style: GoogleFonts.ibmPlexSans(
                                                       fontSize: 16,
                                                       fontWeight: FontWeight.w600,
                                                       color: Colors.black),
                                                 ),
                                                 const SizedBox(
                                                   height: 12,
                                                 ),
                                                 Row(
                                                   children: [
                                                     Text(
                                                       "11 min ago",
                                                       style: GoogleFonts.ibmPlexSans(fontSize: 12),
                                                     ),
                                                     SizedBox(
                                                         width: MediaQuery.of(context).size.width *
                                                             0.03),
                                                     const CircleAvatar(radius: 1),
                                                     SizedBox(
                                                         width: MediaQuery.of(context).size.width *
                                                             0.03),
                                                     Text(
                                                       "Student",
                                                       style: GoogleFonts.ibmPlexSans(fontSize: 14),
                                                     ),
                                                   ],
                                                 ),
                                               ],
                                             ),
                                           ],
                                         );
                                       }),
                                        Container(color:Colors.black,height: 1000),
                                        
                                         ],
                                        ),
                                 ),
                                ),
                  
                  
                  SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:20.0),
                        child: Column(
                          mainAxisSize : MainAxisSize.max,
                         
                          children: [
                            const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                                const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                            const Text(
                                "These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors, These example sentences are selected automatically from various online news sources to reflect current usage of the word 'text.' Views expressed in the examples do not represent the opinion of Merriam-Webster or its editors"),
                          ],
                        ),
                      )),
                                ],
                              ))
            ],
          )),
    );
  }
}
