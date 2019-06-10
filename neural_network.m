[x,t]=simplefit_dataset;
net = feedforwardnet(25);
net =train(net,x,t);
gensim(net);