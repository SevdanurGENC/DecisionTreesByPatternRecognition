clear all;
close all;
clc;
 
 dataset = load('breast-cancer-wisconsin.data');
 train = dataset(:,1:10);
 class = dataset(:,11);
 
 classificationTree = fitctree(train,class)
 view(classificationTree)
 view(classificationTree,'mode','graph')
 
 regressionTree = fitrtree(train,class);  
 view(regressionTree) 
 view(regressionTree,'mode','graph') 