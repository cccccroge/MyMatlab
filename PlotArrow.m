function[] = PlotArrow(a,b)
    %first plot the line from a to b
    x = [a(1),b(1)];
    y = [a(2),b(2)];
    line(x,y)
    hold on;
    
    %put origin/vertical vectors together and get the one side of arrow
    O = [(b(1)-a(1)) , (b(2)-a(2))];
    V = [O(2),O(1).*(-1)];    %one of vertical vectors
    A = O + (1/2)*V;
    
    c = b-(1/12)*A;
    x_arrow = [c(1),b(1)];
    y_arrow = [c(2),b(2)];
    line(x_arrow,y_arrow)
    
    %now use another vertical vectors to plot another side of arrow
    V = [O(2).*(-1),O(1)];      %another vertical vectors
    A = O + (1/2)*V;
    
    c = b-(1/12)*A;
    x_arrow = [c(1),b(1)];
    y_arrow = [c(2),b(2)];
    line(x_arrow,y_arrow)
    
    hold off;

end