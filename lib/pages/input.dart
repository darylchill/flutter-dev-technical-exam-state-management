import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dev_technical_exam_4_state_management/CounterCubit.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController inputTextController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CounterCubit, int>(
      builder: (context,count){
        return Scaffold(
          body:  Column(
            children: [
              const SizedBox(height: 50,),
              const Center(child: Text("INPUT",style: TextStyle(fontSize: 20),),),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
              Container(
                width: MediaQuery.of(context).size.width * 0.33,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Theme.of(context).primaryColor),
                ),
                child: Center(child: Text('$count',style: const TextStyle(fontSize: 20),),),
              ),
              const SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
                      onPressed: (){
                        context.read<CounterCubit>().increment();
                      }, icon: const Icon(Icons.add,size: 100,color: Colors.purple,)),
                  IconButton(
                      visualDensity: const VisualDensity(horizontal: -4.0, vertical: -4.0),
                      onPressed: (){
                        context.read<CounterCubit>().decrement();
                      }, icon: const Icon(Icons.remove,size: 100,color: Colors.purple,))
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
