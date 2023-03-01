import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.black54,
          leading: const Icon(
              Icons.arrow_back,
              color: Colors.black,
          ),
          titleTextStyle: const TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          title: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'John Doe',
                      style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 3,),
                  Text(
                    'Online',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Expanded(child: Container()),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                ),
              IconButton(
                onPressed: (){},
                icon: const Icon(
                  Icons.videocam_rounded,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Expanded(child: ListView.builder(
                itemBuilder: (_,idx) {
                  if (idx % 3 == 0) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          "12:30pm",
                          style: TextStyle(
                            fontSize: 16,
                             color: Colors.black45,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.all(8),
                          constraints: const BoxConstraints(
                            maxWidth: 200,
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30)
                            )
                          ),
                          child: const Text(
                              "Hello, I am John Doe",
                              style: TextStyle(
                                fontSize: 16,
                                 fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                          ),
                        )
                      ],
                    );
                  }
                   return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1502164980785-f8aa41d53611?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        margin: const EdgeInsets.all(8),
                        constraints: const BoxConstraints(
                          maxWidth: 200,
                        ),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)
                            )
                        ),
                        child: const Text(
                          "Hello, I am Jack Doe",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  );
            })
            ),
            Container(
               margin: const EdgeInsets.only(
                 bottom: 10,
               ),
              child: Row(
                children: [
                  Expanded(
                      child: Card(
                        elevation: 4,
                        margin: const EdgeInsets.only(
                          right: 14,
                          left: 14,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Type a message",
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                              prefixIcon: const Icon(
                               Icons.face,
                              color:Colors.black
                            ),
                              suffixIcon: SizedBox(
                                width: 85,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.camera_alt,
                                      color:Colors.black,
                                    ),
                                    SizedBox(
                                      width: 15,
                                    )
                                  ],
                                ),
                              ),
                          ),
                        ),
                      )
                  ),
                  FloatingActionButton(
                      backgroundColor: Colors.lightBlue,
                      onPressed: () {},
                      child: const Icon(
                        Icons.send,
                      ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
