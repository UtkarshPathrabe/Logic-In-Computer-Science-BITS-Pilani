%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% SOME USEFUL RELATIONS
%%%
appendList([],L,L).
appendList([H|T],L2,[H|L3]) :-
	appendList(T,L2,L3).

%Terminating Call to print non letter courses and corresponding grades.
displayList([],[]).

%Recursive Call to print non letter courses and corresponding grades.
displayList([H1|T1],[H2|T2]) :-
	display(H1),
	display('\t-\t'),
	display(H2),
	display(' ; \n'),
	displayList(T1,T2).

% ------------------------------------------------------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Letter Grades Of Students. Applicable to only CDCs and electives.
%%%
grade('A',10).
grade('B',8).
grade('C',6).
grade('D',4).
grade('E',2).
grade('W',0).
grade('NC',0).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Report Grades Of Students.
%%%
grade('OUTSTANDING',-1).
grade('EXCELLENT',-1).
grade('GOOD',-1).
grade('VERY GOOD',-1).
grade('FAIR',-1).
grade('POOR',-1).
grade('ABOVE AVERAGE',-1).
grade('AVERAGE',-1).
grade('BELOW AVERAGE',-1).
grade('SATISFACTORY',-1).
grade('UNSATISFACTORY',-1).
grade('ACCEPTABLE',-1).
grade('UNACCEPTABLE',-1).
grade('I',-1).


% -------------------------DATABASE : STUDENT---------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Data of First Degree Students.
%%%
studentName('Utkarsh','MATHF111','A','CDC').
studentName('Utkarsh','CHEMF111','A','CDC').
studentName('Utkarsh','BIOF111','B','CDC').
studentName('Utkarsh','PHYF111','A','CDC').
studentName('Utkarsh','MEF110','A','CDC').
studentName('Utkarsh','PHYF110','A','CDC').
studentName('Utkarsh','CHEMF110','A','CDC').
studentName('Utkarsh','BIOF110','B','CDC').
studentName('Utkarsh','CSF214','NC','CDC').
studentName('Utkarsh','CSF222','A','CDC').
studentName('Utkarsh','CSF213','A','CDC').
studentName('Utkarsh','CSF215','A','CDC').
studentName('Utkarsh','MATHF112','A','CDC').
studentName('Utkarsh','BITSF112','I','CDC').
studentName('Utkarsh','CSF111','NC','CDC').
studentName('Utkarsh','BITSF110','A','CDC').
studentName('Utkarsh','EEEF111','A','CDC').
studentName('Utkarsh','BITSF111','W','CDC').
studentName('Utkarsh','MATHF113','A','CDC').
studentName('Utkarsh','HSSF334','A','ELECTIVE').
studentName('Utkarsh','C421T','EXCELLENT','THESIS').
studentName('Utkarsh','C412P','NC','PRACTICE SCHOOL').
studentName('Utkarsh','GSF326','SATISFACTORY','ELECTIVE').
studentName('Utkarsh','HSSF334','AVERAGE','ELECTIVE').
% ------------------------------------------------------------------------
studentName('Sankhya','CSF214','A','CDC').
studentName('Sankhya','CSF222','NC','CDC').
studentName('Sankhya','CSF213','A','CDC').
studentName('Sankhya','CSF215','B','CDC').
studentName('Sankhya','MATHF113','A','CDC').
studentName('Sankhya','MATHF111','A','CDC').
studentName('Sankhya','CHEMF111','A','CDC').
studentName('Sankhya','BIOF111','A','CDC').
studentName('Sankhya','PHYF111','B','CDC').
studentName('Sankhya','MEF110','W','CDC').
studentName('Sankhya','PHYF110','A','CDC').
studentName('Sankhya','CHEMF110','A','CDC').
studentName('Sankhya','BIOF110','A','CDC').
studentName('Sankhya','MATHF112','NC','CDC').
studentName('Sankhya','BITSF112','B','CDC').
studentName('Sankhya','CSF111','W','CDC').
studentName('Sankhya','BITSF110','A','CDC').
studentName('Sankhya','EEEF111','A','CDC').
studentName('Sankhya','BITSF111','B','CDC').
studentName('Sankhya','MATHF113','A','CDC').
studentName('Sankhya','HSSF343','B','ELECTIVE').
studentName('Sankhya','C441T','POOR','SEMINAR').
studentName('Sankhya','G529','GOOD','PROJECT COURSE').
studentName('Sankhya','GSF326','NC','ELECTIVE').
studentName('Sankhya','HSSF325','A','ELECTIVE').
studentName('Sankhya','C412P','I','PRACTICE SCHOOL').
% ------------------------------------------------------------------------
studentName('Manish','CSF214','D','CDC').
studentName('Manish','CSF222','NC','CDC').
studentName('Manish','CSF213','A','CDC').
studentName('Manish','CSF215','B','CDC').
studentName('Manish','MATHF113','C','CDC').
studentName('Manish','MATHF111','A','CDC').
studentName('Manish','CHEMF111','B','CDC').
studentName('Manish','BIOF111','A','CDC').
studentName('Manish','PHYF111','B','CDC').
studentName('Manish','MEF110','W','CDC').
studentName('Manish','PHYF110','A','CDC').
studentName('Manish','CHEMF110','W','CDC').
studentName('Manish','BIOF110','A','CDC').
studentName('Manish','MATHF112','I','CDC').
studentName('Manish','BITSF112','B','CDC').
studentName('Manish','CSF111','W','CDC').
studentName('Manish','BITSF110','A','CDC').
studentName('Manish','EEEF111','B','CDC').
studentName('Manish','BITSF111','B','CDC').
studentName('Manish','MATHF113','C','CDC').
studentName('Manish','HSSF343','B','ELECTIVE').
studentName('Manish','C441T','POOR','SEMINAR').
studentName('Manish','G529','GOOD','PROJECT COURSE').
studentName('Manish','GSF326','NC','ELECTIVE').
studentName('Manish','HSSF325','A','ELECTIVE').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Data of a PHD Student.
%%%
studentName('Akash','CSF214','A','CDC').
studentName('Akash','CSF222','NC','CDC').
studentName('Akash','CSF213','I','CDC').
studentName('Akash','CSF215','B','CDC').
studentName('Akash','EEEF111','A','CDC').
studentName('Akash','G529','GOOD','PROJECT COURSE').
studentName('Akash','HSSF325','A','ELECTIVE').
studentName('Akash','BITSF110','A','CDC').
studentName('Akash','BITSF111','B','CDC').
studentName('Akash','BITSC421T','ACCEPTABLE','PHD THESIS').
studentName('Akash','BITSC797T','POOR','PHD SEMINAR').
studentName('Akash','BITSG529','SATISFACTORY','PROJECT COURSE').

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% To Check Whether Student Has Some Disciplinary Cases Pending Against
%%% Him.
%%%
studentStatus('Utkarsh','NORMAL').
studentStatus('Sankhya','NORMAL').
studentStatus('Manish','CASE AGAINST').
studentStatus('Akash','NORMAL').

%-----------------------DATABASE : SUBJECTS ----------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Credits of Subjects along with Subject Name.
%%% (0 credit for non letter grade courses).
%%%
subjectName('MATHF111',3).
subjectName('CHEMF111',3).
subjectName('BIOF111',3).
subjectName('PHYF111',3).
subjectName('MEF110',2).
subjectName('PHYF110',1).
subjectName('CHEMF110',1).
subjectName('BIOF110',1).
subjectName('MATHF112',3).
subjectName('BITSF112',2).
subjectName('CSF111',4).
subjectName('BITSF110',2).
subjectName('EEEF111',3).
subjectName('BITSF111',3).
subjectName('MATHF113',3).
subjectName('CSF214',3).
subjectName('CSF222',3).
subjectName('CSF213',4).
subjectName('CSF215',4).
subjectName('MATHF211',3).
subjectName('HSSF343',2).
subjectName('HSSF334',2).
subjectName('C421T',0).
subjectName('C412P',0).
subjectName('C441T',0).
subjectName('G529',0).
subjectName('GSF326',3).
subjectName('HSSF325',3).
subjectName('HSSF334',3).
subjectName('BITSC421T',0).
%PHD SUBJECTS (EXPLICIT).
subjectName('BITSC799T',0).
subjectName('BITSC797T',0).
subjectName('BITSG529',0).

% ---------------------------SOME DEFINITIONS---------------------------
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Calculating CGPA of any student when Gradelist and corresponding
%%% Subjectlist is provided
cgpa(GradeList,SubjectList,CGPA):-
	calculate_Cgpa(GradeList,SubjectList,0,0,CGPA).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Terminating Case of calculating CGPA with Acc = Total Credits,
%%% CgNum = Sum Total of credits accumulated by student in the semester.
calculate_Cgpa([],[],Acc,CgNum,CgNumNew):-
	CgNumNew is CgNum/Acc.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Recursive CGPA calculation
%%%
calculate_Cgpa([H1|T1],[H2|T2],Acc,CgNum,CgNumNew1) :-
	subjectName(H2,X2),
	grade(H1,X1),
	( X1>0 -> AccNew is Acc+X2; AccNew is Acc ),
	CgNumNew is (X2*X1)+CgNum,
	calculate_Cgpa(T1,T2,AccNew,CgNumNew,CgNumNew1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Calculating CGPA by Student Name, if student has a disciplinary case
%%% pending against him then he is awarded GA report.
%%%
cgpaByStudentName(Name,CGPA) :-
	studentStatus(Name,A),
	(A == 'CASE AGAINST'
	-> (display(Name),
	   display(' has a case of unfair means or discipline against him, so he has GA report.'));
	(findall(X1,studentName(Name,_,X1,_),GradeList),
	findall(X2,studentName(Name,X2,_,_),SubjectList),
        cgpa(GradeList,SubjectList,CGPA))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Terminating Case which gives responsibilty to displayList to print
%%% the list of subjects and corresponding grades.
%%%
report_Grade(Name,[],SubjectsList,GradesList) :-
	display(Name),
	display(' Performance in Subjects are: '),
	nl,
	displayList(SubjectsList,GradesList).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Recursively calculates the list of subjects and
%%% the corresponding list of results.
%%%
report_Grade(Name,[H|T],SubjectsList,GradesList) :-
	subjectName(H,X),
	studentName(Name,H,Grade,_),
        ( X=:=0 -> appendList(SubjectsList,[H],FinalSubjectsList);
	append(SubjectsList,[],FinalSubjectsList)),
	( X=:=0 -> appendList(GradesList,[Grade],FinalGradesList);
	append(GradesList,[],FinalGradesList)),
        report_Grade(Name,T,FinalSubjectsList,FinalGradesList).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Lists all the report grades obtained by a Student.
%%% if student has a disciplinary case pending against him then he is
%%% awarded GA report.
%%%
reportGradesOfStudent(Name):-
	studentStatus(Name,A),
	(A == 'CASE AGAINST'
	-> (display(Name),
	   display(' has a case of unfair means or discipline against him, so he has GA report.'));
	findall(X2,studentName(Name,X2,_,_),SubjectList),
	report_Grade(Name,SubjectList,_,_)).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Some Conditions If The Student Has Got An NC.
%%%
is_NC_in_CDC(Subject) :-
	display('Register in the course '),
	display(Subject),
	display(' again.'),
	nl.

is_NC_in_ELEC(Subject) :-
	is_NC_in_CDC(Subject),
	display('\tOR\nIgnore the course.'),
	nl.

is_NC_in_PS(_) :-
	display('Grade awarded DP. Contact Dean WILPD/Dean PS for changing the Grade from NC to RRA.'),
	nl.

is_NC_in_PC(_) :-
	display('Grade awarded RC by Dean ARC.'),
	nl.

is_NC_Calc([],[],[]) :-
	display('In other subjects you don\'t have NC.'),
	nl.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Takes necessary decisions based on which course student has got NC.
%%% Implications of NC in CDC/THESIS/SEMINAR are the same.
%%%
is_NC_Calc([G|T1],[S|T2],[C|T3]) :-
	( G == 'NC' , C == 'CDC'
	 -> is_NC_in_CDC(S)
        ; G == 'NC' , C == 'THESIS'
	 -> is_NC_in_CDC(S)
	; G == 'NC' , C == 'SEMINAR'
	 -> is_NC_in_CDC(S)
	; G == 'NC' , C == 'ELECTIVE'
	 -> is_NC_in_ELEC(S)
	; G == 'NC' , C == 'PRACTICE SCHOOL'
	 -> is_NC_in_PS(S)
	; G == 'NC' , C == 'PROJECT COURSE'
	 -> is_NC_in_PC(S)
	; true),
	is_NC_Calc(T1,T2,T3).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Checks Whether The Given Student Has An NC Report in any Subjects.
%%% Creates Subject List, Course Type List and Grade List for the given Name.
%%%
isStudentNC(Name) :-
	findall(X1,studentName(Name,_,X1,_),GradeList),
	findall(X2,studentName(Name,X2,_,_),SubjectList),
	findall(X3,studentName(Name,_,_,X3),CourseType),
	is_NC_Calc(GradeList,SubjectList,CourseType).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Recursively Checks Whether a Student Has an 'I' Report in Any of the
%%% Subjects and if one has then it prints what to do.
%%%
report_I([],[],[]).
report_I([S|T1],[G|T2],[C|T3]):-
	( G == 'I' , C == 'PRACTICE SCHOOL'
	  -> display('You have an \'I\' Report in '),
	  display(S),
	  display(', so contact the Instructor-in-Charge within one week after the end of summer term for the replacement of the \'I\' report.');
	  G == 'I'
	  -> display('You have an \'I\' Report in '),
	  display(S),
	  display(', so contact the Instructor-in-Charge within two weeks after the end of semester for the replacement of the \'I\' report.');
	  true),
	report_I(T1,T2,T3).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Reports whether a student has an 'I' Report in any subject.
%%%
doesStudentHasIGrade(Name) :-
	findall(X1,studentName(Name,_,X1,_),GradeList),
	findall(X2,studentName(Name,X2,_,_),SubjectList),
	findall(X3,studentName(Name,_,_,X3),CourseType),
	report_I(SubjectList,GradeList,CourseType).




