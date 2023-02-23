import 'package:flutter/material.dart';


class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("EO"),style: ButtonStyle(backgroundColor: MaterialStateProperty.resolveWith((states) {
            if(states.contains(MaterialState.pressed)){
              return Colors.green;
            }
            return Colors.white;
          }))),


          ElevatedButton(onPressed: (){}, child: Text("b")),
          IconButton(onPressed: (){}, icon: Icon(Icons.add)),
          FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
          OutlinedButton(onPressed: (){}, child: Text("aaaa"),style: OutlinedButton.styleFrom(backgroundColor: Colors.red,shape: CircleBorder()),),
          OutlinedButton.icon(onPressed: (){},icon: Icon(Icons.remove),label: Text("Sil"),),
          InkWell(child: Text("custom"),onTap: (){},),
          Container(
            height: 200,
            color: Colors.white,
          ),
          SizedBox(height: 100,),
          
          ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              onPressed: (){}, child: Padding(
                padding: const EdgeInsets.only(right: 60,left: 60,top: 20,bottom: 20),
                child: Text("Place Bid",style: Theme.of(context).textTheme.headline5,),
              ))
        ],
      ),
    );
  }
}
