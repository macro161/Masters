------------------------------ MODULE diehard ------------------------------
EXTENDS Integers

VARIABLES small, big

TypeOK ==       /\ small    \in 0..3
                /\ big      \in 0..5     
            
Init ==         /\ big = 0
                /\ small = 0
        
FillSmall ==    /\ small' = 3
                /\ big' = big
                
FillBig ==      /\ small' = small
                /\ big' = 5
           
EmptySmall ==   /\ small' = 0
                /\ big' = big
                
EmptyBig ==     /\ big' = 0
                /\ small' = small
                
SmallToBig == IF big + small =< 5
                THEN /\ big' = big + small
                     /\ small' = 0
                ELSE /\ big' = 5
                     /\ small' = small - (5 - big)   
                     
BigToSmall == IF big + small =< 3
                THEN /\ big' = 0
                     /\ small' = big + small
                ELSE /\ big' = small - (3 - big)
                     /\ small' = 3    
                     
Next ==         \/ FillSmall
                \/ FillBig
                \/ EmptySmall
                \/ EmptyBig
                \/ SmallToBig
                \/ BigToSmall      


=============================================================================
\* Modification History
\* Last modified Mon Jan 18 22:33:10 EET 2021 by macro
\* Created Mon Jan 18 21:57:45 EET 2021 by macro
