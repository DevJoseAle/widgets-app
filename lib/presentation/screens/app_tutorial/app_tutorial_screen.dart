import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

class SlideInfo {

  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca La Comida', 'aliqua occaecat culpa exercitation tempor', 'assets/images/1.png'),
  SlideInfo('Entrega Rápida', 'aliqua occaecat culpa exercitation tempor', 'assets/images/2.png'),
  SlideInfo('Disfruta tu comida!', 'aliqua occaecat culpa exercitation tempor', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatefulWidget {

  static const name = 'apptutorialscreen';
   
  const AppTutorialScreen({Key? key}) : super(key: key);

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();

}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  //4.
  bool endReached = false;

  //2
 final pageviewController = PageController();

  //3
  @override
  void initState() {
    
    super.initState();
    //3.
    pageviewController.addListener(() {

      //4.
      final page = pageviewController.page ?? 0;

      //5
      if(!endReached && page >= (slides.length -1.5)){
        setState(() {
          endReached = true;
        });
      }
      
      
      print(pageviewController.page);

    });
  }
  //6
  @override
  void dispose() {
    pageviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller:pageviewController,
            physics: BouncingScrollPhysics(),
            children: [
                ...slides.map(
                  (slideData) => _Slide(
                    title: slideData.title, 
                    caption: slideData.caption, 
                    imageUrl: slideData.imageUrl) ).toList()
            ],
          ),

          Positioned(
            top: 30,
            right: 50,
            child: TextButton(
              onPressed: ()=>context.pop(),
              child: Text('Salir'),
            ),
          ),

            //7
           endReached ? 
           Positioned(
            bottom: 30,
            right: 50,
            child:FadeInRight(
              duration: Duration(milliseconds: 900),
              child: FilledButton(
                onPressed: ()=>context.pop(),
                child: Text('Omitir'),
              ),
            ),
          )
          :SizedBox()
          

        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({super.key, required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final titleStyle = textTheme.titleLarge; 
    final captionStyle = textTheme.bodySmall; 

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(title, style: titleStyle,),
            Image(image: AssetImage(imageUrl)),
            Text(caption, style: captionStyle,),

          ],
        ),),
        );
  }
}