import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../CounterCubit.dart';

class OutputPage extends StatefulWidget {
  const OutputPage({super.key});

  @override
  State<OutputPage> createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, int>(
      builder: (context,count){
        return Scaffold(
          body:  Center(child: Column(
            children: [
              const SizedBox(height: 50,),
              const Text('OUTPUT',style: TextStyle(fontSize: 20)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.35,),
            Text('$count',style: const TextStyle(fontSize: 50)),
            ],
          ),),
        );
      },
    );

  }
}
