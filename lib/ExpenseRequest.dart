import 'package:circleshr/ExpenseRequest.dart';
import 'package:circleshr/satefulw.dart';
import 'package:flutter/material.dart';
class ExpenseRequest extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFEEEEEE),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical:16 ),
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height/4.5,
                   // width: 320,
                   // height: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Text('رقم طلب المصروف',style: TextStyle(fontSize: 25,color: Colors.grey),),
                        Text('  تلقائي',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        Text('تاريخ طلب المصروف',style: TextStyle(fontSize: 25,color: Colors.grey),),
                        Container(
                          // width: 300,
                           height: 50,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text('05:33 pm',
                                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              ),
                              SizedBox(width: 100,),
                              Text('5/1/2024',
                                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                            ],
                          ),

                        )
                      ],
                    ),

                  ),
                ),

              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  //width: MediaQuery.of(context).size.width/1.5,
                  //height: MediaQuery.of(context).size.height/1.7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Center(child:
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text('اضافة مصروف جديد',
                          style: TextStyle(fontSize: 25),),
                      )),
                      Padding(
                        padding: const EdgeInsets.only(left: 200),
                        child: Text('اسم الموظف',
                          style: TextStyle(fontSize: 25,color: Colors.grey),),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: MyDropdownButton(),

                      ),
                      Padding(
                         padding: const EdgeInsets.only(left: 200),
                         child: Text('نوع المصروف',
                          style: TextStyle(fontSize: 25,color: Colors.grey),),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 10,right: 10),
                         child: Container(

                           // width: 300,
                           // height: 60,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(16),
                             border: Border.all()

                         ),
                           child: TextFormField(

                            decoration: InputDecoration(
                                hintText: 'نفقات',
                             //   border: OutlineInputBorder()
                             ),

                      ),
                         ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Text('قيمة المصروف',
                          style: TextStyle(fontSize: 25,color: Colors.grey),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Container(

                          // width: 300,
                          // height: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all()

                          ),
                          child: TextFormField(


                            decoration: InputDecoration(
                              hintText: 'ادخل قيمة المصروف',
                              //   border: OutlineInputBorder()
                            ),

                          ),
                        ),
                      ),
                      Text(' ملاحظات',
                        style: TextStyle(fontSize: 25,color: Colors.grey),),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Container(

                          // width: 300,
                          // height: 60,
                          decoration: BoxDecoration(
                              color: Color(0xFFEEEEEE),
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                color: Color(0xFFEEEEEE)
                              )

                          ),
                          child: TextFormField(

                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: 'ملاحظات',
                              //   border: OutlineInputBorder()
                            ),

                          ),
                        ),

                      ),
                    ],

                  ),



                ),

              ),
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width/1.2,
                height: MediaQuery.of(context).size.height/3.2,
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(16)
                ),
                child: MessageScreen(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MessageScreen extends StatefulWidget {
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  List<String> messages = [];

  void addMessage() {
    setState(() {
      messages.add('New message ${messages.length + 1}');
    });
  }

  void removeMessage(int index) {
    setState(() {
      messages.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFF795C)),
              ),
              onPressed: addMessage,
              child: Center(
                child: Text('اضافه' ,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(messages[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => removeMessage(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

