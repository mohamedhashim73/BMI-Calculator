import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrap/MultiProviders.dart';
class Weight_Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.green.withOpacity(0.7),borderRadius: BorderRadius.circular(15),),
        height: 150,
        child: Consumer<Weight>(
          builder: (context,weight,child){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                const SizedBox(height: 10),
                Text("${weight.weight_val}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.remove_circle), onPressed: () { weight.decrement_weight(); },),
                    IconButton(icon: Icon(Icons.add_circle), onPressed: () { weight.increment_weight(); },),
                  ],
                ),
              ],
            );
          },
        )
    );
  }
}
