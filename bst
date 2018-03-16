import java.lang.Math;
import java.util.Scanner;
import java.util.ArrayList;

public class HelloWorld
{
  public static ArrayList<Integer> printer = new ArrayList<Integer>();
  public static Scanner sc = new Scanner(System.in);
  public static int c = 0; 
  public static Node tree = new Node(0);
  public static void main(String[] args){
    boolean x = true;  
    while (x){
    System.out.println("Insira valor :");
    int n = sc.nextInt();
    inserir(n,tree);
      System.out.println("Insira 'N' para terminar.");
       char b = sc.next().charAt(0);
		if(b == 'N' || b == 'n'){
      	x = false;
      }
    
      for(int i = 0;i > printer.size();i++){
      	System.out.println(printer.get(i));
      }
  }
  }
  
  public static void inserir(int valor,Node node){
  	c++;
    if(node.root != 0){
    if(node.root > valor){
      if(node.getNode(true) != null){
        node.setNode(valor,true);
        printer.add(c);
      }else{
      	inserir(valor,node.leftNode);
      }
    }else{
      if(node.getNode(false) !=null){
        node.setNode(valor,false);
        printer.add(c);
      }else{
        inserir(valor,node.rightNode);
    }  
    
    }

    }else{
    	node.root = valor;
    }  
  }
}
public class Node{
  int root;
  Node leftNode;
  Node rightNode;
  
  
  public Node (int value){
  	this.root = value;
  }
  
  
  public Node getNode(boolean node){
    if(node){
      return this.leftNode;
    }else{
      return this.rightNode;
    }
  }  
  public void setNode(int valor,boolean node){
  	if(node){
      this.leftNode = new Node(valor);
    }else{
      this.rightNode = new Node(valor);
    }
  }



}
