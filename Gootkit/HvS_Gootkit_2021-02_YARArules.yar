rule video_von_ard_mediathek_herunterladen_zip { 
   meta: 
      description = "video_von_ard_mediathek_herunterladen.zip - Gootkit Dropper as Zip Download" 
      author = "Moritz Oettle" 
      date = "2021-01-15" 
      hash1 = "61f085d8e752b154e7129065111426a721637483d929228ac080ef825aaa2c60" 

   strings: 
      $s1 = "video_von_ard_mediathek_herunterladen.js" fullword ascii 

   condition: 
      uint16(0) == 0x4b50 and filesize < 5KB and all of them 
} 

rule video_von_ard_mediathek_herunterladen_js { 
   meta: 
      description = "video_von_ard_mediathek_herunterladen.js - Gootkit Dropper" 
      author = "Moritz Oettle" 
      date = "2021-01-15" 
      hash1 = "c48f0cd0e68df4e4b19e89f25bc67be911480bb26183214a4142fd042f1e34f7" 

   strings: 
      $s1 = "function syllable(decide,kind,usual)" ascii 
      $s2 = "function pair(hot,dark,bread,force,chance)" ascii 
      $s3 = "function way(bottom,his)" ascii 
      $s4 = "heavy(hot,hold,original" ascii 
      $s5 = "return spell;" ascii 
      $s6 = "function equal(sound,column,oxygen,show,stand)" ascii 
      $s7 = "function west(solve,hope,speech)" ascii 
      $s8 = "function way(bottom,his)" ascii 
      $s9 = "function good(father,excite,soon,travel)" ascii 
      $s10 = "function base(human,south,string,repeat)" ascii 
      $s11 = "function road(basic,would,turn,single,cow)"  ascii 
      $s12 = "function arm(fat,coat,is,red,chick)" ascii 
      $s13 = "function heavy(gave,offer,lone,first,shop)" ascii 

      $g1 = "decide" fullword ascii 
      $g2 = "syllable" fullword ascii 
      $g3 = "bread" fullword ascii 
      $g4 = "chance" fullword ascii 
      $g5 = "bottom" fullword ascii 
      $g6 = "spell" fullword ascii 
      $g7 = "oxygen" fullword ascii 
      $g8 = "speech" fullword ascii 
      $g9 = "excite" fullword ascii 

   condition: 
      filesize < 8KB and 
      ( 1 of ($s*) or 5 of ($g*) ) 
}