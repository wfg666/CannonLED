length = 256;
n_led = 10;
delay = 1.0/3;

rise_length = floor(length/((n_led-1)*delay+1)/2);
delta_seq = floor([(0:rise_length) (rise_length-1:-1:0)]/rise_length*100);

table=zeros(n_led,length);

for n = 1:n_led
    start = floor((n-1)*length/((n_led-1)*delay+1)*delay)+1;
    table(n,start:start+rise_length*2) = delta_seq;
end
table = table(:,1:length);
%plot(table')
