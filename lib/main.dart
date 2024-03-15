import 'package:flutter/material.dart';
import 'story_brain.dart';
void main() {
  runApp(Destini()
  );
}
class Destini extends StatelessWidget {
  Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const StoryPage(),
    );
  }
}
class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/pngtree.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [Expanded(child: Center(
              child: Text(
                story_brain().getStory(),
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            )),
              Expanded(
                flex: 2,
                child:TextButton(
                  onPressed: () {
                  story_brain().nextStory(1);
                  }, child: Text(story_brain().getChoice1(),
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0),
                ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child:Visibility(
                  visible: story_brain().buttonShouldbeVisible(),
                  child: TextButton(
                    onPressed: () {
                      story_brain().nextStory(2);
                    },
                    child: Text(story_brain().getChoice2(),
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}



