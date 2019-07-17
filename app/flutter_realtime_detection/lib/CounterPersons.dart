import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'models.dart';

class CounterPersons extends StatelessWidget {
  List<dynamic> results;

  CounterPersons(this.results);

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    if (results != null) {
      for (int i = 0; i < results.length; i++) {
        print(results[i]);
        if (results[i]['detectedClass'] == 'person') {
          counter += 1;
        }
      }
      return new Container(
          alignment: Alignment(1.0, 1.0),
          child: new Text("Counter Peoples:" + counter.toString(),
            style: TextStyle(
                fontSize: 20.0
            ),)
      );
    }
  }
    /*
     List<Widget> _renderNumberOfBoxes() {
      var lists = <Widget>[];
      results.forEach((re) {
        a=[]

        var list = re["keypoints"].values.map<Widget>((k) {
          var _x = k["x"];
          var _y = k["y"];
          var scaleW, scaleH, x,y;
                    x1=w/2
                    y1=h/2
                    cx=x+x1
                    cy=y+y1
                    a.append([cx,cy])
                    print(len(a))



                   # compute the (x, y)-coordinates of the bounding box
				# for the object
				box = detections[0, 0, i, 3:7] * np.array([W, H, W, H])
				(startX, startY, endX, endY) = box.astype("int")

				# construct a dlib rectangle object from the bounding
				# box coordinates and then start the dlib correlation
				# tracker
				tracker = dlib.correlation_tracker()
				rect = dlib.rectangle(startX, startY, endX, endY)
				tracker.start_track(rgb, rect)

				# add the tracker to our list of trackers so we can
				# utilize it during skip frames
				trackers.append(tracker)

					# construct a tuple of information we will be displaying on the frame
	                       info = [("Students", number)]


                    */

}