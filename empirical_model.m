function LU = empirical_model(f)                                                                                                  %closes all external matlab windows
%Hata empirical Model  
% Base station Antenna Height (hte)
Hte =  100;
% Mobile Station Antenna Height (hre)
Hre = 6;
%distance from base station
d = 15 * 10^3;                                                                    

% path loss formula
for i=1:length(f)
    CH = 0.8 +((1.1*log( f(i)))-0.7)*Hre - 1.56*log(f(i));
    LU(i)=69.55+26.16*log (f(i))-13.82*log(Hte) -CH+(44.9-6.55*log(Hte))*log(d);                            
end

end 