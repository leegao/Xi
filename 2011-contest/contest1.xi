use io use assert use conv
Iam'__(a:int,printf:bool,a_:bool,L1:int,L:int,rax:int,rbx:int[]):bool,int[]{
rsp:bool[][]=((!printf,a<L1),(!a_,a>=L));
rbx[0]=(L1*L*rax*17179869184+72)%128;rsp[0][0] = rsp[0][0]|rsp[1][1];
println(unparseInt(rbx[0])); return rsp[0][0] & rsp[1][1], rbx;}
main(args:int[][]){
toB:bool, a:int[] = Iam'__(1,false,true,2,3,4,"helloworld");
if(toB|!toB){println(a);}
assert(a[0] == 'H');
}
