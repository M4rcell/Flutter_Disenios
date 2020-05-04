
import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //opcions para scroll Column
      //ListView
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _craerTexto(), 
          _craerTexto(),    
          _craerTexto(),    
          _craerTexto(),    
          _craerTexto(),    
          _craerTexto(),         
  
        ],
        ),
        
      ),
    );
  }
  Widget _crearImagen(){
    return Container(
      width: double.infinity,//para ocupar todo el ancho de la pantalla 
      child: Image(
       image: NetworkImage('https://cdn.pixabay.com/photo/2020/02/11/12/07/portofino-4839356_960_720.jpg'),
       fit: BoxFit.cover,

      ),
    );
  }

  Widget _crearTitulo(){

    final estiloTitulo    = TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold );
    final estiloSubTitulo = TextStyle(fontSize: 15.0,color: Colors.grey );

    return SafeArea( //Container
          child: Container(
        padding:EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0) ,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Column(
                crossAxisAlignment:CrossAxisAlignment.start ,
                children: <Widget>[
                  Text('Oeschinen Lake Campground',style: estiloTitulo),
                  SizedBox(height: 7.0),
                  Text('Kandersteg, Switzerland',style:estiloSubTitulo )
                ],
              ),
            ),
                
            Icon(Icons.star, color: Colors.red,size: 25.0,),
             
            Text('41',style: TextStyle(fontSize: 20.0),)
              

          ],
        ),
      ),
    );
  }

 Widget _crearAcciones() {
   
   return Container(
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: <Widget>[

         _acciones(Icons.call,'CALL'),
         _acciones(Icons.near_me,'ROUTE'),
         _acciones(Icons.share,'SHARE'),

       ],
     ),
   );
 }

 Widget _acciones(IconData icon , String texto){
   return Column(
           children: <Widget>[
             Icon(icon,color: Colors.blue, size: 40.0,),
             Text(texto,style: TextStyle(fontSize: 15.0,color: Colors.blue))
           ],
         );
 }

 Widget _craerTexto(){
   return Container (
     padding: EdgeInsets.symmetric(
       horizontal:40.0,
       vertical: 20.0
     ),
     child: Text('Columns work the same way as rows. The following example shows a column of 3 images, each is 100 pixels high. The height of the render box (in this case, the entire screen) is more than 300 pixels, so setting the main axis alignment to spaceEvenly divides the free vertical space evenly between, above, and below each image.',textAlign: TextAlign.justify,)
  );
 }
}