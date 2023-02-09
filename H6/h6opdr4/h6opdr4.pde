if(1 == 2 || 1 == 2){
  println("true");
}else{
  println("false");
} 

//ik ben niet creatief genoeg om iets te maken waarin ik logic toe moet passen dus ik heb logic gates gemaakt met alleen NOT, AND, en OR

//NOT
// !true              ; false 
// !false             ; true

//AND
// true && true       ; true
// true && false      ; false
// false && false     ; false

//NAND
// !(true && true)       ; false
// !(true && false)      ; true
// !(false && false)     ; true
  
//OR
// true || true       ; true
// true || false      ; true
// false || false     ; false

//NOR  
// !(true || true)       ; false
// !(true || false)      ; false
// !(false || false)     ; true

//XOR
// true && !true      ; false
// true && !false     ; true
// false && !false    ; false

//XNOR
// !(true && !true)   ; true
// !(true && !false)  ; false
// !(false && !false) ; true
