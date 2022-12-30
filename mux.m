%8to 1 mux
d0=input('in 0 or 1:')
d1=input('in 0 or 1:')
d2=input('in 0 or 1:')
d3=input('in 0 or 1:')
s0=input('in 0 or 1:')
s1=input('in 0 or 1:')
b=t4way(d0,d1,d2,d3,s0,s1);
d4=input('in 0 or 1:')
d5=input('in 0 or 1:')
d6=input('in 0 or 1:')
d7=input('in 0 or 1:')
a=t4way(d4,d5,d6,d7,s0,s1);
s2=input('in 0 or 1:')
out=t2way(a,b,s2)
%%

function [out] = t4way(d0,d1,d2,d3,s0,s1);
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
out=or(f,f1);
end
%%
function [out] = t2way(d0,d1,selector)
a=not(selector);
b=and(a,d0);
c=and(d1,selector);
out=or(b,c);
end
%%
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