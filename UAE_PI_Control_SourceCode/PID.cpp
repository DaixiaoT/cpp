#include <stdio.h>

 

// ����PID����

#define Kp 0.8

#define Ki 0.2

#define Kd 0.1


// �������

float error = 0;

float last_error = 0;

float integral = 0;

 

// ����PID���ƺ���

float pid_control(float setpoint, float process_variable, float dt) {
    // �������
    error = setpoint - process_variable;
    // ���������
    integral += error * dt;
    // ����΢����
//    float derivative = (error - last_error) / dt;
    last_error = error;
    // ����PID���
    float output = Kp * error + Ki * integral ;
    // ����PID���
    printf("error:%.2f,\tintegral:%.2f(+=error*dt),\t",error,integral);
    return output;

}

 

int main() {

    // ����Ŀ��ֵ�ͳ�ʼ���̱���ֵ
    float setpoint = 100.0;
    float process_variable = 0.0;
    // ���ò���ʱ�����ʱ��
    float dt = 0.01;
    float total_time = 30.0;

    // ����PID����
    for (float t = 0; t < total_time; t += dt) {
        // ����PID���
        float output = pid_control(setpoint, process_variable, dt);

        // ģ����̱����仯
        process_variable += output * dt;
        // ���PID����͹��̱���
        printf("Time: %.2f,\tOutput:%.2f, \t Process Variable: %.2f\n", t, output, process_variable);
//		printf("%.2f\n",process_variable);
    }

   

    return 0;

}
