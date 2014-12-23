************************************************************************SET 2**************************************************************************************
			
*******************************************************************************************************************************************************************
*******************************************************************************************************************************************************************
*******************************************************************************************************************************************************************

QUESTION 1:
We have a provision for pre-defined operators as well as user can input his own set of operators in the form of triplets.

operations available - 'sum', 'prod','and','or','xor':
   'sum' is a binary operation which is defined on a&b as (a+b)%(length of List).
   'prod' is a binary operation which is defined on a&b as (a*b)%(length of List).
   'and' is an boolean operation which is defined on pre-defined arguments 't' and 'f', for 'true' and 'false', respectively.
   'or' is an boolean operation which is defined on pre-defined arguments 't' and 'f', for 'true' and 'false', respectively.
   'xor' is an boolean operation which is defined on pre-defined arguments 't' and 'f', for 'true' and 'false', respectively.

********************************************************************PRE-DEFINED OPERATORS**************************************************************************
   
(1)	groupoid1(List,Op):
	Groupoid is a closed Algebraic Structure.
	Checks whether the given list is closed under the operation 'Op'.
	Input	-	List denotes the set of elements on which operation 'Op' is carried on.
		- 	Op is the operation under which we check whether the set 'List' is Closed.
	Output	- 	returns true if list is closed or returns false if list is not closed.
    
    	Example:
	?- 	groupoid1([0,1,2,3,4,5],sum).
	true

(2)	semigroup1(List,Op):
	Semi Group is a closed and associative Algebraic Structure.
    	Checks whether the given list is a semi group under the operation 'Op'.
	Input	- 	List denotes the set of elements on which operation 'Op' is carried on.
		- 	Op is the operation under which we check whether the set 'List' is Semi Group.
    	Output	-	returns true if it is a semi group or else returns false.

	Example:
	?- 	semigroup1([0,1,2,3],sum).
	true.
	?- 	semigroup1([t,f],and).
	true.

(3)	group1(List,Op):
	Group is an Algebraic Structure which is closed, associative, identity element exits, inverse of each element exits.
	Checks whether the given list is a group under the operation 'Op'.
	Input	- 	List denotes the set of elements on which operation 'Op' is carried on.
		- 	Op is the operation under which we check whether the set 'List' is group.
	Output	-	returns true if it is a group or else returns false.
   
	Example:
	?-	group1([0,1,2,3],sum).
	true.
	?- 	group1([t,f],xor).
	true.

(4)	abelgroup1(List,Op):
	Algebraic Structure is closed, associative, identity element exits, inverse of each element exits and commutative.
	Checks whether the given list is an abelian group under the operation 'Op'.
	Input	- 	List denotes the set of elements on which operation 'Op' is carried on
		- 	Op is the operation under which we check whether the set 'List' is an abelian group.
	Output	-	returns true if it is an abelian group or else returns false.
    
	Example:
	?-	abelgroup1([0,1,2,3,4],sum).
	true  
	?-	abelgroup1([1,2,3],sum).
	false.
	
********************************************************************User-Defined Operators***********************************************************************

(5)	groupoid(List,List1):
	Input	-	List denotes the set of elements on which the operations would be carried out.
			List1 denotes the set of triplets which are true under the given operation.
	Output	-	returns true if list is closed or returns false if list is not closed.
	
	Example:
	?-	groupoid([0,1],[[0,0,0],[0,1,1],[1,0,1],[1,1,0]]).
	true.
	
(6)	semigroup(List,List1):
	Input	-	List denotes the set of elements on which the operations would be carried out.
			List1 denotes the set of triplets which are true under the given operation.
	Output	-	returns true if it is a semi group or else returns false.
	
	Example:
	?-	semigroup([0,1],[[0,0,0],[0,1,1],[1,0,1],[1,1,0]]).
	true.
	
(7) 	group(List,List1):
	Input	-	List denotes the set of elements on which the operations would be carried out.
			List1 denotes the set of triplets which are true under the given operation.
	Output	-	returns true if it is a group or else returns false.
	
	Example:
	?-	group([0,1],[[0,0,0],[0,1,1],[1,0,1],[1,1,0]]).
	true.
	
(8)	abelgroup(List,List1):
	Input	-	List denotes the set of elements on which the operations would be carried out.
			List1 denotes the set of triplets which are true under the given operation.
	Output	-	returns true if it is an abelian group or else returns false.
	
	Example:
	?-	abelgroup([0,1],[[0,0,0],[0,1,1],[1,0,1],[1,1,0]]).
	true.

***********************************************************************Internal Function Calls*******************************************************************
(9)	bin_op_is_correct1(Op,List):
	Checks whether the given List is closed under the operation Op.
	
(10)	bin_op_is_correct(List1,List):
	Checks whether the given List is closed under the operations defined in List1.
	
(11)	bin_op_is_associative1(Op,List):
	Checks whether the given List is associative under the operation Op.
	
(12)	bin_op_is_associative(List1,List):
	Checks whether the given List is associative under the operations defined in List1.
	
(13)	bin_op_is_commutative1(Op,List):
	Checks whether the given List is Commutative under the operation Op.
	
(14)	bin_op_is_commutative(List1,List):
	Checks whether the given List is Commutative under the operations defined in List1.
	
(15)	el_is_identity1(Op,N,List):
	Checks whether N is the identity of the List under operation Op.

(16)	el_is_identity(List1,N,List):
	Checks whether N is the identity of the List under the operations defined in List1.
	
(17)	inverse1(Op,X,Y,List):
	Checks whether X is the inverse of Y under the operation Op.

(18)	inverse(List1,X,Y,List):
	Checks whether X is the inverse of Y under the operations defined in List1.
	
(19)	bin_op_is_invertible1(Op,Exc,List):
	Checks whether binary operation 'Op' on List is invertible or not. 

(20)	bin_op_is_invertible(List1,Exc,List):
	Checks whether binary operations defined in List1 on List are invertible or not.
	
(21)	bin_op('N',X,Y,Z,List)::
    	N stands for the operation. This checks whether X,Y,Z are members of the list, where Z is the result of X and Y being operated under the operation 'N'.

(22)	declare_bin_op(Op):
	Checks whether the given input operation 'Op' is defined earlier or not.
	
(23)	element(X,List):
	Checks whether X is an element of the 'List'.
	
(24)	leng(List,X):
	'X' is the length of the list 'List'.

*****************************************************************************************************************************************************************
*****************************************************************************************************************************************************************
*****************************************************************************************************************************************************************

QUESTION 2:
We have defined all the four functionalities as per question paper and have added the functionality to check whether a student has a 'I' or 'GA' report in any subject.

Knowledge Base contains the information of three First Degree students namely 'Utkarsh', 'Devashish' and 'Manish' and one PHD Student 'Akash' and the list of subjects taken by them.
*************************************************************************Main Functions Calls*********************************************************************

(1)	cgpaByStudentName(Name,CGPA):
	Calculates the CGPA by name if it is stored in the Knowledge Base.
	Inputs 	- 	Name of the student whose CGPA has to be calculated has to be provided in 'Name' field. Format used for Name is String(enclosed in single 	quotes).
			- 	CGPA is the variable which contains the CGPA after evaluation of this predicate.
	Output 	- 	Prints the CGPA of 'Name' and also checks whether the student has some disciplinary cases against him, if yes then it gives him a 'GA' report 	and doesn't print the CGPA then.
	Example:
	?- 	cgpaByStudentName('Utkarsh',CGPA).
	CGPA = 9.634146341463415.
	?- 	cgpaByStudentName('Manish',CGPA).
	Manish has a case of unfair means or discipline against him, so he has GA report.
	true.

(2) reportGradesOfStudent(Name):
	Lists the Non-Letter Report Grades obtained by student in a Specific Course.
	Input 	- 	Name of the student whose CGPA has to be calculated has to be provided in 'Name' field. Format used for Name is String(enclosed in single 	quotes).
	Output 	- 	Checks whether the student has some disciplinary cases against him, if yes then it gives him a 'GA' report and doesn't print the list or else 	it prints the entire list.
	Example:
	?-	reportGradesOfStudents('Devashish').
	Devashish Performance in Subjects are: 
	C441T	- 	POOR ; 
	G529 	- 	GOOD ; 
	C412P 	- 	I ; 
	true.
	?-	reportGradesOfStudents('Manish').
	Manish has a case of unfair means or discipline against him, so he has GA report.
	
(3)	isStudentNC(Name):
	Displays all the implications of the 'NC' grade obtained by the student 'Name'. The NC grade can be obtained only in the following type of courses-	Thesis, Seminar, CDC, ELECTIVE, Practice School.
	Input 	- 	Name of the student whose CGPA has to be calculated has to be provided in 'Name' field. Format used for Name is String(enclosed in single 	quotes).
	Output	-	Displays all the implications of the 'NC' grade obtained by the student 'Name'.
	Example:
	?-	isStudentNC('Akash').
	Register in the course CSF222 again
	In other subjects you don't have NC.
	true.

(4)	doesStudentHasIGrade(Name):
	Displays what should a student do if he has 'I' Report.
	Input 	- 	Name of the student whose CGPA has to be calculated has to be provided in 'Name' field. Format used for Name is String(enclosed in single 	quotes).
	Output	-	Checks whether the student 'Name' has 'I' report in any of the subject, if yes then it checks whether its a regular course or summer term 	course and answers accordingly.
	Example:
	?-	 doesStudentHasIGrade('Utkarsh').
	You have an 'I' Report in BITSF112, so contact the Instructor-in-Charge within two weeks after the end of semester for the replacement of the 'I' report.
	true.
	?- doesStudentHasIGrade('Devashish').
	You have an 'I' Report in C412P, so contact the Instructor-in-Charge within one week after the end of summer term for the replacement of the 'I' report.
	true.

**********************************************************************Some Internal Calls****************************************************************************
(5)	calculate_Cgpa([H1|T1],[H2|T2],Acc,CgNum,CgNumNew1): 
	Helps in calculating CGPA recursively. Used by cgpa(GradeList,SubjectList,CGPA) and cgpaByStudentName(Name,CGPA).
	
(6)	report_Grade(Name,[H|T],SubjectsList,GradesList):
	Calculates the list of subjects and corresponding list of reports recursively.
	
(7)	is_NC_Calc([G|T1],[S|T2],[C|T3]):
	Checks whether a grade 'G' is 'NC'. If it is then it calls another predicate on the basis of Course Type 'C'.

(8)	is_NC_in_PC(_):
	Displays the consequence of getting an 'NC' in PRACTICE SCHOOL.

(9)	is_NC_in_PS(_):
	Displays the consequence of getting an 'NC' in PROJECT COURSE.

(10)	is_NC_in_ELEC(Subject):
	Displays the consequence of getting an 'NC' in an ELECTIVE.

(11)	is_NC_in_CDC(Subject):
	Displays the consequence of getting an 'NC' in a CDC.
	
(12)	report_I([S|T1],[G|T2],[C|T3]):
	Recursively checks whether a student has an 'I' report in any of the subjects and if one has, then it prints what to do.
	
**********************************************************************Some Useful Relations***************************************************************************
(13)	appendList([H|T],L2,[H|L3]):
	Appends L2 to [H|T] and forms [H|L3] recursively.

(14)	displayList([H1|T1],[H2|T2]):
	Recursively Calls to print non letter courses and corresponding grades.

***************************************************************************Knowledge Base*****************************************************************************
(15)	grade('X',n):
	'X' stands for the grade and n stands for its grade point .
	n>0 for letter grade courses and n=-1 for non letter grade courses.
	n=0 for X = 'NC' or 'W'.

(16)	studentName('N','C','G','CT'):
	'N' stands for name of student.
	'C' stands for course no in which 'N' is enrolled.
	'G' stands for grade obtained by'N' in 'C'.
	'CT' stands for course type.

(17)	subjectName('Name',n):
	'Name' Stands for course No. 
	n stands for the credits of the subject 'Name'.

(18)	studentStatus('N','X'):
	'N' stands for the name of the student.
	'X' = 'NORMAL' if he doesn't have any disciplinary cases pending against him.
	'X' = 'CASE AGAINST' if he has any disciplinary cases pending against him.
***********************************************************************************************************************************************************************
***********************************************************************************************************************************************************************
***********************************************************************************************************************************************************************