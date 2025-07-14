#import "@preview/orange-book:0.6.1": (
  appendices, book, chapter, corollary, definition, example, exercise, index,
  make-index, my-bibliography, notation, part, problem, proposition, remark,
  scr, theorem, update-heading-image, vocabulary,
)

#let bigo(fun) = box($cal(O) lr((fun))$)
#let bigom(fun) = box($Theta lr((fun))$)
#let bigth(fun) = box($Omega lr((fun))$)

#set page(foreground: rotate(
  75deg,
  text(60pt, fill: gradient.linear(..color.map.rainbow))[
    *DRAFT*

    Copyright © 2025

    Khalid Hourani

    All Rights Reserved
  ],
))

//#set text(font: "Linux Libertine")
//#set text(font: "TeX Gyre Pagella")
//#set text(font: "Lato")
//#show math.equation: set text(font: "Fira Math")
//#show math.equation: set text(font: "Lato Math")
//#show raw: set text(font: "Fira Code")

#show: book.with(
  title: "Algorithms",
  subtitle: "A Textbook",
  date: "2025",
  author: "Khalid Hourani",
  main-color: rgb("#D73C5B"),
  lang: "en",
  // cover: image("./background.svg"),
  // image-index: image("./orange1.jpg"),
  // list-of-figure-title: "List of Figures",
  // list-of-table-title: "List of Tables",
  supplement-chapter: "Chapter",
  supplement-part: "Part",
  part-style: 0,
  copyright: [
    Copyright © 2025 Khalid Hourani All Rights Reserved

    #link(
      "https: //github.com/khalid-salad/algorithms-textbook",
      "https://khalid-salad.github.io/books/algorithms",
    )
  ],
  lowercase-references: false,
)

#part("Introduction and Preliminaries")

= Introduction
#index("Intro")
== What is an Algorithm?
#index("Intro!WhatIsAnAlgo")
== What this Book Covers
#index("Intro!WhatThisBookCovers")
= Preliminaries
#index("Prelim")
== Proof Techniques
#index("Prelim!ProofTechniques")
=== Direct Proof
#index("Prelim!ProofTechniques!DirectProof")
=== Proof by Contradiction
#index("Prelim!ProofTechniques!Contradiction")
=== Proof by Contrapositive
#index("Prelim!ProofTechniques!Contrapositive")
=== Proof by Induction
#index("Prelim!ProofTechniques!Induction")
== Rigor
#index("Prelim!Rigor")
== Data Structures
#index("Prelim!DataStructs")
== Asymptotic Complexity
#index("Prelim!AsymptoticComplexity")

= Algorithm Analysis
#index("DescribingAlgos")
== Describing an Algorithm
#index("DescribingAlgos!Description")
=== Pseudocode
#index("DescribingAlgos!Description!Pseudocode")
== Analyzing the Runtime of an Algorithm
#index("DescribingAlgos!Analysis")
== Proving the Correctness of an Algorithm
#index("DescribingAlgos!Correctness")

#part("Divide and Conquer")
= Introduction
#index("DCIntro")
== The Divide and Conquer Strategy
#index("DCIntro!DCStrat")
=== Fibonacci
#index("DCIntro!DCStrat!Fibonacci")
=== Permutations and Powerset
#index("DCIntro!DCStrat!PermsPowerset")
== Analyzing Recurrences
#index("DCIntro!AnalyzingRecurrences")
=== Fibonacci
#index("DCIntro!AnalyzingRecurrences!Fibonacci")
=== Permutations and Powerset
#index("DCIntro!AnalyzingRecurrences!PermsPowerset")

= Sorting
#index("Sorting")
== $bigo(n^2)$ Algorithms
#index("Sorting!SlowAlgos")
== Mergesort
#index("Sorting!MergeSort")
== Quicksort
#index("Sorting!QuickSort")

= Selection
#index("Selection")
== Quickselect
#index("Selection!Quickselect")
== Median of Medians
#index("Selection!MedianOfMedians")

#part("Dynamic Programming")
= Introduction
#index("DP!Intro")
== The Spirit of Dynamic Programming
#index("DP!Intro!Spirit")
// optimal substructure property
== Fibonacci Revisited
#index("DP!Intro!Fib")
=== Cacheing (also called `memo`ization)
#index("DP!Intro!Fib!Cache")
=== Bottom-up
#index("DP!Intro!Fib!BottomUp")

= A Methodology for Dynamic Programming
#index("DPMethodology")
== Specifying Subproblems
== The Recursive Formulation
== Tracing The Solution

= The Matrix Chain Multiplication Problem
== Subproblems
== Recursive Formulation
== Traceback
== Altogether

= More Dynamic Programming
== Specifying Auxiliary Subproblems
=== The Max-Sum Problem (Kadane's Algorithm)
=== The Longest Increasing Subsequence Problem

= The Integer Knapsack Problem
== Subproblems
== Recursive Formulation
== Traceback
== Altogether

= Greedy Algorithms
== What is a Greedy Algorithm?
== When to Use a Greedy Algorithm
== Fractional Knapsack
== Average Search on Magnetic Tape
== Huffman Code

#part("Graphs")
= Introduction
== What is a Graph
== Types of Graphs
//  simple graphs for us
== Paths and Cycles
// simple path, simple cycle

= Graph Traversal in an Undirected Graph
== Depth-First and Breadth-First Search
=== Connected Components
=== Cut Vertices and Edges

= Graph Traversal in a Directed Graph
== Depth-First and Breadth-First Search
=== Cycle Detection
== Strong Connectivity and the Component Graph
=== Topological Sort on a Directed Acyclic Graph (DAG)
== Strongly Connected Components (Kosaraju's Algorithm)

= The Minimum Spanning Tree Problem
== Introduction
== The Cycle Property and Cut Property
== Uniqueness of the MST
== Prim's Algorithm
== Kruskal's Algorithm
== Borůvka's Algorithm

= The Shortest Path Problem
== When the Shortest Path is not Well-Defined
== A Naive Shortest Path Algorithm
== Dijkstra's Algorithm
== Bellman-Ford
== Floyd-Warshall
== Practical Considerations
