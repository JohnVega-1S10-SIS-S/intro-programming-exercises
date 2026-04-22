import math

side_a = int(input("Type side A of the triangle: "))
side_b = int(input("Type side B of the triangle: "))
side_c = int(input("Type side C of the triangle: "))

if side_a + side_b > side_c and side_a + side_c > side_b and side_b + side_c > side_a:
    print("The triangle exists.")

    perimeter = side_a + side_b + side_c

    semi_perimeter = perimeter / 2

    internal_value = semi_perimeter * (semi_perimeter - side_a) * (semi_perimeter - side_b) * (semi_perimeter - side_c)

    area = math.sqrt(internal_value)
    print("The triangle area is: ", area)
else:
    print("Not a valid triangle")