import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_master_app/config/menu/menu_items.dart';
import 'package:widgets_master_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter + Material3 widgets')
        ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: BouncingScrollPhysics(),
      itemCount:appMenuItems.length ,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _CustomListTile(item: item);
      },
      );
  }
}

class _CustomListTile extends StatelessWidget {

  const _CustomListTile({
    super.key,
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {
  
  final colors = Theme.of(context).colorScheme;

    return ListTile(
      title: Text('${item.title}',),
      subtitle: Text('${item.subtitle}'),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary,),
      leading: Icon(item.icon, color: colors.primary,),
      onTap: () {
        
          context.push(item.link);
       
      },

      );
  }
}


     








