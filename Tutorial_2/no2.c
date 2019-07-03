//Given an array A of size N , check if there exist any pair of index i,j such that Ai=Aj and i≠j

bool check(int array[], int n)
{   
    bool flag = 0;

    for(int i = 0; i < n - 1; i++)      
    {         
        if(array[i] != array[i + 1])
            flag = 1;
    }

    return flag;
}
