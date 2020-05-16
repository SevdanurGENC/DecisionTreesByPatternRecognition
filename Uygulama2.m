clear all;
close all;
clc;

dataset = load('breast-cancer-wisconsin.data');
dataEgitim = dataset(1:600,1:10);
dataTest = dataset(601:683,1:10); 
classEgitim = dataset(1:600,11); 
classTest = dataset(601:683,11); 

tree = ClassificationTree.fit(dataEgitim, classEgitim)
t = classregtree(dataEgitim, classEgitim);

cvv = crossval(tree);
error = kfoldLoss(cvv)
dogruluk = 1 - error

c1 = tree.predict(dataTest);
cMat = confusionmat(classTest, c1)
