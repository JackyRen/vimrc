
#include<mpi.h>

int comm_sz;
int my_rank;
void INIT()
{
	MPI_Init(0,0);
	MPI_Comm_size(MPI_COMM_WORLD,&comm_sz);
	MPI_Comm_rank(MPI_COMM_WORLD,&my_rank);
}
void CLOSE()
{
	MPI_Finalize();
}
