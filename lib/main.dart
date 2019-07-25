import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  ScrollController _controller = new ScrollController();
  bool escodeValores = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [Colors.blue[900], Colors.blue[900], Colors.blue[900]],
            ),
          ),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            controller: _controller,
            children: <Widget>[
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(1, 71, 166, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: new Stack(
                        alignment: Alignment.bottomRight,
                        children: <Widget>[
                          new Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage(
                                      "https://avatars2.githubusercontent.com/u/24703194?s=400&u=84672ff37d2a5181047f82a157e2d8a5761bcd6a&v=4")),
                            ),
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                          ),
                          // Positioned(
                          //   right: 25.0,
                          //   child: CircleAvatar(
                          //     backgroundColor: Colors.orangeAccent,
                          //     radius: 12.0,
                          //     child: new Icon(
                          //       Icons.add,
                          //       size: 14.0,
                          //       color: Colors.white,
                          //     ),
                          //   ),
                          // )
                        ],
                      ),
                      title: Text(
                        'meu neon',
                        style: const TextStyle(
                            fontFamily: 'Arial',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 117, 213, 100)),
                child: SizedBox(
                    height: 90,
                    child: Center(
                      child: ListTile(
                        trailing: GestureDetector(
                          onTap: () => escondeValores(),
                          child: escodeValores == true
                              ? Text(
                                  "R\$ 1.500,00",
                                  style: TextStyle(
                                    fontFamily: "Arial",
                                    color: Colors.white,
                                    fontSize: 20,
                                  ),
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  size: 40,
                                  color: Colors.white,
                                ),
                        ),
                        title: Text(
                          'saldo',
                          style: const TextStyle(
                              fontFamily: 'Arial',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 168, 247, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: GestureDetector(
                        onTap: () => escondeValores(),
                        child: escodeValores == true
                            ? Text(
                                "R\$ 1.500,00",
                                style: TextStyle(
                                  fontFamily: "Arial",
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            : Icon(
                                Icons.visibility_off,
                                size: 40,
                                color: Colors.white,
                              ),
                      ),
                      //  leading: Icon(Icons.map),
                      title: Text(
                        'crédito',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 218, 217, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: GestureDetector(
                        onTap: () => escondeValores(),
                        child: escodeValores == true
                            ? Text(
                                "R\$ 1.500,00",
                                style: TextStyle(
                                  fontFamily: "Arial",
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              )
                            : Icon(
                                Icons.visibility_off,
                                size: 40,
                                color: Colors.white,
                              ),
                      ),
                      title: Text(
                        'investimento',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 163, 162, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.person,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        'indicações',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 131, 133, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.credit_card,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        'cartões',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 163, 162, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.monetization_on,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        'transferências',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 218, 217, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.border_horizontal,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        'pagamentos',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(0, 168, 247, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.phone_iphone,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        'recargas',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                decoration:
                    new BoxDecoration(color: Color.fromRGBO(1, 71, 166, 100)),
                child: SizedBox(
                  height: 90,
                  child: Center(
                    child: ListTile(
                      trailing: Icon(
                        Icons.attach_money,
                        size: 40,
                        color: Colors.white,
                      ),
                      title: Text(
                        'depósitos',
                        style: TextStyle(
                            fontFamily: "Arial",
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
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

  void escondeValores() {
    setState(() {
      escodeValores == true ? escodeValores = false : escodeValores = true;
    });
  }
}
