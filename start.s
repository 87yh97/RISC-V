.text
__start: 
  .globl __start
    
    call __main
    
    li a0, 10
    ecall