@.str = private unnamed_addr constant [11 x i8] c"\1Bc\1B[42;30m\00", align 1
; 
declare i32 @puts(i8* nocapture readonly) #0
define i32 @main() #0 {
  
  %1 = tail call i32 @puts(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}
