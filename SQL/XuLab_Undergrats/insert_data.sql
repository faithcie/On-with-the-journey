-- Sample Inputs

-- Students
INSERT INTO Students (student_id, first_name, middle_name, last_name, email, major) VALUES -- Middle name is nullable
('48007020', 'Sol', 'Kenshi', 'Ou', 'kensho@uci.edu', 'BIO SCI'),
('39390831', 'Miku', Null, 'Hatsune', 'mikuh39@uci.edu', 'ENGR BM');

-- Courses
INSERT INTO Courses (course_name, course_title, school, min_units, max_units) VALUES
('BIO SCI 199', 'Neurolab Research', 'Charlie Dunlop School of Biological Sciences', 1, 5),
('BME 199', 'Individual Study', 'Henry Samueli School of Engineering', 1, 4);

-- Quarters
INSERT INTO Quarters (academic_year, season) VALUES
(2025, 'Winter'),
(2025, 'Spring');

-- Course Offerings
INSERT INTO CourseOfferings (course_index, quarter_index, course_code, section, instructor) VALUES
(1, 1, '06986', '645', 'XU, X.'), -- Bio Sci 199, Winter 2025
(2, 1, '13806', 'DI', 'XU, X.'), -- BME 199, Winter 2025
(1, 2, '07050', '691', 'XU, X.'),
(2, 2, '13855', 'CD', 'XU, X.');

-- Enrollments
INSERT INTO Enrollments (student_id, offering_index, grade_option, current_academic_level) VALUES
('48007020', 1, 'GR', 'JR'), -- Sol Ou, Bio Sci 199, Winter 2025
('39390831', 2, 'GR', 'FR'), -- Hatsune Miku, BME 199, Winter 2025
('48007020', 3, 'GR', 'JR'), -- Sol Ou, Bio Sci 199, Spring 2025
('39390831', 4, 'GR', 'FR'); -- Hatsune Miku, BME 199, Spring 2025
