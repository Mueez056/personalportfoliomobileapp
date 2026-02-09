import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myhomepage(),
    );
  }
}
class myhomepage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => myhomestate();
}
class myhomestate extends State<myhomepage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          width: MediaQuery.of(context).size.width*0.80,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.25,
                    color: Colors.orangeAccent.shade400,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.orangeAccent.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      height: MediaQuery.of(context).size.height*0.035,
                      width: MediaQuery.of(context).size.width*0.20,
                      margin: const EdgeInsets.only(top: 50,left: 25),
                      child: Center(child: Text('2025',style: TextStyle(fontFamily: 'FontsMains'),))),
                  Container(
                    margin: const EdgeInsets.only(top: 100,left: 25),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/mueezpic-Photoroom (2).png'),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 115,left: 105),
                      child: Text('Mueez khan',style: TextStyle(fontFamily: 'FontsMains',fontSize: 17),)
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 140,left: 105),
                      child: Text('COMSATS University Islamabad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),)),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*0.75,
                    color: Colors.white,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(top: 25,right: 119),
                              child: TextButton.icon(
                                label: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('About me',style: TextStyle(fontFamily: 'FontsMains',color: Colors.black),)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>aboutme())
                                  );
                                },
                                icon: Icon(
                                  size: 25,
                                  Icons.person,
                                  color:Colors.orange.shade400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 153),
                              child: TextButton.icon(
                                label: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Skills',style: TextStyle(fontFamily: 'FontsMains',color: Colors.black),)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>skills())
                                  );
                                },
                                icon: Icon(
                                  size: 25,
                                  Icons.settings_applications,
                                  color:Colors.orange.shade400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 3,right: 120),
                              child: TextButton.icon(
                                label: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Education',style: TextStyle(fontFamily: 'FontsMains',color: Colors.black),)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Education())
                                  );
                                },
                                icon: Icon(
                                  size: 25,
                                  Icons.school_outlined,
                                  color:Colors.orange.shade400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 130),
                              child: TextButton.icon(
                                label: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Projects',style: TextStyle(fontFamily: 'FontsMains',color: Colors.black),)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Projects())
                                  );
                                },
                                icon: Icon(
                                  size: 25,
                                  Icons.developer_mode,
                                  color:Colors.orange.shade400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 130),
                              child: TextButton.icon(
                                label: Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: Text('Contact',style: TextStyle(fontFamily: 'FontsMains',color: Colors.black),)),
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Contact())
                                  );
                                },
                                icon: Icon(
                                  size: 25,
                                  Icons.phone,
                                  color:Colors.orange.shade400,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.orangeAccent.shade400,
        appBar: AppBar(
          title: Container(
              margin: const EdgeInsets.only(right: 55),
              child: Center(child: Text('P O R T F O L I O',style: TextStyle(fontFamily: 'FontsMains',color: Colors.black),))
          ),
          backgroundColor: Colors.orangeAccent.shade400,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height *0.40,
                    width: MediaQuery.of(context).size.width *0.90,
                    color: Colors.orangeAccent.shade400
                ),
                Container(
                    margin:  EdgeInsets.only(
                      left: MediaQuery.of(context).size.width *0.05,
                    ),
                    height: MediaQuery.of(context).size.height *0.40,
                    width: MediaQuery.of(context).size.width *0.90,
                    child: Image.asset('assets/images/mueezpic-Photoroom (1).png')
                ),
              ],
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50)),
                    ),
                  ),
                  Container(
                      margin:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *0.19,
                        top: MediaQuery.of(context).size.height*0.015,
                      ),
                      child: Text('Welcome to my Portfolio',style: TextStyle(fontFamily: 'FontsMains',fontSize: 18),)
                  ),
                  Container(
                      margin:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *0.35,
                        top: MediaQuery.of(context).size.height*0.095,
                      ),
                      child: Text("Hi I'm",style: TextStyle(fontFamily: 'FontsMains',fontSize: MediaQuery.of(context).size.height*0.05),)
                  ),
                  Container(
                      margin:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *0.18,
                        top: MediaQuery.of(context).size.height*0.16,
                      ),
                      child: Text('Mueez khan.',style: TextStyle(fontFamily: 'FontsMains',fontSize: MediaQuery.of(context).size.height*0.05,color: Colors.orange.shade400),)
                  ),
                  Container(
                      margin:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *0.25,
                        top: MediaQuery.of(context).size.height*0.23,
                      ),
                      child: Text('Fullstack',style: TextStyle(fontFamily: 'FontsMains',fontSize: MediaQuery.of(context).size.height*0.05),)
                  ),
                  Container(
                      margin:  EdgeInsets.only(
                        left: MediaQuery.of(context).size.width *0.23,
                        top: MediaQuery.of(context).size.height*0.30,
                      ),
                      child: Text('developer',style: TextStyle(fontFamily: 'FontsMains',fontSize: MediaQuery.of(context).size.height*0.05),)
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
class aboutme extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => aboutmestate();
}
class aboutmestate extends State<aboutme>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: Container(
          margin: const EdgeInsets.only(right: 50),
          child: Center(child: Text('About me',style: TextStyle(fontFamily: 'FontsMains'),)
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height*0.90,
        decoration: BoxDecoration(
            color: Colors.orangeAccent.shade400
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.justify,
            'I am a Software Engineer with experience in building '
                'mobile applications using Flutter (Dart) and Java. '
                'I specialize in creating responsive, cross-platform apps '
                'that deliver smooth user experiences. With a strong '
                'focus on clean, efficient code, I develop both mobile '
                'applications and backend systems, '
                'leveraging databases like MySQL and Firebase.',style: TextStyle(fontSize: 20,fontFamily: 'MainFont'),),
        ),
      ),
    );
  }
}
class skills extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => skillsstate();
}
class skillsstate extends State<skills>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: Container(
          margin: const EdgeInsets.only(right: 60),
          child: Center(child: Text('Skills',style: TextStyle(fontFamily: 'FontsMains'),)
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width*0.99,
        height: MediaQuery.of(context).size.height*0.90,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.justify,
            'I am skilled in programming '
                'languages like C, Python, and '
                'Java, enabling me to build '
                'efficient software solutions. I specialize in Flutter and Dart '
                'for creating high-performance, cross-platform mobile apps. '
                'Additionally, I have experience in web development with '
                'HTML, CSS, and JavaScript, and I’m proficient in databases '
                'like MySQL and Firebase for data management and real-time services.',style: TextStyle(fontSize: 20,fontFamily: 'MainFont'),),
        ),
      ),
    );
  }
}
class Education extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Educationstate();
}
class Educationstate extends State<Education>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: Container(
          margin: const EdgeInsets.only(right: 60),
          child: Center(child: Text('Education',style: TextStyle(fontFamily: 'FontsMains'),)
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width*0.99,
        height: MediaQuery.of(context).size.height*0.90,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            textAlign: TextAlign.justify,
            'I am currently pursuing a degree in Software Engineering at '
                'COMSATS University Islamabad, Abbottabad Campus, where I am building a strong foundation '
                'in computer science, algorithms, and software development '
                'principles. My focus areas include mobile app development '
                'using Flutter and databases like MySQL and Firebase, '
                'which I’ve applied in various projects, internships, and coursework.',style: TextStyle(fontSize: 20,fontFamily: 'MainFont'),),
        ),
      ),
    );
  }
}
class Projects extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Projectsstate();
}

class Projectsstate extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent.shade400,
        title: Container(
          margin: const EdgeInsets.only(right: 60),
          child: Center(
            child: Text(
              'My Projects',
              style: TextStyle(fontFamily: 'FontsMains'),
            ),
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width * 0.99,
        height: MediaQuery.of(context).size.height * 0.90,
        decoration: BoxDecoration(
          color: Colors.orangeAccent.shade400,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(
              style: TextStyle(fontSize: 20, fontFamily: 'MainFont', color: Colors.black),
              children: [
                TextSpan(
                  text: "I have developed a personal portfolio website using "
                      "HTML and CSS, to showcase "
                      "my skills, projects, and experience. The portfolio "
                      "includes sections like Home, About Me, Services, Work, "
                      "and Contact, providing a professional yet personalized "
                      "presentation of my work.\nYou can check out the live version of my personal portfolio here: ",
                ),
                TextSpan(
                  text: "https://mueez056.github.io/portfoliowebsite/",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      _launchURL(); // Function to launch the URL
                    },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  // Function to launch the URL
  _launchURL() async {
    const url = 'https://mueez056.github.io/portfoliowebsite/';
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: false, forceWebView: false); // Opening URL in the browser
    } else {
      throw 'Could not launch $url';
    }
  }
}
class Contact extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Contactstate();
}
class Contactstate extends State<Contact>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent.shade400,
          title: Container(
            margin: const EdgeInsets.only(right: 60),
            child: Center(child: Text('Get In Touch',style: TextStyle(fontFamily: 'FontsMains'),)
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width*0.99,
          height: MediaQuery.of(context).size.height*0.90,
          decoration: BoxDecoration(
            color: Colors.orangeAccent.shade400,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.justify,
              'Feel free to reach out to me for collaborations, '
                  'job opportunities, or any inquiries. You '
                  'can contact me through the following channels: \n '
                  'Phone: 0342-6090401 \n '
                  'Email: mueezk056@gmail.com \n '
              ,style: TextStyle(fontFamily: 'MainFont',fontSize: 20),
            ),
          ),
        )
    );
  }
}