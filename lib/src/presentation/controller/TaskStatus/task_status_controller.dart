import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskStatusController extends GetxController {
  // Observable variables for task status
  var statusText = ''.obs;
  var statusColor = Colors.transparent.obs;

  // Method to update task status
  void updateTaskStatus(String text, Color color) {
    statusText.value = text;
    statusColor.value = color;
  }

  // Method to get status details based on status type
  Map<String, dynamic> getStatusDetails(String statusType) {
    switch (statusType.toLowerCase()) {
      case 'approved':
        return {'text': 'Work Approved', 'color': Colors.green};
      case 'not viewed':
        return {
          'text': 'Not Viewed by Team Leader',
          'color': const Color(0xFF7198F1),
        };
      case 'rework':
        return {'text': 'Rework Required', 'color': Colors.red};
      default:
        return {'text': 'Status Unknown', 'color': Colors.grey};
    }
  }
}
