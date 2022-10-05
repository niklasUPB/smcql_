SELECT A.use_case2_id , B.use_case2_id 
FROM A_use_case2 A JOIN B_use_case2 B ON A.A_use_case2_bool  = B.B_use_case2_bool
WHERE A_use_case2_bool = 1 AND B_use_case2_bool = 0 

