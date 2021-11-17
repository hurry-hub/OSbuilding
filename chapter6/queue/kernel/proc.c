
/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                               proc.c
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                                                    Forrest Yu, 2005
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

#include "type.h"
#include "const.h"
#include "protect.h"
#include "proto.h"
#include "string.h"
#include "proc.h"
#include "global.h"

/*======================================================================*
                              schedule
 *======================================================================*/
PUBLIC void schedule()
{
	// PROCESS* p;
	// int	 greatest_ticks = 0;

	// while (!greatest_ticks) {
	// 	for (p = proc_table; p < proc_table+NR_TASKS; p++) {
	// 		if (p->ticks > greatest_ticks) {
	// 			greatest_ticks = p->ticks;
	// 			p_proc_ready = p;
	// 		}
	// 	}

	// 	if (!greatest_ticks) {
	// 		for (p = proc_table; p < proc_table+NR_TASKS; p++) {
	// 			p->ticks = p->priority;
	// 		}
	// 	}
	// }
	PROCESS *p;
	int temp_queue = 6;							
	int finished_num = 0;							//统计完成的进程数
	int arrived_num = 0;							//统计到达的进程数
	int queue_three_num = 0;						//统计位于队列三的进程数

	for (p = proc_table; p < proc_table + NR_TASKS; p++) {
		if (p->queue == 3) {
			queue_three_num++;
		}
	}
	for (p = proc_table; p < proc_table + NR_TASKS; p++) {
		if (p->arrive == 1) {
			arrived_num++;
		}
	}

	if (queue_three_num == arrived_num) {			//都位于队列三，时间片轮转
		int i = 0;
		for ( ; i < NR_TASKS; i++) {
			if ((p_proc_ready->arrive == 1) && (p_proc_ready->ticks < 1)) {	//若进程到达且运行完成，完成数加一
				finished_num++;
			} 
			int j = 0;
			do{
				p_proc_ready++;
				if (p_proc_ready > proc_table + NR_TASKS) {					//保证六个进程都被查找一遍
					p_proc_ready = proc_table;
				}
				j++;														//保证找完后退出
			} while((p_proc_ready->arrive == 0) && (j < 6));				//寻找已到达的进程
		}
		i = 0;
		do{
			p_proc_ready->status = WAIT;									//设置为等待态
			p_proc_ready++;
			if (p_proc_ready > proc_table + NR_TASKS) {
					p_proc_ready = proc_table;
			}
			i++;
		} while(!((p_proc_ready->ticks != 0) && (p_proc_ready->arrive == 1)) && (i < 6));	//寻找未完成但到达的进程
		p_proc_ready->status = RUN;											//设置为运行态
	} else {
		int i = 0;
		p = p_proc_ready;
		for (; i < 6; i++) {
			p++;
			p->status = RUN;
			//disp_str(p->p_name);
			if (p == proc_table + NR_TASKS) {
				p = proc_table;
			}
			if (p->arrive == 0) {
				disp_color_str("#", BRIGHT | MAKE_COLOR(BLACK, RED));
				disp_color_str(p->p_name, BRIGHT | MAKE_COLOR(BLACK, RED));
				disp_color_str("!", BRIGHT | MAKE_COLOR(BLACK, RED));
				continue;
			}
			if (p->queue < temp_queue) {
				temp_queue = p->queue;
				p_proc_ready = p;
			}
		}
		p_proc_ready->status = RUN;
	}
	if (finished_num == 6) {
	 	disp_color_str("All process finshed!\n", BRIGHT | MAKE_COLOR(BLACK, BLUE));
		while(1){}
	}
	// if (finished_num == 6) {
	// 	disp_color_str("All process finshed!\n", BRIGHT | MAKE_COLOR(BLACK, RED));
	// 	p->queue = 1;
	// 	p->remained_time = QUEUE_ONE_TIME;
	// 	p->ticks = p->priority;
	// }
	// p_proc_ready = proc_table;
}

/*======================================================================*
                           sys_get_ticks
 *======================================================================*/
PUBLIC int sys_get_ticks()
{
	return ticks;
}

