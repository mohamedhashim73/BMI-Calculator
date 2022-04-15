import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wrap/MultiProviders.dart';
import 'package:wrap/home.dart';
class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Result"),),
      body: Container(
        alignment: Alignment.center,
        child: Container(
            height: 350,
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(50)),
                  child: Text("BMI Calculator!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  ),
                SizedBox(height: 20,),
                Consumer<Gender_Type>(builder: (context,gender,child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                            height: 40,width: 40,
                            child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                      SizedBox(width: 30,),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                            height: 40,width: 40,
                            child: Text("${gender.type}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                    ],);},
                ),
                SizedBox(height: 10,),
                Consumer<Age>(builder: (context,age,child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                          height: 40,width: 40,
                          child: Text("Age",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                      SizedBox(width: 30,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                          height: 40,width: 40,
                          child: Text("${age.age_val}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                    ],);},
                ),
                SizedBox(height: 10,),
                Consumer<Weight>(builder: (context,weight,child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                          height: 40,width: 40,
                          child: Text("Weight",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                      SizedBox(width: 30,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                          height: 40,width: 40,
                          child: Text("${weight.weight_val.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                    ],);},
                ),
                SizedBox(height: 10,),
                Consumer<Height>(builder: (context,height,child){
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                          height: 40,width: 40,
                          child: Text("Height",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                      SizedBox(width: 30,),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.orange.withOpacity(0.5),borderRadius: BorderRadius.circular(50)),
                          height: 40,width: 40,
                          child: Text("${height.value.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),),
                      ),
                    ],);},
                ),
                // ***************************************************************************************
                SizedBox(height: 10,),
                // ********************************
                Container(
                  margin: const EdgeInsets.only(right: 70,left: 70),
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));},
                    child: Text("Return",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    color: Colors.orange,),
                )
              ],
            )
        ),
      )
    );
  }
}
