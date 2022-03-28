function u = uround()
    u = 1.0;
    while 1.0 + u ~= 1.0
        u = 0.5*u;
    end
     u = 2*u;
end