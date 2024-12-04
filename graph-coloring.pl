% Input: Graph edges and number of colors.
% Specify the edges of the graph using the predicate edge/2.
edge(a, b).
edge(b, c).
edge(a, c).

% Specify the number of colors using the predicate num_colors/1.
num_colors(3).

% Assign one color to each node.
1 { color(V, C) : color_id(C) } 1 :- vertex(V).

% Ensure no two adjacent vertices have the same color.
:- edge(V1, V2), color(V1, C), color(V2, C).

% Define color IDs.
color_id(1..N) :- num_colors(N).

% Extract all vertices from the edges.
vertex(V) :- edge(V, _).
vertex(V) :- edge(_, V).

% Define an optimization goal to minimize the maximum color used.
% #minimize { C : color(V, C) }.
