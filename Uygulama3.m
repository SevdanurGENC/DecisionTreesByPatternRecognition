clear all;
close all;
clc;

x1 = [0 1 0 1 0 1 0 1]';
x2 = [0 0 0 0 1 1 1 1]';
x3 = [0 0 1 1 0 0 1 1]';
inData = [x1, x2, x3];	
outData = ['-', '-', '+', '+', '+', '+', '-', '-']';

mytree = treefit(inData, outData, 'method', 'classification', 'splitmin', 2, 'prune', 'on', 'splitcriterion', 'gdi')
treedisp(mytree);
 
   
   
   
   
   
   
   
   
   
   
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    