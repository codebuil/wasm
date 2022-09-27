@.str = private unnamed_addr constant [13 x i8] c"\1Bc\1B[42;30m%d\00", align 1
@oi = global i32 50
declare i32 @printf(i8* nocapture readonly, ...) #0
define i32 @add(i32 %"A$1") #1 {
  %1 = add nsw i32 %"A$1", 32
  ret i32 %1
}
define i32 @printn(i32 %n) #1 {
  %1 = tail call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %n)
  ret i32 0
}
define i32 @main() #0 {
  %1 = tail call i32 (i32) @add( i32 9) #2
  %2 = tail call i32 (i32) @printn(i32 %1) #1
  ret i32 0
}
