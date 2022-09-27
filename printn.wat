@.str = private unnamed_addr constant [13 x i8] c"\1Bc\1B[42;30m%d\00", align 1
declare i32 @printf(i8* nocapture readonly, ...) #0
define i32 @printn(i32 %n) #1 {
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %n)
  ret i32 0
}
define i32 @main() #0 {
  %1 = tail call i32 (i32) @printn(i32 2) 
  ret i32 0
}
