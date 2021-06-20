import 'package:destini_app/models/story_brain.dart';
import 'package:flutter/material.dart';

StoryBrain storyBrain = StoryBrain();
class DestiniPage extends StatefulWidget {
  @override
  _DestiniState createState() => _DestiniState();
}

class _DestiniState extends State<DestiniPage> {

  void nextStory(int choiceNumber){
    setState(() {
      storyBrain.nextStory(choiceNumber);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:  MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
                child: Text(storyBrain.getStory(), style: TextStyle(fontSize: 20.0, color: Colors.white),)),
          ),
        ),
       Expanded(
         child: Padding(
           padding: const EdgeInsets.all(5.0),
           child: Visibility(
             visible: storyBrain.buttonShouldBeVisible(),
             child: FlatButton(
               onPressed: (){
                 nextStory(1);
               },
               color: Colors.deepOrange,
               child: Text(storyBrain.getChoice1(), style: TextStyle(fontSize: 18.0, color: Colors.white)),
             ),
           ),
         ),
       ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Visibility(
              visible: storyBrain.buttonShouldBeVisible(),
              child: FlatButton(
                onPressed: (){
                 nextStory(2);
                },
                color: Colors.blue,
                child: Text(storyBrain.getChoice2(), style: TextStyle(fontSize: 18.0, color: Colors.white)),
              ),
            ),
          ),
        )
      ],
    );
  }

}