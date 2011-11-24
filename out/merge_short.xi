use assert
main(args:int[][]) {
  a:int[]=(20,19,18,14,2,3,6,5,1,15,16,11,13,12,7,8,9,17,10,4);
  b:int[]=(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20);
  merge(a,0,19);
  assertEqual(a,b);
}

merge(a:int[],l:int,h:int) {
  if(l>=h) {
    return;
  }
  m:int=(h+l)/2;
  merge(a,l,m);
  merge(a,m+1,h);
  r:int[h-l+1];
  i:int=0;
  i1:int=l;
  i2:int=m+1;
  while(i1<=m & i2<=h) {
    if(a[i1]<=a[i2]){
      r[i]=a[i1];
      i1=i1+1;
    }else{
      r[i]=a[i2];
      i2=i2+1;
    }
    i=i+1;
  }
  while(i1<=m){
    r[i]=a[i1];
    i1=i1+1;
    i=i+1;
  }
  while(i2<=h){
    r[i]=a[i2];
    i2=i2+1;
    i=i+1;
  }
  i=0;
  while(l<=h){
    a[l]=r[i];
    i=i+1;
    l=l+1;
  }
}

assertEqual(a1:int[],a2:int[]){
  i:int=0;
  n:int=length(a1);
  while(i<n){
    assert((a1[i])==(a2[i]));
    i=i+1;
  }
}

