import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:training_project/widgets/reusedComponents/sign_button.dart';
import 'package:flutter/src/widgets/container.dart';



void main(){
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home1(),
    );
  }
}

class Home1 extends StatefulWidget{
  @override
  _Home1State createState() => _Home1State();
}

class _Home1State extends State<Home1> {


  @override
  Widget build(BuildContext context) {
    final isAndoridsmall = MediaQuery.of(context).size.height > 780;

    return  Scaffold(

      body: SingleChildScrollView(
          padding: EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/image/first.png'),
              ),
              isAndoridsmall? SizedBox(
                height: 110,
              ): SizedBox(height:60),
              Positioned(

                child: Text(
                  "Enter Your Personal Information 1-2",

                  style: GoogleFonts.quicksand(
                      fontSize: 30, fontWeight: FontWeight.bold),

                ),
              ),

              const SizedBox(
                height: 20,
              ),

              TextFormField(
                style: TextStyle(fontSize: 15),
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Example@iau.edu.sa'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: '•••••••••••••••••••••'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                    hintText: '•••••••••••••••••••••'),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                alignment: FractionalOffset.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  MyApp2()),
                        );
                      },
                      child: Container(
                        width: 135,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF9DDAC),
                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 17
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),



            ],
          )
      ),
    );

  }
}
// --------------

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home2(),
    );
  }
}

class Home2 extends StatefulWidget{
  @override
  _Home2State createState() => _Home2State();
}

class _Home2State extends State<Home2> {


  @override
  Widget build(BuildContext context) {



    return  Scaffold(

      body: SingleChildScrollView(

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.close,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/image/Sec.png'),
              ),
              const SizedBox(
                height: 110,
              ),
              Positioned(

                child: Text(
                  "Enter Your Personal Information 2-2",

                  style: GoogleFonts.quicksand(
                      fontSize: 30, fontWeight: FontWeight.bold),

                ),
              ),

              const SizedBox(
                height: 20,
              ),

              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Ex. MohAlboqami'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'First Name',
                    hintText: 'Ex. Mohammed'),
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Last Name',
                    hintText: 'Ex. Albaqami'),
              ),


              const SizedBox(
                height: 10,
              ),

              Container(
                alignment: FractionalOffset.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 135,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFF199D8C),

                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: const Text(
                          'Back',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 17
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      width: 30,
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  MyApp3()),
                        );
                      },
                      child: Container(
                        width: 135,
                        height: 35,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xFFF9DDAC),

                        ),
                        padding: const EdgeInsets.all(8),
                        // Change button text when light changes state.
                        child: const Text(
                          'Next',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 17
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),



            ],
          )
      ),
    );

  }
}

// --------------------

class MyApp3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home3(),
    );
  }
}

class Home3 extends StatefulWidget{
  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {

  bool? check1 = false, check2 = false, check3 = false, check4 = false, isChecked = false;

  //true for checked checkbox, flase for unchecked one
  final bool enabled = false;
  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;



    return  Scaffold(

        body: SingleChildScrollView(



            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 60,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset('assets/image/Thi.png'),
                ),
                const SizedBox(
                  height: 110,
                ),
                Positioned(

                  child: Text(
                    "Choose Your Academic Major",
                    style: GoogleFonts.quicksand(
                        fontSize: 30, fontWeight: FontWeight.bold),

                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Color(0xFFA5D6A7),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: CheckboxListTile(//checkbox positioned at right
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),

                    value: check1,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = value;
                        check2 = false;
                        check3 = false;
                        check4 = false;
                      });
                    },
                    title: Text("CYS"),
                    activeColor: Colors.green[500],
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Container(

                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Color(0xFFA5D6A7),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: CheckboxListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),

                    value: check2,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = false;
                        check2 = value;
                        check3 = false;
                        check4 = false;
                      });
                    },
                    title: Text("AI"),
                    activeColor: Colors.green[500],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Color(0xFFA5D6A7),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: CheckboxListTile(
                    value: check3,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = false;
                        check2 = false;
                        check3 = value;
                        check4 = false;
                      });
                    },
                    title: Text("CIS"),
                    activeColor: Colors.green[500],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(

                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(
                        color: Color(0xFFA5D6A7),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(7))
                  ),
                  child: CheckboxListTile(
                    value: check4,
                    onChanged: (bool? value) {
                      setState(() {
                        check1 = false;
                        check2 = false;
                        check3 = false;
                        check4 = value;
                      });
                    },
                    title: Text("CS"),
                    activeColor: Colors.green[500],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),



                Container(
                  alignment: FractionalOffset.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 135,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFF199D8C),

                          ),
                          padding: const EdgeInsets.all(8),
                          // Change button text when light changes state.
                          child: const Text(
                            'Back',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 17
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(
                        width: 30,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  MyApp4()),
                          );
                        },
                        child: Container(
                          width: 135,
                          height: 35,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xFFF9DDAC),

                          ),
                          padding: const EdgeInsets.all(8),
                          // Change button text when light changes state.
                          child: const Text(
                            'Next',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                fontSize: 17
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),



              ],
            )
        )
    );
  }
}

// ----------------------------------


class MyApp4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home4(),
    );
  }
}

class Home4 extends StatefulWidget{
  @override
  _Home4State createState() => _Home4State();
}

class _Home4State extends State<Home4> {



  @override
  Widget build(BuildContext context) {


    return  Scaffold(
      backgroundColor: Color(0xFFF9DDAC),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(
                  top: 160,
                  left: 60,
                  right: 60,
                  bottom: 20,
                ),
              ),


              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    )
                ),
                child: Column(
                  children: <Widget>[


                    Container(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.notifications,
                                size: 30,
                              ),
                            ),),

                          Container(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.person_rounded,
                                size: 60,
                              ),
                            ),),

                          Container(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.power_settings_new_sharp,
                                size: 30,
                              ),
                            ),),

                        ],
                      ),
                    ),



                    Container(
                      alignment: Alignment.center,
                      child: Column (
                        children: const <Widget>[

                          Text("Ali Mohammed", style: TextStyle(color: Colors.black, fontSize: 14)),

                          Text("@AliMoh", style: TextStyle(color: Colors.black, fontSize: 12)),

                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 130,
                    ),

                    Container(
                      alignment: Alignment.center,
                      child: Column (
                        children: <Widget>[
                          GestureDetector(
                            onTap: (){
                              print("View Posts");
                            },
                            child: Container(
                              width: 220,
                              height: 115,
                              decoration: const BoxDecoration(
                                color: const Color(0xFFF9DDAC),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30.0)),
                              ),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.video_collection,
                                    size: 50,
                                  ),
                                  Text("View Posts", style: TextStyle(color: Colors.black, fontSize: 16)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),


                          const SizedBox(
                            height: 40,
                          ),


                          GestureDetector(
                            onTap: (){
                              print("Edit Profile");
                            },
                            //alignment: Alignment.center,
                            child: Container(
                              width: 220,
                              height: 115,
                              decoration: const BoxDecoration(
                                color: const Color(0xFFF9DDAC),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30.0)),
                              ),
                              child: Column(
                                children: const [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Icon(
                                    Icons.person_outline,
                                    size: 50,
                                  ),
                                  Text("Edit Profile", style: TextStyle(color: Colors.black, fontSize: 16)),
                                  SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
    );

  }
}