#include <iostram>
struct Node{
    int data;
    Node* next;
};
Node* head;
void Insert(int x){
    Node* temp = new Node();
    temp->data = x;
    temp->next = head;
    head = temp;
}
void Print(){
    Node* temp = head;
    while(temp != NULL){
        cout << temp->data << " ";
        temp = temp->next;
    }
    cout << endl;
}

int main()
{
    head = NULL;
    cout << "How many numbers?" << endl;
    int n, x;
    cin >> n;
    for(int i = 0; i < n; i++){
        cout << "Enter the number" << endl;
        cin >> x;
        Insert(x);
    }
    int * start = head;
    int ans=-1;
    int *curr=head;
    while(curr->next!=NULL){
        int ls=0,rs=0;
        start=head;
        int *rstart=curr->next;
        while((start->data)!=(curr->data)){
            ls+=start->data;
            start=start->next;
        }
        while((rstart->data)!=(curr->data)){
            rs+=rstart->data;
            rstart=rstart->next;
        }
        if(ls==rs){
            ans=curr->data;
            break;
        }
        curr=curr->next;
    }
    cout<<ans<<endl;
    return 0;
}