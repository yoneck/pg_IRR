create or replace  function public.npv(cf numeric[], rate numeric) returns numeric
language sql as 

$$
select sum(cf/(1+$2)^n) from
(select row_number() over () n, unnest cf
from
unnest($1) )u
$$;

create or replace  function public.irr(cf numeric[], minrate numeric=-10.0, maxrate numeric=10.0) returns numeric
language plpgsql as 

$$
declare
minv numeric;
 maxv numeric;
  prec numeric =0.00001;
  l numeric  = minrate;
  p numeric = maxrate;
  s numeric =($2+$3)*0.5;
  irr numeric =p;
  npv numeric;
begin
select min(unnest) from unnest($1) into minv;
select max(unnest) from unnest($1) into maxv;
  if maxv<0 or minv>0 then 
    return null;
  else  
    npv=npv($1,s);
    raise notice '%',npv;
    while abs(npv)>prec
    loop
      if  npv>0 then
        l=s;
      else
        p=s;
      end if;
      s=(l+p)*0.5::numeric ;
      npv=npv($1,s);
      --raise notice 'l: % p: % s % npv: %',l,p,s,npv;
    end loop;
    return s;
  end if;
  end
$$;
