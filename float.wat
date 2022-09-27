@.str = private unnamed_addr constant [16 x i8] c"\1Bc\1B[42;30m\0A %f\0A\00", align 1
define void @printn(float %f) #0 {
  %1 = alloca float, align 4
  store float %f, float* %1, align 4
  %2 = load float, float* %1, align 4
  %3 = fpext float %2 to double
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), double %3)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %f = alloca float, align 4
  store i32 0, i32* %1, align 4
  store float 5.000000e+01, float* %f, align 4
  %2 = load float, float* %f, align 4
  call void @printn(float %2)
  ret i32 0
}

