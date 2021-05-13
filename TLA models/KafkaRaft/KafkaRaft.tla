----------------------------- MODULE KafkaRaft -----------------------------

CONSTANT Nodes \* Nodes in a cluster

VARIABLE nodeState \* State in which node can be

(*************************************************************************)
(* States which node can be in                                       *)
(*************************************************************************)
KRTypeOK == 
    nodeState \in [Nodes -> {"Observer","Follower","Candidate","Leader"}]


(*************************************************************************)
(* All nodes start at Follower State(reikia patiklinti ar tikrai)                                     *)
(*************************************************************************)
KRInit == 
    nodeState = [s \in Nodes |-> "Follower"]
    
    
(***********)
(*STARTS HERE*)
(*This is where concensus APIs will be*)
(*Work in progress*)
(***********)
Vote(n) == nodeState[n] = "Follower"

BeginQuorumEpoch(n) == nodeState[n] = "Follower"

EndQuorumEpoch(n) == nodeState[n] = "Leader"

Fetch(n) == nodeState[n] = "Follower"

DescribeQuorum(n) == nodeState[n] = "Follower"

BecomeLeader(n) == /\ nodeState[n] = "Follower"
                   /\ nodeState' = [nodeState EXCEPT ![n] = "Leader"]




(*ENDS HERE*)
(**************)
(* IDs of voters who are participating in election*)
(**************)
voters == <<32,32,32>>


(*************)
(* Cluster quorum state which describes election and leader information*)
(************)
quorumState == [clusderId |-> "clusterId", 
                leaderId |-> 32, 
                leaderEpoch |-> 32,
                votedId |-> 32,
                appliedOffset |-> 64,
                currentVoters |-> voters]
=============================================================================
\* Modification History
\* Last modified Tue Feb 02 19:10:20 EET 2021 by macro
\* Created Mon Feb 01 21:36:48 EET 2021 by macro
