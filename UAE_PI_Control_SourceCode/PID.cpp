#include <stdio.h>

 

// 定义PID参数

#define Kp 0.8

#define Ki 0.2

#define Kd 0.1


// 定义误差

float error = 0;

float last_error = 0;

float integral = 0;

 

// 定义PID控制函数

float pid_control(float setpoint, float process_variable, float dt) {
    // 计算误差
    error = setpoint - process_variable;
    // 计算积分项
    integral += error * dt;
    // 计算微分项
//    float derivative = (error - last_error) / dt;
    last_error = error;
    // 计算PID输出
    float output = Kp * error + Ki * integral ;
    // 返回PID输出
    printf("error:%.2f,\tintegral:%.2f(+=error*dt),\t",error,integral);
    return output;

}

 

int main() {

    // 设置目标值和初始过程变量值
    float setpoint = 100.0;
    float process_variable = 0.0;
    // 设置采样时间和总时间
    float dt = 0.01;
    float total_time = 30.0;

    // 进行PID控制
    for (float t = 0; t < total_time; t += dt) {
        // 计算PID输出
        float output = pid_control(setpoint, process_variable, dt);

        // 模拟过程变量变化
        process_variable += output * dt;
        // 输出PID输出和过程变量
        printf("Time: %.2f,\tOutput:%.2f, \t Process Variable: %.2f\n", t, output, process_variable);
//		printf("%.2f\n",process_variable);
    }

   

    return 0;

}
