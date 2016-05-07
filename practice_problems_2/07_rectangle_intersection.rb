def rec_intersection(rect1, rect2)

    x_left_most = [rect1[0][0], rect2[0][0]].max
    y_left_most = [rect1[0][1], rect2[0][1]].max
    x_top_most = [rect1[1][0], rect2[1][0]].min
    y_top_most = [rect1[1][1], rect2[1][1]].min
    
    return nil if rect1[1][0] < rect2[0][0] && rect1[1][1] < rect2[0][1]
    return [x_left_most, y_left_most], [x_top_most, y_top_most]

end
