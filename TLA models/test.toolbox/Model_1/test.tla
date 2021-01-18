-------------------------------- MODULE test --------------------------------
\*void main()
\*{
\*  i = someNumber();
\*  i = i + 1;
\*}

EXTENDS Integers
VARIABLES i, pc

Init == (pc = "start") /\ (i = 0)

Next == \/  /\ pc = "start"
            /\ i' \in 0..1000
            /\ pc' = "middle"
        \/  /\ pc = "middle"
            /\ i' = i + 1
            /\ pc' = "done"            




=============================================================================
\* Modification History
\* Last modified Mon Jan 18 21:50:57 EET 2021 by macro
\* Created Mon Jan 18 21:22:42 EET 2021 by macro
