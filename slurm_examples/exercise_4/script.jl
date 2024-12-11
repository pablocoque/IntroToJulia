using AMDGPU

A = rand(2^9, 2^9)
A_d = ROCArray(A)
B_d = A_d * A_d
