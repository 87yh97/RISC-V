.text
__main: 
  .globl __main
  
    addi sp, sp, -16        #\Сохранение адреса возврата в стеке
    sw ra, 12(sp)           #/
    
    la a0, array_length     #\Загрузка в a0 длины массива
    lw a0, 0(a0)            #/
    
    la a1, num_of_shifts    #\Загрузка в a1 количества сдвигов
    lw a1, 0(a1)            #/
    
    la a2, shift_direction  #\Загрузка в a2 параметра направления сдвига
    lw a2, 0(a2)            #/
    
    la a3, array            #Загрузка в a3 адрес массива
    
    call subprog
    
    lw ra, 12(sp)           #\Получение адреса возврата из стека
    addi sp, sp, 16         #/
      
    ret
    
    
.rodata
  array_length: 
    .word 11
  num_of_shifts:
    .word 37
  shift_direction:
    .word 0      # 0 -> сдвиг вправо; !0 -> сдвиг влево
.data
  array:
#      .word 0xFF, 0xDD
    .word 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10