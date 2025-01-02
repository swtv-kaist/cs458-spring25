# KAIST CS458 Dynamic Analysis of Software Source Code (소프트웨어 소스 코드 기반 동적 분석) Spring'24

## Announcement
- May 26: A makeup class movie file for concolic testing is uploaded 
- May 24: Please run only 1 instance of AFL++ per person, since no one can run AFL++ if all CPU cores of a server are occupied by AFL++ instances.
- May 16: No class on May 21 due to graduate applicant interview
- May 9: We will have 10 more minutes in each of the remaining classes, instead of having makeup classes.
- May 9: Offline class on May 14 (Tues) and online class on May 16 (Thurs) as usual
- Apr 11: The due dates of HW#3 and HW#4 are postponed as follows for you to focus on midterm exams ;-)
  -  HW#3 due date: April 20
  -  HW#4 due date: April 30

- Mar 11: Online class on Mar 19 (Tues), Offline class on Mar 21 (Thurs)
- Feb 15: Midterm exam on April 23 (1 week later from the midterm exam period) due to the conflict w/ ICSE 2024 (April 14-20)

- Feb 22: CS458 class room is changed to E3 RM#1101 
## Administrative Information

- Instructor: [Prof. Moonzoo Kim](https://swtv.kaist.ac.kr/members/mzkim)

  - Office: 2434 (located at the east wing of E3-1)
  - Phone: 042-350-3543
  - E-mail: moonzoo.kim @ gmail.com
  - Office hour: Tues 4:00-5:00 PM (reservation e-mail is preferred)

- Teaching assistants: Youngseok Choi (youngseok.choi@kaist.ac.kr) 

- Lecture hours: Tue/Thur 5:30 - 6:45 PM

- Lecture room: E3 Rm#1101 (and through Zoom)
  - a face-to-face lecture on Tues and an online lecture on Thurs (this plan may change later) 
  - Zoom link for Thurs class: https://kaist.zoom.us/j/5258253316

- Recommended prerequisite: CS230 System Programming, proficiency in C/C++ programming and Linux utilities
  - Due to the high load of TA, TA will not provide help for basic C/C++/Linux questions.
  - This class can be difficult to follow for exchange students.
  <!-- hly recommend to take CS458 after taking CS230 System Programming first -->
  
- Grading: attendance/class participation/quiz: 20%, HW: 50%, mid/final exams:30%
  - You should turn on your web cam when you participate an online class; class attendance will not be counted otherwise.
  - More than 7 absences of the class will get F grade
  - Late attendance shall be counted as 1/3 absence. If a student is not able to attend a class due to an important event (e.g., attending conf., etc.), he/she should submit 1 week prior notice to the professor.
  - The official language in the class is English. All students should submit all written documents such as homework, project reports, exam, etc. in English; 20% penalty of the max score otherwise.  

- Homework:
  - Homework should be submitted through KLMS https://klms.kaist.ac.kr/course/view.php?id=156169
    - Hint: many questions of exams are from the homeworks.
  - Late HW will be accepted with 10% penalty of the max score in 1 day, 30% penalty of the max score in 3 days. HW will not be accepted after then.
  - All programming HWs you submit must be able to be replayed by executing a single script file on a TA's server account (i.e., submitted HW should not have a dependency on your home directory, environment, etc.).  Also, the replayed execution must demonstrate the same output to the submitted hw. You will get 10% penalty of the max score otherwise.
  - For your programming HWs, you should not use external libraries which are not available on the server machines.  If you really need an external library, you have to ask TAs to install it on the server machines.
  - Please, include your student ID in the name of your submiited file(s), so that TAs can easily identify which files are yours.
  
- Questions on the course materials and homeworks should be posted as github issues 
  - https://github.com/swtv-kaist/cs458-spring24/issues
  - You can see the Q&A of the previous year's CS458 class
    - https://github.com/swtv-kaist/cs458-spring23/issues

- Excerpts from 강의평가 (4.93 out of 5 in Spring 23)
    
    - "이번 학기에 졸업하는데, 지금까지 들은 과목 중 가장 재미있고 실용적이었던 것 같아요! 과제도 이전 평에 비해 너무 어렵지 않고 딱 적당했던 것 같습니다."  
    - "테스팅에 대해 많이 배워갈 수 있었습니다. 과제가 많긴 하지만 다 도움이 되는 것 같습니다. 감사합니다."
    - "먼저, 좋은 강의 해주셔서 진심으로 감사합니다. 본 강의를 통해 전반적인 테스팅 기법들에 대해 알 수 있었던 것 같습니다. 특히, fuzzing, concolic testing, SMT solver 등 실질적으로 써먹을 수 있는 기법들을 실습과 병행해서 잘 배울 수 있었던 것 같습니다... 이번 학기 가장 많은 것을 얻은 과목이라고 자부합니다. 교수님께서 학생들에게 진심을 다해 강의해주시는 모습을 보며 큰 동기부여가 되었고, 많은 지식을 습득할 수 있었던 것 같습니다. 항상 감사합니다."
    
- [Online exam instruction for students w/ COVID-19](online-exam-instructions-v2.pdf)


## Syllabus
This class covers automated SW testing/verification techniques to detect SW bugs by analyzing **SW source code** and its **diverse runtime behaviors**. In particular, this class focuses to teach techniques that automatically generate test cases to achieve high code coverage and, thus, to detect many bugs. 

The class teaches **practical applications** of testing/verification techniques by applying open-source testing/verification tools to complete homework tasks. Also, it guides students to learn the underlying fundamental algorithms of such techniques/tools to improve the performance of automated testing/verification.

## Course Schedule

### Part I: Overview of High SW Complexity and Testing

*“Software testers do not make software; they only make them better.” – Anonymous*

- Feb 27 : [Introduction](1-overview/lec1-Intro-AutomatedSWAnalysis_v11.pptx) [[pdf]](1-overview/lec1-Intro-AutomatedSWAnalysis_v11.pdf)

<!--  Feb 28 : <a href="part2-coverage/lec1-Intro-AutomatedSWAnalysis_v11.pptx" download> Introduction2 </a> -->

- Feb 29: [Necessity for systematic & automated testing techniques](1-overview/lec2-Intro-HighComplexitySW_v9.pptx) [[pdf]](1-overview/lec2-Intro-HighComplexitySW_v9.pdf)

  - "Variability and Reproducibility in Software Engineering: A Study of Four Companies that Developed the Same System" by Anda et al.
IEEE Trans. on Software Engineering vol. 35, no. 3, pp. 407-429, May-June 2009.

- Mar 5: [Overview of testing techniques (including the input partitioning technique)](1-overview/lec3-testing-overview-v3.pptx) [[pdf]](1-overview/lec3-testing-overview-v3.pdf)

 

### Part II: Source Code Coverage Criteria 

*“It’s hard enough to find an error in your code when you’re looking for it; it’s even harder when you’ve assumed your code is error-free.”— Steve McConnell*

- Mar 7: [Graph coverage](2-coverage/lec4-graph_coverage-v4.pptx) [[pdf]](2-coverage/lec4-graph_coverage-v4.pdf)

  - [Intro to Software Testing web site](https://cs.gmu.edu/~offutt/softwaretest/)
  - "An Experimental Comparison of Four Unit Test Criteria: Mutation, Edge-Pair, All-uses and Prime Path Coverage" by Nan Li et al. '09 Intl. Conf. on Software Testing, Verification, and Validation Workshops


- Mar 12, 14: [Graph coverage for source code](2-coverage/lec5-graph-coverage-code.pptx) [[pdf]](2-coverage/lec5-graph-coverage-code.pdf),
  [Generating CFG using GCC and Graphviz](2-coverage/lec5.5-cfg-generation-v2.pptx) [[pdf]](2-coverage/lec5.5-cfg-generation-v2.pdf) 
   - http://www.webgraphviz.com/
   - Cyclometic complexity (또다른 한글문서) https://www.guru99.com/cyclomatic-complexity.html
   - Useful commercial tools to manually analyze SW:
     - Understand C++ (https://scitools.com)  (free academic version available)
     - Source Insight (https://www.sourceinsight.com/)

- Homework 1: Graph coverage (Due Mar 21)

- Mar 19: [gcov tutorial](2-coverage/lec6-gcov-llvm-cov-v6.pptx) [[pdf]](2-coverage/lec6-gcov-llvm-cov-v6.pdf)  
   - [gcc manual](https://gcc.gnu.org/onlinedocs/gcc/Option-Summary.html), [gcov manual](https://gcc.gnu.org/onlinedocs/gcc/Gcov.html)
     

- Mar 21, 26: [Logic coverage](2-coverage/lec9-Logic-covearge-v3.pptx) [[pdf]](2-coverage/lec9-Logic-covearge-v3.pdf)
  - [Example](2-coverage/lec9.5-ACC-ICC-example.pptx) [[pdf]](2-coverage/lec9.5-ACC-ICC-example.pdf)

- Homework 2: Manual testing of `grep` utility for branch coverage (graph coverage)

- Mar 28:  [Logic coverage from source code](2-coverage/lec10-logic-covearge-code-v3.pptx) [[pdf]](2-coverage/lec10-logic-covearge-code-v3.pdf)

- Apr 2, 4: [Mutation testing](2-coverage/lec11-mutation-testing-v2.pptx) [[pdf]](2-coverage/lec11-mutation-testing-v2.pdf) 
  - ["Design Of Mutant Operators For The C Programming Language" by Agrawal et al](2-coverage/mutop-design-harness.pdf)
  - ["MUSIC: MUtation analySIs tool with high Configurability and extensibility" by Phan et al (Mutation Workshop 18)](https://swtv.kaist.ac.kr/publications/music-mutation18.pdf)
    - [Github repo of MUSIC](https://github.com/swtv-kaist/MUSIC)

- Homework 3: Manual testing of `tcas` utility for MC/DC coverage (logic coverage) (Due April 20 midnight)



### Part III:  Code Analysis Framework - Clang and LLVM IR Pass  
-  Apr 4: [Clang tutorial 1/2: Clang AST](3-clang-llvm/lec7-Clang-tutorial-v2.pptx) [[pdf]](3-clang-llvm/lec7-Clang-tutorial-v2.pdf)
   - [clang_example.c](https://github.com/swtv-kaist/cs458-spring23/blob/main/2-coverage/code/clang/clang_example.c)

- Apr 9: [Clang tutorial 2/2: a program analysis tool by using Clang](3-clang-llvm/lec8-building-Clang-analyzer-v3.pptx) [[pdf]](3-clang-llvm/lec8-building-Clang-analyzer-v3.pdf)
  - [PrintFunction.cpp](https://github.com/swtv-kaist/cs458-spring23/blob/main/2-coverage/code/clang/PrintFunction.cpp)
  - [Document for useful clang APIs](https://3-24.github.io/cs458-manual/docs/clang-inst/)

- Apr 11: Q&A for midterm exam

- Homework 4: kcov coverage tool (Clang) (Due April 30 midnight)


- **Apr 23: Midterm exam (closed book, NOT including Clang part) 5:30-7:00 pm**

- Apr 25: [LLVM IR](3-clang-llvm/lec12-llvm-ir-v4.pptx) [[pdf]](3-clang-llvm/lec12-llvm-ir-v4.pdf)
  - [LLVM Language Reference Manual](https://llvm.org/docs/LangRef.html)

- Apr 30, May 2: [LLVM pass](3-clang-llvm/lec13-llvm-pass-v3.pptx) [[pdf]](3-clang-llvm/lec13-llvm-pass-v3.pdf), [Clang vs LLVM IR](3-clang-llvm/lec14-clang-vs-llvm.pptx) [[pdf]](3-clang-llvm/lec14-clang-vs-llvm.pdf)
  - [Template code for LLVM pass (including a complete intwrite example)](3-clang-llvm/code/llvm/kcov-llvm.tar.gz)

- Homework 5: kcov coverage tool (LLVM IR) (Due May 14 midnight)

- May 7: [Automated Bug Detection through Static Analysis](3-clang-llvm/lec15-coverity-v2.pptx) [[pdf]](3-clang-llvm/lec15-coverity-v2.pdf)

### Part IV: Automated Test Generation: Fuzzing 
- May 7: [Modern fuzzing technique overview (i.e., coverage-guided automated greybox testing)](4-fuzzing/lec41-intro-to-afl++-v2.pptx) [[pdf]](4-fuzzing/lec41-intro-to-afl++-v2.pdf) 
  - [The fuzzing book online class](https://www.fuzzingbook.org/)
  - [OSS Fuzz](https://github.com/google/oss-fuzz)
  
- May 9: [AFL++ (american fuzzy lop) fuzzer tutorial](4-fuzzing/lec42-fuzzing_with_afl++-v3.pptx) [[pdf]](4-fuzzing/lec42-fuzzing_with_afl++-v3.pdf)
  - [AFL++](https://github.com/AFLplusplus/AFLplusplus)
  - [AFL++ document](https://github.com/AFLplusplus/AFLplusplus/tree/stable/docs)

<!-- - May 14 : [Advanced Issues on Fuzzing](4-fuzzing/lec40-greybox-fuzzing-v4.pptx) [[pdf]](4-fuzzing/lec42-fuzzing_with_afl++-v4.pdf) -->

- May 14: [Case study of Fuzzing Application: POWERUP fuzzer](4-fuzzing/lec43-powerup_ICST_2023-v2.pptx) [[pdf]](4-fuzzing/lec43-powerup_ICST_2023-v2.pdf)

- Homework 6: Automated testing of grep by applying AFL++ (Due May 26 midnight)

### Part V: Automated Test Generation: Concolic Testing (aka., Dynamic Symbolic Execution))
- May 16: [Automated SW analysis for high reliability: a Concolic testing approach](5-concolic-testing/lec31-concolic-v6.pptx) [[pdf]](5-concolic-testing/lec31-concolic-v6.pdf)
  - [Industrial Application of Concolic Testing on Embedded Software: Case Studies [ICSE'12 paper]](5-concolic-testing/icst-2012-slp-busybox-ls.pdf)
  - [lec31-concolic-video-part2.mp4](https://drive.google.com/file/d/1XC68_O88FTVCQN_CZs4g0DM6O0OF8xyQ/view?usp=sharing)

- May 21: No class
- May 23: [CROWN tutorial](5-concolic-testing/lec32-crown_tutorial-v3.pptx) [[pdf]](5-concolic-testing/lec32-crown_tutorial-v3.pdf)
  - [tutorial-examples](5-concolic-testing/code/tutorial-examples.zip)

- May 28: [CROWN Examples](5-concolic-testing/lec33-crown-Examples-v2.pptx) [[pdf]](5-concolic-testing/lec33-crown-Examples-v2.pdf),  [Example: Concolic testing a circular queue](5-concolic-testing/lec34-sym-exec-examples-v2.pptx)  [[pdf]](5-concolic-testing/lec34-sym-exec-examples-v2.pdf)
  - [crown_examples.zip](5-concolic-testing/code/crown_examples.zip)


<!---
- : [SMTlib tutorial](5-smt/lec40-smtlibV2-v6.pptx) [[pdf]](5-smt/lec40-smtlibV2-v6.pdf), [SMTLib web page](https://smtlib.cs.uiowa.edu/), [First order theories](5-smt/lec43-first-order-theories.pptx) [[pdf]](5-smt/lec43-first-order-theories.pdf)
  - [SMTlib examples](5-smt/code/smtlib-v2.zip)
  - [SMT-competition 2022](https://smt-comp.github.io/2022/)
  - [CS402 Intro to Logic (Predicate Calculus - Semantics)](https://swtv.kaist.ac.kr/courses/CS402-2013)
--->

- May 30, June 4: [System-level concolic testing: Busybox application examples through CROWN](5-concolic-testing/lec35-printf-grep-vi-system-testing-v3.pptx) [[pdf]](5-concolic-testing/lec35-printf-grep-vi-system-testing-v3.pdf)

- Homework 7: Automated testing of TCAS by applying CROWN (Due June 9 midnight)

- June 4: [Automated unit testing](5-concolic-testing/lec36.automated_unit_testing-v2.pptx) [[pdf]](3-fuzz-concolic/lec36.automated_unit_testing-v2.pdf), [Unit-level concolic testing: Busybox ls example](5-concolic-testing/lec37-ls-unit-testing-v4.pptx) [[pdf]](5-concolic-testing/lec37-ls-unit-testing-v4.pdf)

<!---
- Online makeup class: Industrial case studies (pre-recorded movie clip) (can be included in the final exam)
  - [Automated Unit Testing of Large Industrial Embedded Software using Concolic Testing](3-fuzz-concolic/lec38-conbol.pptx) [[pdf]](3-fuzz-concolic/lec38-conbol.pdf)  [ASE'13 paper] [[Movie (40 min)]](https://drive.google.com/file/d/10DaVUtSZGJiHhHKe-abez7C3XuFQxoBx/view?usp=share_link)
  - [Concolic Testing for High Test Coverage and Reduced Human Effort in Automotive Industry](3-fuzz-concolic/lec39-ICSE19-MAIST-rev18.pptx) [[pdf]](3-fuzz-concolic/lec39-ICSE19-MAIST-rev18.pdf)  [ICSE'19 paper] [[Movie (35min)]](https://drive.google.com/file/d/1G2j92qvfJBkPvIiBIklYE2EWjadEYIiW/view?usp=share_link)
--->


<!---
### Part IV: Testing/Verification Engine - SAT/SMT Solver
- June 1: [Using SAT solver for Sudoku](5-smt/lec44-sudoku-v2.pptx) [[pdf]](5-smt/lec44-sudoku-v2.pdf), Q&A for the final exam, LLVM IR basics, CLANG vs LLVM
  - "Sudoku as a SAT problem" by I.Lynce and J.Ouaknine, Intl. Symp. on Artificial Intelligence and Mathematics 2006
  - The SuDoku Puzzle as a Satisfiability Problem
--->


- **June 13: Final exam (closed book) 5:30-7:00 pm** 

