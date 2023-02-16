// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// Activity obj = Activity(activity: "activity", type: "type", participants: "participants", price: "price", link: "link", key: "key", accessibility: "accessibility");

class Activity {
  final String activity;
  final String type;
  final String link;
  final String key;
  Activity({
    required this.activity,
    required this.type,
    required this.link,
    required this.key,
  });

  Activity copyWith({
    String? activity,
    String? type,
    String? link,
    String? key,
  }) {
    return Activity(
      activity: activity ?? this.activity,
      type: type ?? this.type,
      link: link ?? this.link,
      key: key ?? this.key,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': activity,
      'type': type,
      'link': link,
      'key': key,
    };
  }

  factory Activity.fromMap(Map<String, dynamic> map) {
    return Activity(
      activity: map['activity'] as String,
      type: map['type'] as String,
      link: map['link'] as String,
      key: map['key'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Activity.fromJson(String source) =>
      Activity.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Activity(activity: $activity, type: $type, link: $link, key: $key)';
  }

  @override
  bool operator ==(covariant Activity other) {
    if (identical(this, other)) return true;

    return other.activity == activity &&
        other.type == type &&
        other.link == link &&
        other.key == key;
  }

  @override
  int get hashCode {
    return activity.hashCode ^ type.hashCode ^ link.hashCode ^ key.hashCode;
  }
}
