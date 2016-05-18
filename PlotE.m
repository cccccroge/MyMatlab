function[] = PlotE(a,b)     %(a,b) is a point
    %we need direction(vec) and legnth(num) of arrow
    D = [a-0,b-0];
    %assume r is distance from proton to origin satisfied L = 1.2*(1/r)^2
    r = (a.^2+b.^2).^(1/2);
    L = 1.2*(1./r).^2;
    
    %so start point and end point of arrow will be:
    s = [a,b] - (1/2)*L*D;
    e = [a,b] + (1/2)*L*D;
    
    %using PlotArrow to plot one of arows of the eletric field
    PlotArrow(s,e)

end