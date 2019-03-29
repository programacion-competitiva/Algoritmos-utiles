/**
   Mergesort o algoritmo de ordenación por mezcla


En el main puede encontrar un ejemplo recreando el peor de los casos. 
Pasar por argumentos el tamaño del vector a ordenar.


 */
#include <iostream>
#include <string.h> //biblioteca de memcpy

using namespace std;

/**
   @brief Coloca de manera ordenada en v, los elementos de u y w
   @requires: u y w deben de estar ordenados 
   @param: u,w vectores ordenados que se mezclarán de manera ordenanda en v
   @param len, lenu, lenw: distintas longitudes de los vectores 
 */
int combinar( int *v, int len, int* u, int lenu, int* w, int lenw)
{
  int i=0;
  int iu,iw; iu = 0; iw = 0; 
  while ( iu < lenu && iw< lenw)
    {
      if( u[iu] < w[iw]) 
	{
	  v[i] = u[iu];
	  iu++;
	  i++; 
	}
      else if( u[iu] >= w[iw]) 
	{
	  v[i] = w[iw];
	  iw++;
	  i++; 
	}
    }
  for (iu;  iu < lenu ; iu++)
    {
      v[i] = u[iu];
      i++;
    }
  
  for (iw;  iw < lenw ; iw++)
    {
      v[i] = w[iw];
      i++;
    }

  return 0; 
  
}


/**
   brief Cuerpo en sí del algoritmo mergesort
   - Divide vector en dos mitades de manera recursiva hasta que estos estén compuestos de dos elementos. 
   - Se construye un vector ordenado mezclando dos vectores  longitud mitad ya ordenados. 
 */
int  merge( int *v , int len)
{
  //caso base 
  if( len == 2)
    {
      if( v[1] <= v[0])
	{
	  int aux = v[0];
	  v[0] = v[1];
	  v[1] = aux; 
	}
      return 0; 
    }
  else if( len > 2)
    {
      int mitad = len/2;
      int mitad2= len-mitad;
      int *u = new int [mitad];
      int *w = new int [mitad2];
      
      memcpy( u, v, mitad*sizeof(int)); 
      memcpy( w, v+mitad, mitad2*sizeof(int)); 
      merge( u, mitad);
      merge( w, mitad2); 

      
      combinar( v,len, u, mitad, w, mitad2); 
      delete [] u;
      delete [] w; 
    }
  return 0; 
    
}
  
int main( int argc, char* argv [])
{
  int len = atoi( argv[1]);


  int *v = new int [len];  
  for( int i= 0; i<len; i++)
    v[i] = len -i;

  cout << "Antes de ordenar el vector su constenido es" << endl; 
  for( int i= 0; i<len; i++)
    cout << v[i] << " "; 
  cout << endl;

  
  merge( v, len);
  
  cout << "Tras ordenar el vector el resultado es" << endl; 
  for( int i= 0; i<len; i++)
    cout << v[i] << " "; 
  cout << endl; 
  delete [] v; 
  
}

