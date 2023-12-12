import 'package:project1/AgeResult.dart';
import 'package:flutter/material.dart';

class AgeMain extends StatefulWidget {
  const AgeMain({super.key});

  @override
  State<AgeMain> createState() => _AgeMainState();
}


class _AgeMainState extends State<AgeMain> {
  int _selectedIndex = 0; // Track selected tab index
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  void dispose(){
    _nameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('나이 계산기'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child:  Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '생년 월 일'
                ),
                keyboardType: TextInputType.number,
                controller: _nameController,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '생년 월 일을 입력 하세요!';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '만 나이'
                ),
                keyboardType: TextInputType.number,
                controller: _ageController,
                validator: (value){
                  if(value!.trim().isEmpty){
                    return '만 나이를 입력하세요!';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AgeResult(
                              name: double.parse(_nameController.text.trim()),
                              age: double.parse(_ageController.text.trim()),
                            ),
                          ),
                        );
                      }
                    },
                    child: Text('결과')

                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightBlue,
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
            // Implement logic to switch tabs based on index if needed
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Information',
          ),
        ],
      ),
    );
  }
}