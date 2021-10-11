import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task {
  Icon? iconData = Icon(Icons.person);
  String? title;
  String? location;
  String? status;
  String? price;

  Task({
    this.iconData,
    this.title,
    this.location,
    this.status,
    this.price,
  });

  Task copyWith({
    Icon? icon,
    String? title,
    String? location,
    String? status,
    String? price,
  }) {
    return Task(
      iconData: icon ?? this.iconData,
      title: title ?? this.title,
      location: location ?? this.location,
      status: status ?? this.status,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      //'icon': icon?.toMap(),
      'title': title,
      'location': location,
      'status': status,
      'price': price,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      //icon: Icon.fromMap(map['icon']),
      title: map['title'],
      location: map['location'],
      status: map['status'],
      price: map['price'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) => Task.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Task(icon: $iconData, title: $title, location: $location, status: $status, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Task &&
      other.iconData== iconData &&
      other.title == title &&
      other.location == location &&
      other.status == status &&
      other.price == price;
  }

  @override
  int get hashCode {
    return iconData.hashCode ^
      title.hashCode ^
      location.hashCode ^
      status.hashCode ^
      price.hashCode;
  }
}
