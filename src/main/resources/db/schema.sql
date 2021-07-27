CREATE TABLE STUDENT (
    ID BIGINT,
    FIRST_NAME VARCHAR (255) NOT NULL,
    LAST_NAME VARCHAR (255) NOT NULL,
    AGE INTEGER NOT NULL,
    PRIMARY KEY (ID)

);

CREATE TABLE COURSE (
    ID BIGINT PRIMARY KEY,
    COURSE_NAME VARCHAR (255) NOT NULL
);

CREATE TABLE LECTURE (
    ID BIGINT PRIMARY KEY,
    LECTURE_NAME VARCHAR (255) NOT NULL,
    COURSE_ID BIGINT,
    FOREIGN KEY (COURSE_ID) REFERENCES COURSE(ID)
);


CREATE TABLE STUDENT_COURSE (
    STUDENT_ID BIGINT,
    COURSE_ID BIGINT,
    GRADE INTEGER,
    PRIMARY KEY (STUDENT_ID, COURSE_ID),
    FOREIGN KEY (STUDENT_ID) REFERENCES STUDENT(ID),
    FOREIGN KEY (COURSE_ID) REFERENCES COURSE(ID)
)