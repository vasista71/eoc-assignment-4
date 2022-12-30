d0=input('in 0 or 1:')
s0=input('in 0 or 1:')
c=not(s0);
F0=and(c,d0)
F1=and(d0,s0)
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