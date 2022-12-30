%HALF ADDER
a=input('in 0 or 1:')
b=input('in 0 or 1:')
c=not(b);
d=and(a,c);
e=not(a);
f=and(e,b);
sum=or(d,f)
carry=and(a,b)
%%
%full adder
a=input('in 0 or 1:')
b=input('in 0 or 1:')
ca=input('in 0 or 1:')
c=not(b);
d=and(a,c);
e=not(a);
f=and(e,b);
h=or(d,f);
x=not(h);
y=and(x,ca);
m=not(ca);
z=and(m,f);
sum=or(y,z)
%carry
ff=and(a,b);
gg=and(a,ca);
jj=and(b,ca);
kk=or(ff,gg);
carry=or(kk,jj)
%%
%2 by 1 mux
d0=input('in 0 or 1:')
d1=input('in 0 or 1:')
selector=input('in 0 or 1:')
a=not(selector);
b=and(a,d0);
c=and(d1,selector);
out=or(b,c)
%%
%4 by 1 mux
d0=input('in 0 or 1:')
d1=input('in 0 or 1:')
d2=input('in 0 or 1:')
d3=input('in 0 or 1:')
s0=input('in 0 or 1:')
s1=input('in 0 or 1:')
a=not(s0);
b=not(s1);
c=and(a,b);
c1=and(c,d0);
c2=and(b,s0);
c3=and(c2,d1);
c4=and(a,s0);
c5=and(c4,d2);
c6=and(s1,s0);
c7=and(c6,d3);
f=or(c1,c3);
f1=or(c5,c7);
output=or(f,f1)

%%
clear all
function [out]= or(s,c)
s1=[];

      if s==0&c==0
      out =0;
      elseif s==1&c==0
          out=1;
          elseif s==1&c==1
          out=1;
          elseif s==0&c==1
          out=1;

      else
      out = notvalid;
      end


end 
%%
function [out]= and(n,c)
      if n==1&&c==1
      out =1;
      elseif n==1&c==0
          out=0;
          elseif n==0&c==1
          out=0;
          elseif n==0&c==0
          out=0;
      else
      out = notvalid;
      end
end 
  %%
  function [out]= not(s)
if s==1
      out =0;
      elseif s==0
      out=1;
      else out=notvalid;
      end
end