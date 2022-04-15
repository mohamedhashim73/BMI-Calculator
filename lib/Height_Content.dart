import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MultiProviders.dart';
class Height_Content extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.green.withOpacity(0.7),borderRadius: BorderRadius.circular(15),),
      height: 150,
      child: Consumer<Height>(builder: (context,height,child){
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Height",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 15,),
            Text("${height.value.toInt()}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24),),
            Slider(
              min: 0.0,
              max: 100.0,
              value: height.value,
              inactiveColor: Colors.black.withOpacity(0.4),
              onChanged: (sliderval){
                height.override(sliderval);                       // override => height.value = sliderval
              },
            ),
          ],
        );
      }
      )
    );
  }
}