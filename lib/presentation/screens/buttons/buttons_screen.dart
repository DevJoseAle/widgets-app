import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {

  static const String name = 'buttonsscreen';
   
  const ButtonsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen')
      ),
      body: _ButtonsView(),
      floatingActionButton:  FloatingActionButton(
            onPressed: () => context.pop(),
            child: Icon(Icons.arrow_back),
            ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10,),
      child: Wrap(
        spacing: 8,
        children: [
          ElevatedButton(onPressed: (){}, child: Text('Elevated Button')),

          ElevatedButton.icon(
            onPressed: (){}, 
            icon: Icon(Icons.alarm_add_rounded),
             label: Text('Elevated Icon')),

          FilledButton(onPressed: (){}, child: Text('Filled')),

          FilledButton.icon(onPressed: (){}, icon: Icon(Icons.access_time_filled), label: Text('FilledIcon')),
          OutlinedButton(onPressed: (){}, child: Text('Outlined')),

          OutlinedButton.icon(onPressed: (){}, icon: Icon(Icons.access_time_filled), label: Text('Outlined.icon')),
          
          TextButton(onPressed: (){}, child: Text('TextButton')),

          TextButton.icon(onPressed: (){}, icon: Icon(Icons.access_time_filled), label: Text('TextButton.icon')),

          IconButton(onPressed: (){}, icon: Icon(Icons.recycling_outlined)),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.recycling_outlined),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(colors.primary)
            ),),
            CustomButton(),
        ],
    
      ),
    );

  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return  ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Material(
        color: colors.primary,
    
        child: InkWell(
          onTap: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:Text('Custom Button', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),) ,
            ),
        ),
      ),
    );
  }
}