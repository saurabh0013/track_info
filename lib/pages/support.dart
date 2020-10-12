import 'package:flutter/material.dart';
import 'package:track_info/animations/FadeAnimation.dart';
import 'package:url_launcher/url_launcher.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber[600],
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeAnimation(
                            0.2,
                            Icon(
                              Icons.location_on,
                              size: 150,
                              color: Colors.white,
                            )),
                      ],
                    ),
                    FadeAnimation(
                      0.3,
                      Text("Support",
                          style: TextStyle(
                              fontSize: 60,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
                child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
              child: FadeAnimation(
                1.2,
                Column(
                  children: [
                    Container(
                        child: Text('Having trouble using the app?',
                            style: TextStyle(
                                fontSize: 21,
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold))),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(
                            'No need to worry at all ! We are here to help you.\nKindly Contact us on the given contact number or write us your problem by tapping the Need Help? button below. We will try our best to solve your problems as soon as possible\n\nWe request you to share your user experience with us so that we can improve ourselves and provide you better service. Tap the feedback button to send us your feedback. ',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.w400))),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey[400],
                                blurRadius: 10.0,
                                offset: Offset(6, 7))
                          ]),
                      child: Column(children: [
                        Text(
                          'TrackInfo Customer Support',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 20),
                        Row(children: [
                          Icon(
                            Icons.phone,
                            size: 20,
                          ),
                          SizedBox(width: 20),
                          Text('Hellpline number : 986376879',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500))
                        ]),
                        SizedBox(height: 10),
                        Row(children: [
                          Icon(
                            Icons.email,
                            size: 20,
                          ),
                          SizedBox(width: 20),
                          Text('Email : help.trackinfoapp@gmail.com',
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500)),
                        ]),
                        SizedBox(height: 10),
                      ]),
                    ),
                    SizedBox(height: 10),
                    Icon(Icons.keyboard_arrow_down),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            RaisedButton.icon(
                                onPressed: _complaint,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.red,
                                label: Text('Need Help?      ',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                icon: Icon(Icons.question_answer,
                                    color: Colors.white)),
                            SizedBox(
                              height: 5,
                            ),
                            RaisedButton.icon(
                                onPressed: _feedback,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: Colors.blue,
                                label: Text('Give Feedback!',
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                icon: Icon(Icons.library_books,
                                    color: Colors.white)),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

void _complaint() async {
  const mailUrl =
      'mailto:help.trackinfoapp@gmail.com?subject= I Need help with Trackinfo App&body=';
  try {
    await launch(mailUrl);
  } catch (e) {
    print('Could not launch url');
  }
}

void _feedback() async {
  const mailUrl =
      'mailto:help.trackinfoapp@gmail.com?subject=Feedback regarding TrackInfo App&body=';
  try {
    await launch(mailUrl);
  } catch (e) {
    print('Could not launch url');
  }
}