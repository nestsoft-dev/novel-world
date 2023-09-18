// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SavedBook {
  String title;
  String description;
  String imageUrl;
  String previewPDF;
  String downloadPDF;
  String date;
  SavedBook({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.previewPDF,
    required this.downloadPDF,
    required this.date,
  });
 

  SavedBook copyWith({
    String? title,
    String? description,
    String? imageUrl,
    String? previewPDF,
    String? downloadPDF,
    String? date,
  }) {
    return SavedBook(
      title: title ?? this.title,
      description: description ?? this.description,
      imageUrl: imageUrl ?? this.imageUrl,
      previewPDF: previewPDF ?? this.previewPDF,
      downloadPDF: downloadPDF ?? this.downloadPDF,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'imageUrl': imageUrl,
      'previewPDF': previewPDF,
      'downloadPDF': downloadPDF,
      'date': date,
    };
  }

  factory SavedBook.fromMap(Map<String, dynamic> map) {
    return SavedBook(
      title: map['title'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
      previewPDF: map['previewPDF'] as String,
      downloadPDF: map['downloadPDF'] as String,
      date: map['date'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SavedBook.fromJson(String source) => SavedBook.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SavedBook(title: $title, description: $description, imageUrl: $imageUrl, previewPDF: $previewPDF, downloadPDF: $downloadPDF, date: $date)';
  }

  @override
  bool operator ==(covariant SavedBook other) {
    if (identical(this, other)) return true;
  
    return 
      other.title == title &&
      other.description == description &&
      other.imageUrl == imageUrl &&
      other.previewPDF == previewPDF &&
      other.downloadPDF == downloadPDF &&
      other.date == date;
  }

  @override
  int get hashCode {
    return title.hashCode ^
      description.hashCode ^
      imageUrl.hashCode ^
      previewPDF.hashCode ^
      downloadPDF.hashCode ^
      date.hashCode;
  }
}
