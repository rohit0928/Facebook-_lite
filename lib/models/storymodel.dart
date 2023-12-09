import 'package:flutter/material.dart';

class StoryModel {
  final VoidCallback onTap;
  final String image;
  final String userName;
  StoryModel({
    required this.onTap,
    required this.image,
    required this.userName,
  });
}

List<StoryModel> storyData = [
  StoryModel(
      onTap: () => {print("Priti story was clicked")},
      image: "images/story/s1.jpg",
      userName: "Priti"),
  StoryModel(
      onTap: () => {print("Sonali story was clicked")},
      image: "images/story/s2.jpg",
      userName: "Sonali"),
  StoryModel(
      onTap: () => {print("Sejal story was clicked")},
      image: "images/story/s3.jpg",
      userName: "Sejal"),
  StoryModel(
      onTap: () => {print("Jack story was clicked")},
      image: "images/story/s4.jpg",
      userName: "Jack"),
  StoryModel(
      onTap: () => {print("Pragati story was clicked")},
      image: "images/story/s5.jpg",
      userName: "Pragati"),
];
