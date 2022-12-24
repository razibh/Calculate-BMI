import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final double bmi;

  const ResultPage({Key? key, required this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Widget result(double bmi) {
    // };
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Result'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Your BMI is',
              style: const TextStyle(fontSize: 25),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.amber, width: 8)
              ),
              child: Text(
                bmi.toStringAsFixed(1),
                style: const TextStyle(fontSize: 40),
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'You are',
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              // Bmi.getBmiStatus(bmi),
              bmi.toString(),
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 20,),
            // Column(
            //   children: Bmi.keys.map((e) => ListTile(
            //     tileColor: Bmi.getBmiStatus(bmi) == e ? Colors.greenAccent : null,
            //     title: Text(e),
            //     trailing: Text(Bmi.statusMap[e]!),
            //   )).toList(),
            // )
    //         ListView.builder(shrinkWrap: true, physics: NeverScrollableScrollPhysics(), itemCount: table.length ,itemBuilder: (context,index)
    // {return ListTile( title: Text(table[index].catagory),
    //     trailing: Text(table[index].range)
    // );
    //
    //
    //         }
    //         ),
         Text(bmi<16?'Underweight (Severe thinness)': 'Underweight (Moderate thinness)'),
         Text(bmi>(16.0-16.9)?'Underweight (Moderate thinness)': 'Good Fruits'),
         Text(bmi>(18.5-24.9)?'Normal range': 'Good Fruits'),
          Text(bmi>(25-29.9)?'Overweight (Pre-obese)': 'driet'),
           Text(bmi>(30.0-34.9)?'Obese (Class I)': 'Good Fruits'),
            
          ],
        ),
      ),
    );
  }
}
List <Bmi> table = [
  Bmi('Underweight (Severe thinness)', '< 16.0'),
  Bmi('Underweight (Moderate thinness)', '16.0 – 16.9'),
  Bmi('Normal range', '18.5 – 24.9'),
  Bmi('Overweight (Pre-obese)', '25.0 – 29.9'),
  Bmi('Obese (Class I)', '30.0 – 34.9'),
];
class Bmi {
  final String catagory;
  final String range;

  Bmi(this.catagory, this.range);
  
}