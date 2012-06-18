#define N 5
#define K 3

#define TRUE 1
#define FALSE 0
int nondet();

void main() {
  int i, next;

  int G[N][N] = { 
     {0, 1, 0, 0, 1}, 
     {0, 0, 1, 0, 0},
     {0, 1, 0, 1, 0},
     {1, 0, 0, 0, 0},
     {0, 0, 0, 0, 1}, 
  };

  int result = TRUE;
  int node = 0;
  node = 0;
  for(i = 0; i < K; i++) {
      next = nondet() % N;
      result = result && G[node][next];
      node = next;
  }
   
  printf("result=%d; node=%d", result, node);
  result = result && (node == 0) && (K > 0);
   
 assert(!result);
  
}

