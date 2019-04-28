function value = sat(x,m)
if(abs(x)<=m)
    value = x;
else
    value = m* sign(x);
end


end