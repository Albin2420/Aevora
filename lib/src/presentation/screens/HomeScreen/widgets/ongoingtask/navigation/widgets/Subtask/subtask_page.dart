
import 'package:aevora/src/presentation/screens/HomeScreen/widgets/ongoingtask/navigation/widgets/Subtask/widgets/subtasks_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../ongoingtask_viewpage.dart';

class SubtaskPage extends StatelessWidget {
  const SubtaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          "Subtask",
          style: GoogleFonts.zenDots(
            color: const Color(0xFF6D84DF),
            fontSize: screenWidth * 0.05,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Create Subtask",
                      style: GoogleFonts.zenDots(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      width: 93,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.add, color: Colors.black, size: 26),
                    ),
                  ],
                ),
              ),
              /// SUBTASK TITLE
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25, bottom: 10),
                child: Text(
                  "Subtask Title",
                  style: GoogleFonts.zenDots(
                    color: const Color(0xFF6D84DF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Enter subtask title...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              /// DESCRIPTION
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25, bottom: 10),
                child: Text(
                  "Description",
                  style: GoogleFonts.zenDots(
                    color: const Color(0xFF6D84DF),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextField(
                  maxLines: 4,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: "Enter description...",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),

              /// ACTION BUTTONS (Green + Red)
              Padding(
                padding:
                const EdgeInsets.only(left: 30, right: 30, top: 25, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Green + Button
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.add_box_outlined, color: Colors.white, size: 28),
                    ),
                    SizedBox(width: 16,),
                    // Red Trash Button
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child:
                      const Icon(Icons.delete, color: Colors.white, size: 26),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 25, bottom: 10),
                child: Text(
                  "Subtasks",
                  style: GoogleFonts.zenDots(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListView.separated(
                shrinkWrap: true, // Important if inside a Column
                physics: const NeverScrollableScrollPhysics(), // Disable scrolling if inside a Column
                itemCount: 3,
                separatorBuilder: (context, index) => const SizedBox(height: 5),
                itemBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.symmetric(vertical: 2),
                  child: SubtasksViewWidget(),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.fromLTRB(20, 10, 20, 30),
      //   child: Row(
      //     children:  [
      //       SubmitButton(
      //         text: "Submit",
      //         onPressed: () {
      //           Navigator.push(context,  MaterialPageRoute(builder: (_) => TaskcompletionPage()));
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
