import 'package:flutter/material.dart';

class InfiniteScrollScreen extends StatefulWidget {

  static const name = 'inifinitescrollscreen';

  const InfiniteScrollScreen({Key? key}) : super(key: key);

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollScreenState();
}

class _InfiniteScrollScreenState extends State<InfiniteScrollScreen> {
    List<int> imagesIds = [1,2,3,4,5,6];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text('InfiniteScroll'),
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: ListView.builder(
          itemCount: imagesIds.length ,
          itemBuilder: (context, index) {
            
            return FadeInImage(
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/images/jar-loading.gif'), //Imagen cargada o de assets
              image: NetworkImage('https://picsum.photos/id/${imagesIds[index]}/500/300')
              );
          },
          ),
      )
    );
  }
}