import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              'https://www.nsbpictures.com/wp-content/uploads/2019/11/logo-icon-png-8.png',
              height: 120,
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              bottom: 10,
            ),
            child: Row(
              children: [
                Text(
                  textAlign: TextAlign.start,
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.pink,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Email',
                prefixIcon: Icon(
                  Icons.email,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                prefixIcon: Icon(
                  Icons.password_outlined,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              Text(
                isChecked ? 'Checked' : 'Unchecked',
                style: TextStyle(fontSize: 18.0),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15,
                ),
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Colors.pink,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
              left: 40,
              right: 40,
              top: 40,
            ),
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.pink, borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Login with '),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  height: 40,
                  'https://w7.pngwing.com/pngs/882/225/png-transparent-google-logo-google-logo-google-search-icon-google-text-logo-business-thumbnail.png',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  height: 40,
                  'https://img.freepik.com/premium-vector/art-illustration_929495-41.jpg',
                ),
              ),
              SizedBox(
                width: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                  height: 40,
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrTeNti2l_ffxjiadbeo79lVnOqT4NQGzDog&s',
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have account?  "),
              TextButton(onPressed: () {}, child: Text('Sign up'))
            ],
          )
        ],
      ),
    );
  }
}
