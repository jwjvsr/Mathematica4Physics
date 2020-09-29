#!/usr/bin/env wolframscript
(* ::Package:: *)

(* ::Subtitle:: *)
(*Home Work Problems Week 4*)


(* ::Input:: *)
(*Remove["Global`*"]*)


(* ::Input:: *)
(*$Assumptions=m>0\[And] \[HBar]>0\[And] \[Omega]>0\[And]xc>0\[And]cy>0\[And]Element[nx , Integers] \[And]Element[ny , Integers]*)


(* ::Subsubsection:: *)
(*Definition of the 1D wavefunction*)


(* ::Input:: *)
(*Subscript[\[Psi], n_][x_]=HermiteH[n,x]E^-x^2*)


(* ::Subsubsection:: *)
(*2D wave function*)


(* ::Input:: *)
(*Subscript[\[Psi]d, n_,m_][x_,y_]=HermiteH[n,x]E^(-(x^2/2)) HermiteH[m,y]E^(-(y^2/2))*)


(* ::Text:: *)
(*Calculation of the normalisation of the wavefunction*)


(* ::Input:: *)
(*norm12=\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]*)
(*\*SuperscriptBox[\( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(1, 2\)]\)[x, y]\), \(2\)] \[DifferentialD]x \[DifferentialD]y\)\)*)


(* ::Input:: *)
(*norm00=\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]*)
(*\*SuperscriptBox[\( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(0, 0\)]\)[x, y]\), \(2\)] \[DifferentialD]x \[DifferentialD]y\)\)*)


(* ::Subsection:: *)
(*Definition of the Hamiltonians*)


(* ::Input:: *)
(*h0=(-\!\( *)
(*\*SubscriptBox[\(\[PartialD]\), \(x, x\)]#\)+x^2 #- \!\( *)
(*\*SubscriptBox[\(\[PartialD]\), \(y, y\)]#\)+y^2 #)&*)


(* ::Input:: *)
(*h1=\[Delta] x y (x^2+y^2)# &*)


(* ::Subsection:: *)
(*Apply the *)


(* ::Input:: *)
(*h0 @(Subscript[\[Psi], 1][x] Subscript[\[Psi], 1][y])*)


(* ::Subsection:: *)
(*Definition of matrix-elements*)


(* ::Input:: *)
(*Subscript[me, n1_,m1_,n2_,m2_]:=\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\(( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n1, m1\)]\)[x, y]\ h0\ @\ *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n2, m2\)]\)[x, y])\) \[DifferentialD]x \[DifferentialD]y\)\)/(Sqrt[\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]*)
(*\*SuperscriptBox[\( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n1, m1\)]\)[x, y]\), \(2\)] \[DifferentialD]x \(\(\[DifferentialD]\)\(y\)\(\ \ \)\)\)\)] Sqrt[\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]*)
(*\*SuperscriptBox[\( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n2, m2\)]\)[x, y]\), \(2\)] \[DifferentialD]x \[DifferentialD]y\)\)])*)


(* ::Input:: *)
(*Subscript[med, n1_,m1_,n2_,m2_]:=\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\(( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n1, m1\)]\)[x, y]\ h1\ @\ *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n2, m2\)]\)[x, y])\) \[DifferentialD]x \[DifferentialD]y\)\)/(Sqrt[\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]*)
(*\*SuperscriptBox[\( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n1, m1\)]\)[x, y]\), \(2\)] \[DifferentialD]x \(\(\[DifferentialD]\)\(y\)\(\ \ \)\)\)\)] Sqrt[\!\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]\( *)
(*\*SubsuperscriptBox[\(\[Integral]\), \(-\[Infinity]\), \(\[Infinity]\)]*)
(*\*SuperscriptBox[\( *)
(*\(\*SubscriptBox[\(\[Psi]d\), \(n2, m2\)]\)[x, y]\), \(2\)] \[DifferentialD]x \[DifferentialD]y\)\)])*)


(* ::Text:: *)
(*Some values calculated.*)


(* ::Input:: *)
(*Subscript[me, 0,0,0,0]*)


(* ::Input:: *)
(*Subscript[med, 0,0,1,1]*)


(* ::Subsubsection:: *)
(*Making a list of quantum numbers of the possible wavefunctions*)


(* ::Input:: *)
(*range={{0,0},{0,1},{1,0},{0,2},{2,0},{1,1}}*)


(* ::Subsubsection:: *)
(*Constructing Hamiltonians Subscript[H, 0] and H' from the matrix elements over the range of wavefunctions*)


(* ::Input:: *)
(*mat0=Table[Subscript[me, range[[i,1]],range[[i,2]],range[[j,1]],range[[j,2]]],{i,1,6},{j,1,6}]*)
(*mat0//MatrixForm*)


(* ::Input:: *)
(*mat1=Table[Subscript[med, range[[i,1]],range[[i,2]],range[[j,1]],range[[j,2]]],{i,1,6},{j,1,6}]*)
(*mat1//MatrixForm*)


(* ::Input:: *)
(*Eigensystem[(mat0+mat1)/.\[Delta]->1]//N//Simplify*)
