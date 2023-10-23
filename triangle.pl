% Define a predicate to check if a triangle is a right triangle.
is_right_triangle(Angle1, Angle2, Angle3) :-
    % Check if the sum of Angle1 and Angle2 is 90 degrees.
    Sum is Angle1 + Angle2,
    Sum = 90,
    % Check if the sum of all angles is 180 degrees.
    Total is Angle1 + Angle2 + Angle3,
    Total = 180.

% Define the angles of a triangle.
angle1(30).
angle2(60).

% Check if the triangle is a right triangle.
is_right_triangle_example :-
    angle1(Angle1),
    angle2(Angle2),
    % Calculate the third angle.
    Angle3 is 180 - Angle1 - Angle2,
    is_right_triangle(Angle1, Angle2, Angle3),
    % Output the results.
    write('The triangle is a right triangle.').
