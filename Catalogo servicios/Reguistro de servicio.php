<html>  
    <head><title>Reguistro de servicios</title>
     <body>
        <h1>Reguistro de servicios</h1>
        <from method= "post" action= "reguistro.php" enctype= "multipart/form-data"> 
            servicio: <input type="number" name="clave" id="clave" /><br>
            Nombre: <input type="text" name="nombre" id="nombre" /><br>
            Cantidad: <input type="number" name="cantidad" id="cantidad" /><br>
            Precio: <input type="number" name="precio" id="precio" /><br>
            imagen: <input type="file" ACCPT="image/*" name="foto" id="foto" /><br>
            <input type="submit" value="Reguistrar"/>
        </from>   
            <br><br>
        
       
    </body>     
</html>