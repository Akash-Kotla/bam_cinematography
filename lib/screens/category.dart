import 'package:flutter/material.dart';

class category extends StatelessWidget {
  const category({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "15%",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),


              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: LinearProgressIndicator(
                  minHeight: 13,
                  value: 0.15,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.green,
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    ));
  }
}





