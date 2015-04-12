/********************************************************************************
A flowchart of the Honors Math Degree Program, including other possible courses
of interest.

Date: 2014-07-04
Author: Jesse Frohlich

To do:
    - Add a legend describing the color code.
        - Grey: required for Honors Math
        - Blue: optional but interesting
        - Red:  graduate level course
        (Personal only)
        - Green: Courses I've completed
        - Yellow: Courses I'm registered in
    - Create a git repository for this file
        - have multiple editions, one personal, one for the U of A
********************************************************************************/
size(0,750);

import flowchart;

/*block block1=rectangle(Label("Example",magenta),
               pack(Label("Start:",heavygreen),"",Label("$A:=0$",blue),
                "$B:=1$"),(-0.5,3),palecyan,red);
block block2=diamond(Label("Choice?",blue),(0,2),red);
block block3=roundrectangle("Do something",(-1,1));
block block4=bevel("Don't do something",(1,1));
block block5=circle("End",(0,0));*/

real year = 5; // Gap between years (perhaps exclude)
real sem = 0.5; // Gap between semesters
real req = 1.4; // Gap between corequisite courses
real theme = 3; // Gap between Algebra / Analysis / ...

// Analysis
block m117=rectangle(Label("Calculus I"),Label("Math 117"),(0* year,0));
block m118=rectangle(Label("Calculus II"),Label("Math 118"),((0+sem)*year,0));
block m217=rectangle(pack(
    Label("Advanced"),
    Label("Calculus I")),Label("Math 217"),(1* year,0));
block m317=rectangle(pack(
    Label("Advanced"),
    Label("Calculus II")),Label("Math 317"),((1+sem)*year,0));
block m334=rectangle(pack(
    Label("Intro to"),
    Label("Diff. Eqns.")),Label("Math 334"),((1+sem)*year,2req));
block m417=rectangle(pack(
    Label("Real"),
    Label("Variables I")),Label("Math 417"),(2* year,0));
block m418=rectangle(pack(
    Label("Real"),
    Label("Variables II")),Label("Math 418"),((2+sem)*year,-req));
block m411=rectangle(pack(
    Label("Complex"),
    Label("Variables")),Label("Math 411"),((2)*year,1req));
block m448=rectangle(pack(
    Label("Diff. Geometry"),
    Label("\& Tensor Anal.")),Label("Math 448"),(2*year,-2theme+1req));

block m521=rectangle(pack(
    Label("Differential"),
    Label("Manifolds")),Label("Math 521"),(3*year,-2theme+1req),palered);
block m516=rectangle(Label("Linear Analysis"),Label("Math 516"),((3)*year,req),palered);
block m527=rectangle(Label("PDE's"),Label("Math 527"),((3+sem)*year,2req),palered);
block m542=rectangle(Label("Fourier Analysis"),Label("Math 542"),((3)*year,0),palered);
block m518=rectangle(pack(
    Label("Functional"),
    Label("Analysis")),Label("Math 518"),((3+sem)*year,1req),palered);
block m643=rectangle(pack(
    Label("Topics in"),
    Label("Analysis")),Label("Math 643"),((4)*year,req),palered);
block m519=rectangle(pack(
    Label("Operator"),
    Label("Algebras")),Label("Math 519"),((3+sem)*year,0),palered);
block m641=rectangle(Label("Banach Spaces"),Label("Math 641"),((4)*year,0),palered);
block m642=rectangle(pack(
    Label("Harmonic"),
    Label("Analysis")),Label("Math 642"),((4)*year,-1req),palered);
block m543=rectangle(Label("Measure Theory"),Label("Math 543"),((3)*year,-req),palered);
block m506=rectangle(pack(
    Label("Complex"),
    Label("Variables")),Label("Math 506"),((2+sem)*year,1req),palered);
block m337=rectangle( Label("Intro to PDE's"),Label("Math 337"),((2)*year,2req),paleblue);
block m436=rectangle(Label("PDE's I"),Label("Math 436"),((2+sem)*year,2req),paleblue);
block m438=rectangle(Label("PDE's II"),Label("Math 438"),((2+sem)*year,3req),paleblue);
block m432=rectangle(pack(
    Label("Differential"),
    Label("Equations")),Label("Math 432"),((2)*year,3req),paleblue);
block m524=rectangle(Label("ODE's IIA"),Label("Math 524"),((2+sem)*year,4req),palered);
block m525=rectangle(Label("ODE's IIB"),Label("Math 525"),((3)*year,4req),palered);

// Algebra
block m127=rectangle(pack(
    Label("Linear"),
    Label("Algebra I")),Label("Math 127"),(0* year,-2theme));
block m227=rectangle(pack(
    Label("Linear"),
    Label("Algebra II")),Label("Math 227"),((0+sem)*year,-2theme));
block m328=rectangle(Label("Group Theory"),Label("Math 328"),((1+sem)* year,-2theme));
block m326=rectangle(Label("Rings \& Modules"),Label("Math 326"),(1* year,-2theme-2req));
block m424=rectangle(Label("Groups \& Fields"),Label("Math 424"),((2)* year,-2theme-2req));

block m429=rectangle(pack(
    Label("Advanced"),
    Label("Group Theory")),Label("Math 429"),((2+sem)* year,-2theme),paleblue);
block m428=rectangle(pack(
    Label("Advanced"),
    Label("Ring Theory")),Label("Math 428"),((1+sem)* year,-2theme-1req),paleblue);
block m681=rectangle(pack(
    Label("Topics in"),
    Label("Algebra")),Label("Math 681"),((3+sem)*year,-2theme-req),palered);
block m682=rectangle(pack(
    Label("Topics in"),
    Label("Algebra")),Label("Math 682"),((4)*year,-2theme-req),palered);

// Other
block m447=rectangle(Label("Topology"),Label("Math 447"),((2+sem)*year,-2req));
block m499=rectangle(Label("Research Project"),Label("Math 499"),(2*year,-req));
block m530=rectangle(pack(
    Label("Algebraic"),
    Label("Topology")),Label("Math 530"),((3)*year,-theme+0req),palered);
block m222=rectangle(Label("Discrete Math"),    Label("Math 222"),  ((1+sem)*year,-2theme-5req),    lightgray);
block m322=rectangle(Label("Graph Theory"),     Label("Math 322"),  (2*year,-2theme-5req),          lightgray);
block m422=rectangle(Label("Coding Theory"),    Label("Math 422"),  ((2+sem)*year,-2theme-5req),    lightgray);
block m421=rectangle(Label("Combinatorics"),    Label("Math 421"),  ((2)*year,-2theme-4req),        lightgray);
block m324=rectangle(Label("Number Theory"),    Label("Math 324"),  ((1+sem)*year,-2theme-3req),    paleblue);
block m512=rectangle(pack(
    Label("Algebraic"),
    Label("Number Theory")),                    Label("Math 512"),  ((2+sem)*year,-2theme-2req),    palered);
block m581=rectangle(Label("Group Theory"),Label("Math 581"),((2+sem)*year,-2theme-1req),palered);
block m582=rectangle(Label("Rings \& Modules"),Label("Math 582"),((2+sem)*year,-2theme-3req),palered);

draw(m117);
draw(m118);
draw(m217);
draw(m317);
draw(m334);
draw(m417);
draw(m418);
draw(m411);
draw(m448);
draw(m337);

draw(m521);
draw(m516);
draw(m527);
draw(m542);
draw(m518);
draw(m643);
draw(m519);
draw(m641);
draw(m642);
draw(m543);
draw(m506);
draw(m512);
draw(m581);
draw(m582);

draw(m127);
draw(m227);
draw(m328);
draw(m326);
draw(m424);
draw(m681);
draw(m682);

draw(m429);
draw(m428);

draw(m447);
draw(m499);
draw(m530);
draw(m222);
draw(m322);
draw(m422);
draw(m421);
draw(m324);
draw(m436);
draw(m438);
draw(m432);
draw(m524);
draw(m525);



add(new void(picture pic, transform t) {
    blockconnector operator --=blockconnector(pic,t);
        /*block1--Right--Down--Arrow--block2;
    block2--Label("Yes",0.5,NW)--Left--Down--Arrow--block3;
    block2--Right--Label("No",0.5,NE)--Down--Arrow--block4;
    block4--Down--Left--Arrow--block5;
    block3--Down--Right--Arrow--block5;
    block5--Down--Right--Arrow--m117;*/
    m117--Arrow--m118;
    draw(pic,m118.right(t){right}..{right}m217.left(t),Arrow);
    //draw(pic,m217.right(t){right}..{right}m317.left(t),Arrow);
    m217--Arrow--m317;
    draw(pic,m217.top(t){up}::{right}m334.position(0.5,t),Arrow);
    draw(pic,m317.top(t)--m334.bottom(t),heavygray,Arrow);
    draw(pic,m334.right(t){right}..{right}m337.left(t),Arrow);
    draw(pic,m334.top(t){up}..{right}m432.left(t),Arrow);
    draw(pic,m334.top(t){up}..{right}m524.left(t),Arrow);
    draw(pic,m524.right(t){right}..{right}m525.left(t),Arrow);
    draw(pic,m337.right(t){right}..{right}m436.left(t),Arrow);
    draw(pic,m337.right(t){right}..{right}m438.left(t),Arrow);
    draw(pic,m317.right(t){right}..{right}m417.left(t),Arrow);
    draw(pic,m417.right(t){right}..{down}m418.top(t),Arrow);
    draw(pic,m418.right(t){right}..{right}m542.left(t),Arrow);
    draw(pic,m317.right(t){right}..{right}m411.left(t),Arrow);
    draw(pic,m317.bottom(t){down}..{right}m499.left(t),Arrow);
    draw(pic,m217.bottom(t){down}::{right}m447.left(t),Arrow);
    draw(pic,m217.bottom(t){down}..{right}m448.position(0.7,t),Arrow);
    draw(pic,m447.top(t)--m418.bottom(t),heavygray,Arrow);
    draw(pic,m418.right(t){right}..{right}m543.position(0.5,t),Arrow);
    draw(pic,m417.right(t){right}..{NE}m516.position(0,t),Arrow);
    draw(pic,m516.right(t){right}..{right}m518.left(t),Arrow);
    draw(pic,m516.right(t){right}..{right}m519.left(t),Arrow);
    draw(pic,m516.right(t){right}..{right}m527.left(t),Arrow);
    draw(pic,m436.right(t){right}..{right}m527.left(t),Arrow);
    draw(pic,m519.right(t){right}..{right}m641.left(t),Arrow);
    draw(pic,m519.right(t){right}..{right}m642.left(t),Arrow);
    m411--Arrow--m506;
    draw(pic,m424.position(4.6,t){right}..{right}m512.position(0.8,t),Arrow);

    m127--Arrow--m227;
    draw(pic,m227.right(t){right}..{right}m328.left(t),Arrow);
    draw(pic,m227.bottom(t){down}::{right}m326.position(0.5,t),Arrow);
    draw(pic,m227.top(t){up}.. tension 3 and 1 ..{right}m448.position(0.3,t),Arrow);
    m448--Right--Arrow--m521;
    draw(pic,m328.right(t){right}..{right}m429.position(0.5,t),Arrow);
    draw(pic,m328.right(t){right}..{right}m581.position(0.5,t),Arrow);
    draw(pic,m326.right(t){right}..{right}m424.position(0.5,t),Arrow);
    draw(pic,m326.right(t){right}..{right}m582.position(0.5,t),Arrow);
    draw(pic,m328.right(t){right}..{down}m424.top(t),Arrow);
    draw(pic,m326.top(t){up}..{right}m428.left(t),Arrow);
    draw(pic,m681.right(t){right}..{right}m682.left(t),Arrow);

    draw(pic,m447.right(t){right}::{right}m530.position(0.8,t),Arrow);
    draw(pic,m227.top(t){up}::{right}m530.position(0.2,t),Arrow);
    draw(pic,m317.bottom(t){down}::{right}m530.position(0.5,t),Arrow);
    draw(pic,m222.right(t)--m322.left(t),dotted,Arrow);
    draw(pic,m322.right(t)--m422.left(t),dotted,Arrow);
    draw(pic,m326.bottom(t){down}::{right}m324.position(0.5,t),Arrow);
});
