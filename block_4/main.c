#define N 5
#define K 0

void main() {

  bool G[N][N] = { 
     {0, 1, 0, 0, 1}, 
     {0, 0, 1, 0, 0},
     {0, 1, 0, 1, 0},
     {1, 0, 0, 0, 0},
     {0, 0, 0, 0, 1}, 
  };

  bool result = true;
  int node = 0;
  for(i = 0; i < K, i++) {
      next = nondet();
      result = result && G[node][next];
      node = next;
  }
   
  result = result && (node == 0);
   
  assert(!result);
  
}

