/*
  ELEVATED - TEXT - OUTLINE / THEME

FLUTTER 2.0 SÜRÜMÜ İLE YENİLENEN BUTONLAR.

Hepsinin Renk olarak örnekleri ve tıklanma olayları yapıldı.

Disable için onPress kısmına onPress: null yapmak yeterli.

Sayfa Yönlendirmesi için:
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
  );

Sayfa geri butonu olmadan önceki sayfa için:
  Navigator.pop(context);

 */
import 'package:flutter/material.dart';
import 'ui/historyView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      color: Colors.amber,
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              //-----------ELEVATED BUTTON---------------//
              ElevatedButton(
                child: const Text("ElevatedButton"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
              ),
              //-----------ELEVATED BUTTON---------------//
              //-----------TEXT BUTTON-------------------//
              TextButton(
                  child: const Text('TextButton'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }),
              //-----------TEXT BUTTON-------------------//
              //-----------OUTLINE BUTTON----------------//
              OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text('OutlineButton')),
              //-----------OUTLINE BUTTON----------------//
              //-----------ELEVATED BUTTON THEME---------//
              ElevatedButtonTheme(
                data: ElevatedButtonThemeData(
                  style: ButtonStyle(
                    side: MaterialStateProperty.resolveWith<BorderSide>(
                        (states) => const BorderSide(color: Colors.black)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) => Colors.amber),
                    shape:
                        MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                      return RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20));
                    }),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => const TextStyle(color: Colors.red)),
                  ),
                ),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: const Text('ElavatedButtonTheme')),
              ),
              //-----------ELEVATED BUTTON THEME---------//
              //-----------TEXT BUTTON THEME-------------//
              TextButtonTheme(
                data: TextButtonThemeData(
                  style: ButtonStyle(
                    side: MaterialStateProperty.resolveWith<BorderSide>(
                        (states) => const BorderSide(color: Colors.black)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) => Colors.amber),
                    shape:
                        MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                      return RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20));
                    }),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => const TextStyle(color: Colors.red)),
                  ),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    child: const Text('TextButtonTheme')),
              ),
              //-----------TEXT BUTTON THEME-------------//
              //-----------OUTLINE BUTTON THEME-------------//
              OutlinedButtonTheme(
                data: OutlinedButtonThemeData(
                  style: ButtonStyle(
                    side: MaterialStateProperty.resolveWith<BorderSide>(
                        (states) => const BorderSide(color: Colors.black)),
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (states) => Colors.amber),
                    shape:
                        MaterialStateProperty.resolveWith<OutlinedBorder>((_) {
                      return RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20));
                    }),
                    textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                        (states) => const TextStyle(color: Colors.red)),
                  ),
                ),
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text('OutlineButtonTheme'),
                ),
              ),
              //-----------OUTLINE BUTTON THEME-------------//
            ],
          ),
        ));
  }
}
