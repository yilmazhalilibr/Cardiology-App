import 'package:flutter/material.dart';

int puan = 0;
int yas = 0;
int deger2 = 0;
int deger3 = 0;
int deger4 = 0;
int deger5 = 0;
int deger6 = 0;
int deger7 = 0;

bool soru2 = false;
bool soru21 = false;
bool soru3 = false;
bool soru31 = false;
bool soru4 = false;
bool soru41 = false;
bool soru5 = false;
bool soru51 = false;
bool soru6 = false;
bool soru61 = false;
bool soru7 = false;
bool soru71 = false;
Color icon2 = Colors.transparent;
Color icon21 = Colors.transparent;
Color icon3 = Colors.transparent;
Color icon31 = Colors.transparent;
Color icon4 = Colors.transparent;
Color icon41 = Colors.transparent;
Color icon5 = Colors.transparent;
Color icon51 = Colors.transparent;
Color icon6 = Colors.transparent;
Color icon61 = Colors.transparent;
Color icon7 = Colors.transparent;
Color icon71 = Colors.transparent;

List<String> AciklamaX = [
  "EDACS Puanına göre düşük risk. Hastada ayrıca:  \n(1) yeni iskemik değişiklikler olmaksızın EKG ve \n(2) negatif başlangıç ve 2 saatlik troponinler varsa, bu hasta erken ayaktan takip araştırmasına taburcu olmak (veya daha erken yatan hasta testine geçmek) için güvenlidir. İskemik değişiklikler veya pozitif troponin içeren EKG ise düşük riskli değildir ve normal risk sınıflandırması gerektirir.",
  "Düşük riskli değil.  \nBu hasta erken taburcu olmaya aday değildir ve gecikmiş troponin testi ile standart bir göğüs ağrısı değerlendirmesi almalıdır.",
];
// 20 ve üstü 2. açıklama -- 20 ve altı içinde 1. açıklama
