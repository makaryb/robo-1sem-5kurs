function result = check_edge(p1, p2, p3, tr)
    result = zeros(1,4);
    
    m = 1;
    
    tmp = ((p2(2)-p1(2)) / (p2(1)-p1(1))) * (p3(1)-p1(1)) + p1(2) - p3(2);
    
    if ((p2(2)-p1(2)) / (p2(1)-p1(1))) * (p3(1)-p1(1)) + p1(2) - p3(2) > 0
        result(m) = 1;
    end
    
    m = m + 1;
    
    for i = 1:size(tr(:,1))
        tmp = ((p2(2)-p1(2)) / (p2(1)-p1(1))) * (tr(i,1)-p1(1)) + p1(2) - tr(i,2);
        
        if ((p2(2)-p1(2)) / (p2(1)-p1(1))) * (tr(i,1)-p1(1)) + p1(2) - tr(i,2) >= 0
            result(m) = 1;
        end
        
        if (p1(1) == p2(1))
            if ((tr(i,1) == p1(1)) && (tr(i,2) <= p2(2)) && (tr(i,2) >= p1(2)))
                result(m) = 1;
            end
        end
        
        if (p1(2) == p2(2))
            if ((tr(i,2) == p1(2)) && (tr(i,1) <= p2(1)) && (tr(i,1) >= p1(1)))
                result(m) = 1;
            end
        end
        
        m = m + 1;
    end
end