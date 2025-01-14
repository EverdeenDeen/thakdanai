import 'package:flutter/material.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _pageController = PageController(initialPage: 0);
  int _currentpage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentpage = value ;
                });
              },
              children: const [
                OnBoardingScreen(
                 subheading: 'with your friends',
                 heading: 'conect', 
                 imageUrl: 'https://firebasestorage.googleapis.com/v0/b/fir-c41ab.appspot.com/o/onboarding2.png?alt=media&token=224cbba6-9cc2-459f-baa5-cd0e154ad0ce&_gl=1*1ilyao7*_ga*MTMyNTIwNzg5Mi4xNjUzMzIzMzkz*_ga_CW55HF8NVT*MTY4NjY0MDc0Ni4xMjcuMC4xNjg2NjQwNzQ2LjAuMC4w',
                 pararaph: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document', 
                 headingtext: 'Direct Message',
                  ),
                  OnBoardingScreen(
                 subheading: 'Your best moments',
                 heading: 'Post', 
                 imageUrl: 'https://firebasestorage.googleapis.com/v0/b/fir-c41ab.appspot.com/o/onboarding1.png?alt=media&token=fa5c3024-5e2c-4132-a1c8-993c3967e082&_gl=1*11q0rag*_ga*MTMyNTIwNzg5Mi4xNjUzMzIzMzkz*_ga_CW55HF8NVT*MTY4NjY0MDc0Ni4xMjcuMS4xNjg2NjQwNzUxLjAuMC4w',
                 pararaph: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document', 
                 headingtext: 'Create Videos',
                  ),
                  OnBoardingScreen(
                 subheading: 'with your friends',
                 heading: 'conect', 
                 imageUrl: 'https://firebasestorage.googleapis.com/v0/b/fir-c41ab.appspot.com/o/onboarding2.png?alt=media&token=224cbba6-9cc2-459f-baa5-cd0e154ad0ce&_gl=1*1ilyao7*_ga*MTMyNTIwNzg5Mi4xNjUzMzIzMzkz*_ga_CW55HF8NVT*MTY4NjY0MDc0Ni4xMjcuMC4xNjg2NjQwNzQ2LjAuMC4w',
                 pararaph: 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document', 
                 headingtext: 'Direct Message',
                  ),
                  
                  
               
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 40,
                width: 100,
                child: ElevatedButton(
                  onPressed: () {
                    _pageController.nextPage(duration: Duration(
                      microseconds: 500
                    ), curve: Curves.ease);
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    backgroundColor: const Color.fromARGB(255, 246, 87, 8),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
        
        
          SizedBox(
            height: 12,
            child: ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Container(
                width: 12,
                height: 12,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(50),
                  color: _currentpage==index? Colors.white:Color.fromARGB(255, 67, 66, 66),
                ),
                
              );
            }),
          )

        ],
      ),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key, required this.imageUrl, required this.heading, required this.subheading, required this.pararaph, required this.headingtext});
  final String imageUrl;
  final String heading;
  final String subheading;
  final String pararaph;
  final String headingtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 50),
          Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: Image.network(
              'https://cdn.pixabay.com/photo/2016/02/10/20/00/symbol-of-infinity-of-autism-1192408_1280.png',
              width: 100,
            ),
          ),
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 220,
              margin: const EdgeInsets.only(left: 10),
              padding: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                border: Border(
                  left: BorderSide(
                    color: Color.fromARGB(255, 246, 87, 8),
                    width: 4.0,
                  ),
                ),
              ),
              child:  RichText(
                text:  TextSpan(
                  style: const TextStyle(fontSize: 32),
                  children: [
                    TextSpan(
                      text: heading,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 246, 87, 8),
                      ),
                    ),
                    TextSpan(text: subheading),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Image.network(
            imageUrl
          ),
          const SizedBox(height: 40),
          Text(
            heading,
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 177, 175, 175),
            ),
          ),
          const SizedBox(height: 15),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              pararaph,
              style: const TextStyle(
                color: Color.fromARGB(255, 177, 175, 175),
              ),
            ),
          ),
          const SizedBox(height: 5),
          
        ],
      ),
    );
  }
}

