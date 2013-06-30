% plot the data points from x and y onto a figure`

function plotdata(x, y)
   figure;  % open a new figure window
   
   % nb. rx option - use red crosses
   %     MarkerSize option - size of the markers to display
   plot(x, y, 'rx', 'MarkerSize', 10);
end
