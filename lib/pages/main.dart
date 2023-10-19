import 'package:flutter/material.dart';
import 'package:flutter_dev_technical_exam_4_state_management/pages/output.dart';

import 'input.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
         const Expanded(
           flex:1,
           child:  Center(child: Text("MAIN"),),),
          Expanded(
            flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const InputPage()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:  Colors.pinkAccent
                    ),
                    child:  const Center(
                      child: Text("INPUT",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const OutputPage()),
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.22,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color:  Colors.pinkAccent
                    ),
                    child:  const Center(
                      child: Text("OUTPUT",style: TextStyle(color: Colors.white),),
                    ),
                  ),
                )
            ],
          ))
        ],
      ),
    );
  }
}
