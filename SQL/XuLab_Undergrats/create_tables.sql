CREATE DATABASE xulab_enrollment;
\c xulab_enrollment;

CREATE TYPE academic_level_type AS ENUM ('FR', 'SO', 'JR', 'SR');
CREATE TYPE season_type AS ENUM ('Spring', 'Summer', 'Fall', 'Winter');
CREATE TYPE grade_option_type AS ENUM ('GR', 'P/NP');

CREATE TABLE Students (
    student_id VARCHAR(9) PRIMARY KEY, -- 8(regular students)-9(DCE students) digit number
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    major VARCHAR(50) NOT NULL, -- e.g. BIO SCI, ENGR BM
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Courses (
    course_index SERIAL PRIMARY KEY, -- Assign an unique index to avoid conflict
    course_name VARCHAR(20) NOT NULL UNIQUE, -- e.g. BIO SCI 199, BME 199
    course_title VARCHAR(100) NOT NULL, -- e.g. Neurolab Research
    school VARCHAR(100) NOT NULL, -- e.g. Charlie Dunlop School of Biological Sciences
    min_units INT NOT NULL,
    max_units INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Quarters (
    quarter_index SERIAL PRIMARY KEY, -- Assign an unique index to avoid conflict
    academic_year INT NOT NULL, -- e.g. 2025
    season season_type NOT NULL,
    UNIQUE (academic_year, season)
);

CREATE TABLE CourseOfferings (
    offering_index SERIAL PRIMARY KEY, -- Auto assign and unique index to avoid conflict
    course_index INT NOT NULL, -- References Courses
    quarter_index INT NOT NULL, -- References Semesters
    course_code VARCHAR(10) NOT NULL, -- Enrollment code, e.g. 07068
    section VARCHAR(10) NOT NULL, -- Course session, e.g. 669, CD
    instructor VARCHAR(50) NOT NULL, -- e.g. XU, X.
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (course_index) REFERENCES Courses(course_index), -- Enforce check the existence in other table
    FOREIGN KEY (quarter_index) REFERENCES Quarters(quarter_index), -- Enforce check the existence in other table,
    UNIQUE (course_index, quarter_index, course_code)
);

-- Table: Enrollments
CREATE TABLE Enrollments (
    enrollment_id SERIAL PRIMARY KEY, -- Auto-incremented enrollment ID
    student_id VARCHAR(9) NOT NULL, -- References Students
    offering_index INT NOT NULL, -- References CourseOfferings
    grade_option grade_option_type NOT NULL, -- Graded or Pass/Not Pass
    current_academic_level academic_level_type NOT NULL, -- FR, SO, JR, SR
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES Students(student_id), -- Enforce check the existence in other table
    FOREIGN KEY (offering_index) REFERENCES CourseOfferings(offering_index), -- Enforce check the existence in other table
    UNIQUE (student_id, offering_index)
);
