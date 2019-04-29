Start
 = r: RNA {return r.join("")} 

RNA = left: P RNA/ eps 
 		
 P "Protein"
 = P1/P2/P3/P4/P5/P6/P7/P8/P9/P10/P11/P12/P13/P14/P15
 /P16/P17/P18/P19/P20/P21/P22/P23/P24/P25
 P1=C U nucleotide {return "Leu"}
 P2=G U nucleotide {return "Val"}
 P3=A C nucleotide {return "Thr"}
 P4=C C nucleotide {return "Pro"}
 P5=U C nucleotide {return "Ser"}
 P6=G C nucleotide {return "Ala"}
 P7=C G nucleotide {return "Arg"}
 P8=G G nucleotide {return "Gly"}
 P9=U U (C/U){return "Phe"}
 P10=U U (A/G){return "Leu"}
 P11=A U (A/C/U){return "Ile"}
 P12=A U (G){return "Met"}
 P13=G A (U/C){return "Asp"}
 P14=G A (A/G){return "Glu"}
P15=A A (U/C){return "Asn"}
P16=A A (A/G){return "Lys"}
 P17=C A (U/C){return "His"}
  P18=C A (A/G){return "Gln"}
  P19=U A (U/C){return "Tyr"}
  P20=U A (A/G){return "Stop"}
    P21=U G (U/C){return "Cys"}
  P22=U G G{return "Trp"}
  P23=A G (U/C){return "Ser"}
P24= A G (A/G){return "Arg"}  
  P25= U G A{return "Stop"}  
 
 nucleotide=A/G/C/U

A="A"/"a"
T="T"/"t"
C="C"/"c"
G="G"/"g"
U="U"/"u"


eps=""
nl "New line"
 = "\n"

ws "Whitespace"
 = [ \t]

_ "One or more whitespaces"
 = ws+
 div="-"
