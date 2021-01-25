---- MODULE MC ----
EXTENDS weding, TLC

\* CONSTANT definitions @modelParameterConstants:0RM
const_161143346964662000 == 
{"r1"}
----

\* INIT definition @modelBehaviorInit:0
init_161143346964663000 ==
TPInit
----
\* NEXT definition @modelBehaviorNext:0
next_161143346964664000 ==
TPNext
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_161143346964665000 ==
TPTypeOK
----
=============================================================================
\* Modification History
\* Created Sat Jan 23 22:24:29 EET 2021 by macro
