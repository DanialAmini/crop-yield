This repository is about monthly scheduling of deficit irrigation using FAO-56 manual and the yield reduction formula of Rao.  

Octave language (*.m files) was used with the sqp command that calls Sequential Quadratic Programming for optimizing the constianed nonlinear problem.  

File listing description:  

FAO5_.m	is a function for calculating the yield of a crop given the irrgation coefficients. Outputs are wr and yr.  
FAO4_.m calculates the objective function from the outputs of FAO5_.m  
file_reader.m is deprecated    
g.m contains a constraint that is essentially nul, because it works for the 13th array element. sqd command requires this input nevertheless, and it can't be blank.    
h.m is deprecated  
optimize_octave.m is deprecated  
optimize_octave_save2.m is the main routine. It reads the values of Ky, Irr, Peff, and ETp for 13 crops for 12 months. Then performs optimization of yr for various values of wr, then prints the results in text files.  
phi.m is deprecated  
polyfitter.m fits polynomial functions to yr-wr function of each crops  

