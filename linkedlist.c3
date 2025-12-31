module linkedlist @generic(Type);
import std::io;
import std::core;


struct Node{
   Type value;
    Node* next;
}


fn void init_node(Node* node,Type value) {
    node.value = value;
    node.next = null;
}


fn void append(Node** head, Type value) {
    Node* new_node = mem::new(Node);
    init_node(new_node, value);
    
    if (*head == null) {
        *head = new_node;
        return;
    }
    
    Node* current = *head;
    while (current.next != null) {
        current = current.next;
    }
    current.next = new_node;
}


fn void print_list(Node* head) {
    Node* current = head;
    while (current != null) {
        io::printn(current.value);
        current = current.next;
    }
}

fn void free_list(Node* head) {
    Node* current = head;
    Node* next_node;
    
    while (current != null) {
        next_node = current.next;
        mem::free(current);
        current = next_node;

    }
}



fn void test() {
    io::printn("Hello, LinkedList Module!");
}
