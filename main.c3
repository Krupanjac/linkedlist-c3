import linkedlist;
import std::io;



fn void main () {

    linkedlist::test();

    Node *head = null;
   
linkedlist::append(&head, 10);
    linkedlist::append(&head, 20);
    linkedlist::append(&head, 30);

    io::printn("Linked List Contents:")
    linkedlist::print_list(head);
    linkedlist::free_list(head);

}
