function result = triangles(triangle_1, triangle_2)
    if ((triangle_1(1,1) == triangle_1(2,1)) && (triangle_1(1,1) == triangle_1(3,1))) || ((triangle_1(1,2) == triangle_1(2,2)) && (triangle_1(1,2) == triangle_1(3,2)))
        
        result = 'На вход неправильный треугольник 1';
        
        return
    end
    
    if ((triangle_2(1,1) == triangle_2(2,1)) && (triangle_2(1,1) == triangle_2(3,1))) || ((triangle_2(1,2) == triangle_2(2,2)) && (triangle_2(1,2) == triangle_2(3,2)))
        
        result = 'На вход неправильный треугольник 2';
        
        return
    end
    
    tmp = zeros(6,4);
    
    tmp(1,:) = check_edge(triangle_1(1,:),triangle_1(2,:),triangle_1(3,:),triangle_2);
    tmp(2,:) = check_edge(triangle_1(2,:),triangle_1(3,:),triangle_1(1,:),triangle_2);
    tmp(3,:) = check_edge(triangle_1(1,:),triangle_1(3,:),triangle_1(2,:),triangle_2);
    tmp(4,:) = check_edge(triangle_2(1,:),triangle_2(2,:),triangle_2(3,:),triangle_1);
    tmp(5,:) = check_edge(triangle_2(2,:),triangle_2(3,:),triangle_2(1,:),triangle_1);
    tmp(6,:) = check_edge(triangle_2(1,:),triangle_2(3,:),triangle_2(2,:),triangle_1);
    
    for i = 1:size(tmp(:,1))
        if (tmp(i,:) == [1 0 0 0])
            
            result = 'false';
            
            return 
        end
        if (tmp(i,:) == [0 1 1 1])
            
            result = 'false';
            
            return 
        end
    end
    
    result = 'true';
    
end