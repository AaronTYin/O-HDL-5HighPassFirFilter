n=1:7;
x1(n)=n-1;
n=8:5;
x1(n)=15-n;
x1=x1*100;
x2=uint16(x1);
fid=fopen('E:\tir.txt','wt+');
fprintf(fid,'%x\n',x2);
fclose(fid);

n=1:15;
subplot(3,1,1);
stem(n,x1);
subplot(3,1,2);
x1fft=fft(x1);
stem(n,abs(x1fft));