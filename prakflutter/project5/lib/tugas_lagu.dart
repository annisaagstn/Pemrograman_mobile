import 'package:flutter/material.dart';

void main() {
  runApp(AnnisaApp());
}

class AnnisaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Annisa App",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "If U Could See Me Cryin' In My Room",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Arial',
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.lightBlueAccent,
        ),

        backgroundColor: Colors.pink[100],
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Gambar
              Center(
                child: Image.asset(
                  "assets/images/arash.jpg",
                  height: 150,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20),

              // Teks lirik
              Text(
                """
Home by seein' you
Picturing where we'd end up to
I'm broke and hopeless too
Wishin' I could get back to you
I can't keep goin' on like this
Pretending that you're gone
Well, I don't know, 'cause all I know

I'll be here waiting you to come
And bring me right back home
I'm caught up with these memories
Just by sitting here alone
If only I could see where it all started, we'll be fine
It's clear where this is goin'
I'll keep missing you alone
If you could see me cryin' in my room

Hey, I missed you too
And just so you know, I still love you
And I don't even know if I'm alright
'Cause if I called we'd only end up in a fight
And I don't wanna keep on getting hurt
Still holding to your favorite little shirt

I'll be here waiting you to come
And bring me right back home
I'm caught up with these memories
Just by sitting here alone
If only I could see where it all started, we'll be fine
It's clear where this is goin'
I'll keep missing you alone
If you could see me cryin' in my room

And I don't know where to go
How can I be fine with being alone?
I'm just scared of losing you
I can't keep seeing you cryin' in your room
Yeah, I can't keep seeing you cryin' in your room

I'll be here waiting you to come
And bring me right back home
I'm caught up with these memories
Just by sitting here alone
If only I could see where it all started, we'll be fine
It's clear where this is goin'
I'll keep missing you alone
If you could see me cryin' in my room

If you could see me cryin' in my room
If you could see me cryin' in my room
If you could see me cryin' in my room
If you could see me cryin' in my room
""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontFamily: 'Arial',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
