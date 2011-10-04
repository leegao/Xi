// from group_of_bnw4_dbp25_gs376_mew66
use blar

a():int {
  if(0) {
    if(0) {
      b:int = false;
    }
    else {}
  }

//should parse identical to above  
  if(0)
    if(0) 
      b:int = false
    else {}
    
    
  if (0) if(0) {} else x();
  
}
