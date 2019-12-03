function route = GradientBasedPlanner (f, start_coords, end_coords, max_its)
% требуется найти путь на плоскости на основании градиента функции f 
% входные данные:
%     start_coords и end_coords -- координаты начальной и конечной точек
%     max_its -- максимальное число возможных итераций 
% выходные данные:
%     route -- массив из 2 столбцов и n строк
%     каждая строка соответствует координатам x, y робота (по мере прохождения пути)

    [gx, gy] = gradient (-f);

% *******************************************************************
% ВАШ КОД ДОЛЖЕН НАХОДИТЬСЯ ЗДЕСЬ

    route = start_coords;
    pos = start_coords;
    running = true;
    i = 0;
    
    while running
        if (i == max_its) || (norm(end_coords - pos) < 2)
            running = false;
            break;
        end
        
        Delta = [ gx( round(pos(2)), round(pos(1)) ), ....
                  gy( round(pos(2)), round(pos(1)) )];
              
        pos = pos + Delta/norm(Delta);
        
        route = [route; pos];
        i = i + 0.5;
    end
% *******************************************************************

end
