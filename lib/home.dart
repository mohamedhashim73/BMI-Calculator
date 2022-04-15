import 'package:flutter/material.dart';
import 'package:wrap/Age_Content.dart';
import 'package:wrap/Height_Content.dart';
import 'package:wrap/Result.dart';
import 'package:wrap/Weight_Content.dart';
import 'package:wrap/gender.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Gender(), // Male and Female Widget exist in Gender Page
            SizedBox(
              height: 15,
            ),
            // *****************************************
            Height_Content(), // Height Widget exist in Weight_Content Page
            const SizedBox(
              height: 15,
            ),
            // ******************  Age , Weight *************************
            Row(
              children: [
                const Expanded(
                  flex: 1,
                  child: Age_Content(), // Age Widget on Age_Content Page
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  flex: 1,
                  child:
                      Weight_Content(), // Weight Widget exist on Weight_Content Page
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // ********************************
            Container(
              margin: const EdgeInsets.only(right: 70, left: 70),
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Result()));
                },
                child: Text(
                  "See your Info",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                color: Colors.indigo.withOpacity(0.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
