import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrap/MultiProviders.dart';
class Age_Content extends StatelessWidget {
  const Age_Content({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.green.withOpacity(0.7),borderRadius: BorderRadius.circular(15),),
        height: 150,
        child: Consumer<Age>(
          builder: (context,age,child){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                const SizedBox(height: 10),
                Text("${age.age_val}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                // const
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.remove_circle), onPressed: () { age.decrement_age(); },),
                    IconButton(icon: Icon(Icons.add_circle), onPressed: () { age.increment_age(); },),
                  ],
                ),
              ],
            );
          },
        )
    );
  }
}
