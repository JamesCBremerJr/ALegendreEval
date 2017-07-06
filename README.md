Numerical algorithms for the associated Legendre functions
==========================================================

This repository contains code for the rapid numerical evaluation of the
associated Legendre functions of the first and second kinds on the
interval (-1,1).  It runs in time independent of degree and order.
The algorithm is described in the preprint 

    James Bremer, "An algorithm for the numerical evaluation of the  associated 
       Legendre functions that runs in time independent of degree and order."  
       arXiv:????.??????

It also contains code for rapidly calculating the roots of the associated Legendre
functions on the interval (-1,1).  The evaluation of a single root is done in time
independent of degree and order.

The file alegendre_eval.f90 contains all of the code.  For the most part,
it uses precomputed expansions which are found in the file alegendre_data.bin
to perform its computations.