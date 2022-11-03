import 'package:flutter/material.dart';
import 'package:quiz_app/const.dart';

class PlayQuiz extends StatefulWidget {
  const PlayQuiz({Key? key}) : super(key: key);

  @override
  State<PlayQuiz> createState() => _PlayQuizState();
}

class _PlayQuizState extends State<PlayQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        leading: IconButton(
          onPressed: (){
            Navigator. pop(context);
            },
          icon: const Icon(
              Icons. arrow_back_ios,
            color: backgroundColor,
          ),
        ),
        title: const Text(
          'Play Quiz',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: backgroundColor,
          ),
        ),
      ),
      body: PageView.builder(
        itemCount: 10,
          itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'This is a Question',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(4, (index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: foregroundColor,

                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Option 1',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          height: 70,
          color: foregroundColor,
          alignment: Alignment.center,
          child: const Text(
            'Next',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: backgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
