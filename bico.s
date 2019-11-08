set_torque:
    #checa a validade dos valores
    li t0, -100
    blt t0, a0, invalid_value
    blt t0, a1, invalid_value
    li t0, 100
    bgt t0, a0, invalid_value
    bgt t0, a1, invalid_value

    mv t0, a0
    mv t1, a1

    li a0, 1
    mv a1, t0
    li a7, 18
    ecall

    li a0, 2
    mv a1, t1
    li a7, 18
    ecall

    ret

    invalid_value:
        li a0, -1
        ret
#-----------------------------------------------------------------------------------------------
set_engine_torque:
    li a7, 18
    ecall
    ret
#-----------------------------------------------------------------------------------------------
set_head_servo:
    li a7, 17
    ecall
    ret
#-----------------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------------
#-----------------------------------------------------------------------------------------------

