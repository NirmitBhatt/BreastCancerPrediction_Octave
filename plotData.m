function plotData (X, y)
  
pos=find(y==1);
neg=find(y==0);  
  
figure(1); hold on; 
  
subplot(2,5,1);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,1),X(pos,2),'ko', 'markerfacecolor', 'g', 'markersize', 8);
plot(X(neg,1),X(neg,2),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Radius');
ylabel('Texture');

subplot(2,5,2);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,1),X(pos,3),'ko', 'markerfacecolor', 'g', 'markersize', 8);
plot(X(neg,1),X(neg,3),'ko', 'markerfacecolor', 'g', 'markersize', 8);
xlabel('Radius');
ylabel('Perimeter');

subplot(2,5,3);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,1),X(pos,4),'ko', 'markerfacecolor', 'g', 'markersize', 8);
plot(X(neg,1),X(neg,4),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Radius');
ylabel('Area');

subplot(2,5,4);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,1),X(pos,5),'ko', 'markerfacecolor', 'g', 'markersize', 8);
plot(X(neg,1),X(neg,5),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Radius');
ylabel('Smoothness');

subplot(2,5,5);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,4),X(pos,5),'k+', 'markersize', 8);
plot(X(neg,4),X(neg,5),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Area');
ylabel('Smoothness');

subplot(2,5,6);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,2),X(pos,3),'k+', 'markersize', 8);
plot(X(neg,2),X(neg,3),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Texture');
ylabel('Perimeter');

subplot(2,5,7);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,2),X(pos,4),'k+', 'markersize', 8);
plot(X(neg,2),X(neg,4),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Texture');
ylabel('Area');

subplot(2,5,8);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,2),X(pos,5),'k+', 'markersize', 8);
plot(X(neg,2),X(neg,5),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Texture');
ylabel('Smoothness');

subplot(2,5,9);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,3),X(pos,4),'k+', 'markersize', 8);
plot(X(neg,3),X(neg,4),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Perimeter');
ylabel('Area');

subplot(2,5,10);  % Divide plot into 1x2 grid, access 1st element
%plot(X(pos,3),X(pos,5),'k+', 'markersize', 8);
plot(X(neg,3),X(neg,5),'ko', 'markerfacecolor', 'g', 'markersize', 6);
xlabel('Perimeter');
ylabel('Smoothness');

hold off;



figure(2); hold on;  
 
subplot(2,5,1);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,1),X(pos,2),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,1),X(neg,2),'ko', 'markerfacecolor', 'r', 'markersize', 8);
xlabel('Radius');
ylabel('Texture');

subplot(2,5,2);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,1),X(pos,3),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,1),X(neg,3),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Radius');
ylabel('Perimeter');

subplot(2,5,3);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,1),X(pos,4),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,1),X(neg,4),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Radius');
ylabel('Area');

subplot(2,5,4);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,1),X(pos,5),'ko', 'markerfacecolor', 'r', 'markersize', 8);
%plot(X(neg,1),X(neg,5),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Radius');
ylabel('Smoothness');

subplot(2,5,5);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,4),X(pos,5),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,4),X(neg,5),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Area');
ylabel('Smoothness');

subplot(2,5,6);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,2),X(pos,3),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,2),X(neg,3),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Texture');
ylabel('Perimeter');

subplot(2,5,7);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,2),X(pos,4),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,2),X(neg,4),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Texture');
ylabel('Area');

subplot(2,5,8);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,2),X(pos,5),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,2),X(neg,5),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Texture');
ylabel('Smoothness');

subplot(2,5,9);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,3),X(pos,4),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,3),X(neg,4),'ko', 'markerfacecolor', 'y', 'markersize', 8);
xlabel('Perimeter');
ylabel('Area');


subplot(2,5,10);  % Divide plot into 1x2 grid, access 1st element
plot(X(pos,3),X(pos,5),'ko', 'markerfacecolor', 'r', 'markersize', 6);
%plot(X(neg,3),X(neg,5),'ko', 'markerfacecolor', 'y', 'markersize', 6);
xlabel('Perimeter');
ylabel('Smothness');


hold off;
endfunction
