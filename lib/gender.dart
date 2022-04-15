import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrap/MultiProviders.dart';
class Gender extends StatelessWidget {
  Widget build(BuildContext context) {
    return Consumer<Gender_Type>(
        builder: (context,gender,child){
          return Row(
            children: [
              Expanded(
                  flex: 1,
                  child: GestureDetector(
                    child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: gender.index ==1? Colors.green :Colors.green.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),),
                        height: 150,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.male,size: 40,),
                            SizedBox(height: 10),
                            Text("Male",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
                          ],
                        )
                    ),
                    onTap: (){gender.type_male();},
                  )
              ),
              SizedBox(width: 15,),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: gender.index ==2? Colors.green :Colors.green.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15),),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.female,size: 40,),
                          SizedBox(height: 10),
                          Text("Female",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),)
                        ],
                      )
                  ),
                  onTap: (){gender.type_female();},
                )
              ),
            ],
          );
        });
  }
}
