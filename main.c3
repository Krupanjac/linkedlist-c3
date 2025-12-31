import linkedlist;
import std::io;



fn void main () {

    Node{int}* head = null;
   
linkedlist::append{int}(&head, 10);
    linkedlist::append{int}(&head, 20);
    linkedlist::append{int}(&head, 30);

    io::printn("Linked List Contents:");
    linkedlist::print_list{int}(head);
    linkedlist::free_list{int}(head);


    Node{float}* float_head = null;
linkedlist::append{float}(&float_head, 1.1);
    linkedlist::append{float}(&float_head, 2.2);
    linkedlist::append{float}(&float_head, 3.3);

    io::printn("Float Linked List Contents:");
    linkedlist::print_list{float}(float_head);
    linkedlist::free_list{float}(float_head);

}
