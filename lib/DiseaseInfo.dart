import 'package:flutter/material.dart';


class DiseaseInfo
{
  Map badAffect = {};
  Map managementMethod = {};
  Map relatedDisease = {};

  DiseaseInfo()
  {
    List<String> names = ["다리꼬기", "가부좌", "거북목"];
    for(var i = 0; i < names.length; i++)
      {
        badAffect[names[i]] = names[i] + " 악영향입니다.";
        managementMethod[names[i]] = names[i] + " 관리방법입니다.";
        relatedDisease[names[i]] = names[i] + " 연관된 질병입니다.";
      }
  }
}
DiseaseInfo di = new DiseaseInfo();