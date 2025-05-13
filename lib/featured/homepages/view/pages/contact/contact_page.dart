// import 'package:flutter/material.dart';
// import 'package:photoprofile/featured/homepages/view/widgets/contact/contact_form.dart';
// import 'package:photoprofile/featured/homepages/view/widgets/contact/contact_info.dart';
// // import '../widgets/contact_info.dart';
// // import '../widgets/contact_form.dart';

// class ContactPage extends StatelessWidget {
//   const ContactPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Padding(
//         padding: const EdgeInsets.all(30),
//         child: SingleChildScrollView(
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Expanded(flex: 2, child: ContactInfo()),
//               SizedBox(width: 40),
//               Expanded(flex: 3, child: ContactForm()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:photoprofile/featured/homepages/view/widgets/contact/contact_form.dart';
import 'package:photoprofile/featured/homepages/view/widgets/contact/contact_info.dart';
// import 'contact_form.dart';
// import 'contact_info.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return constraints.maxWidth > 600
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Expanded(flex: 2, child: ContactInfo()),
                    SizedBox(width: 40),
                    Expanded(flex: 3, child: ContactForm()),
                  ],
                )
              : Column(
                  children: const [
                    ContactInfo(),
                    SizedBox(height: 20),
                    ContactForm(),
                  ],
                );
        },
      ),
    );
  }
}
