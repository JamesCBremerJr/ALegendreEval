program alegendre_test0
use alegendreeval
use besseleval
implicit double precision (a-h,o-z)

call bessel_eval_init(dsize1)
call alegendre_eval_init(dsize2)

pi = acos(-1.0d0)

print *,"in alegendre_test, loaded ",dsize1," megabytes of data for Bessel functions"
print *,"in alegendre_test, loaded ",dsize2," megabytes of data for ALFs"
print *,""


print *,"Enter real-valued nu betweeen 0 and 1,000,000"
read *,dnu
print *,"Enter real-valued mu between 0 and mu"
read *,dmu
print *,"Enter 0 < t < pi"
read *,t


call alegendre_eval(dnu,dmu,t,alpha,alphader,vallogp,vallogq,valp,valq)
print *,""


if (alpha .ne. 0.0d0) then
print *,"phase function                          = ",alpha
print *,"phase function derivative               = ",alphader
else
print *,"log of P_nu^{-mu}(cos(t))sqrt(sin(t))   = ",vallogp
print *,"log of Q_nu^{-mu}(cos(t))sqrt(sin(t))   = ",vallogq
endif
print *,"value of P_nu^{-mu}(cos(t))sqrt(sin(t)) = ",valp
print *,"value of Q_nu^{-mu}(cos(t))sqrt(sin(t)) = ",valq


end program 
