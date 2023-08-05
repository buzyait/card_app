import 'package:card_app/pages/my_home_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _nameCtl = TextEditingController();
  final _kesibiCtl = TextEditingController();
  final _phoneCtl = TextEditingController();
  final _gmailCtl = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: Color.fromARGB(255, 227, 227, 200),
    body:Form(
      key: _formKey ,
      child: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 180),
        child: Column(
          children: [
             TextFormField(
              controller: _nameCtl,
              decoration:const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Аты-жону',
              ),
               validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Сураныч аты-жонунузду жазыныз ...';
              }
              return null;
               },
            ),
            const SizedBox(height: 22),
             TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Кесиби',
              ),
               validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Сураныч кесибинизди жазыныз ...';
              }
              return null;
               },
            ),
            const SizedBox(height: 22),
             TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Телефон номер',
              ),
               validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Сураныч телефон номеринизди жазыныз ...';
              }
              return null;
               },
            ),
            const SizedBox(height:22),
             TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Gmail',
              ),
               validator: (value) {
    if (value == null || value.isEmpty) {
      return 'Сураныч Gmail почтанызды жазыныз ...';
              }
              return null;
               },
            ),
          const SizedBox(height: 32),
          
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
  
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:(context)  =>  MyHomePage(
                        name: _nameCtl.text,
                        kesibi: _kesibiCtl.text,
                        phone: _phoneCtl.text,
                        gmail: _gmailCtl.text,
                        ), 
                  
                  ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Сураныч бош калган жерлерди толтурунуз ...',
                    ),
                    ),
                    );
                }
                }, 
                child: const Text(
                  'Сактоо',
                style: TextStyle(fontSize: 18),
                 ),
              ),
            ),
          ],
        ),
      ),
    ),
    ),
   );
}
} 



