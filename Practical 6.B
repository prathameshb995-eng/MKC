#include <stdio.h>
#define V 5
int visited[V];
int result[V];
int resultSize = 0;
// Function to perform Depth First Search
void dfs(int adj[V][V], int vertex)
{
visited[vertex] = 1;
result[resultSize++] = vertex;
printf("\n-----------------------------------------\n");
printf("Current Vertex = %d\n", vertex);
printf("Vertex %d is marked as VISITED.\n", vertex);
printf("Checking all adjacent vertices of %d...\n", vertex);
for(int i = 0; i < V; i++)
{
if(adj[vertex][i] == 1)
{
if(visited[i] == 0)
{
printf("Vertex %d is connected to Vertex %d\n", vertex, i);
printf("Move to Vertex %d\n", i);
dfs(adj, i);
}
else
{
printf("Vertex %d is already visited.\n", i);
}
}
}
printf("Returning from Vertex %d\n", vertex);
}
int main()
{
int adj[V][V];
int src = 0;
printf("=========================================\n");
printf(" GRAPH TRAVERSAL USING DFS\n");
printf("=========================================\n");
printf("\nNumber of Vertices = %d\n", V);
printf("\nEnter the Adjacency Matrix (%d x %d)\n", V, V);
printf("Enter 1 if an edge exists, otherwise enter 0.\n\n");
// Read adjacency matrix
for(int i = 0; i < V; i++)
{
for(int j = 0; j < V; j++)
{
printf("Enter value for adj[%d][%d] : ", i, j);
scanf("%d", &adj[i][j]);
}
}
// Display adjacency matrix
printf("\nAdjacency Matrix Entered by the User\n");
printf("------------------------------------\n");
for(int i = 0; i < V; i++)
{
for(int j = 0; j < V; j++)
{
printf("%3d", adj[i][j]);
}
printf("\n");
}
// Initialize visited array
for(int i = 0; i < V; i++)
{
visited[i] = 0;
}
printf("\n=========================================\n");
printf(" DEPTH FIRST SEARCH (DFS)\n");
printf("=========================================\n");
printf("\nSource Vertex = %d\n", src);
printf("\nStarting DFS Traversal...\n");
dfs(adj, src);
// Print Final Traversal
printf("\n=========================================\n");
printf("Final DFS Traversal\n");
printf("=========================================\n");
for(int i = 0; i < resultSize; i++)
{
printf("%d ", result[i]);
}
printf("\n");
return 0;
}
