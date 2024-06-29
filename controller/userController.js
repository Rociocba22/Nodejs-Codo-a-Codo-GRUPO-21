const db = require('../db/db');

const ObtenerTodosLosUsuarios = (req, res) => {
    const ObtenerTodosLosUsuarios = (req, res) => {
        const sql = 'SELECT * FROM usuarios';

        db.query(sql, (err, result) => {
            if (err) throw err;

            res.json(result);
        });
    }

}

const ObtenerUsuarioPorID = (req,res) => //debo agregarle try y catch
{
//POR EL MOMENTO NO HACE NADA
}

const crearUsuario = (req,res) => //debo agregarle try y catch
{
//POR EL MOMENTO NO HACE NADA
}

const ActualizarUsuario = (req,res) => //debo agregarle try y catch
{
//POR EL MOMENTO NO HACE NADA
} 
const BorrarUsuario = (req,res) => //debo agregarle try y catch
{
//POR EL MOMENTO NO HACE NADA
}

module.exports = {
    ObtenerTodosLosUsuarios,
    ObtenerUsuarioPorID,
    crearUsuario,
    ActualizarUsuario,
    BorrarUsuario
}


//----------------------GET-----------------------
/*
router.get('/', (req, res) => {
    res.json(usuarios); //para obtener el conjunto de todos los usuarios
});

router.get('/:id', (req, res) => {
    const user = usuarios.find(u => u.id === parseInt(req.params.id));

    if (!user) return res.status(404).send("Usuario NO encontrado");

    res.json(user);
});
//----------------------POST----------------------
router.post('/', (req, res) => {

    const { nombre, apellido, mail } = req.body; //destructuring

    const nuevoUsuario = {
        id: usuarios.length + 1, //crypto.randomUUID()
        nombre: nombre,
        apellido: apellido,
        mail: mail
    };

    usuarios.push(nuevoUsuario);
    res.status(201).json(nuevoUsuario);
});
//-----------------------DELETE-------------
router.delete('/:id', (req, res) => {
    const indiceUsuario = usuarios.findIndex(u => u.id === parseInt(req.params.id));

    if (indiceUsuario === -1)
        return res.status(404).send("Usuario no encontrado");

    const usuarioEliminado = usuarios.splice(indiceUsuario, 1);
    res.json(usuarioEliminado);
    //splice elimina  a partir del indice del usuario la cantidad que le indique
});

//---------------------PUT------------------
router.put('/:id', (req, res) => {
    try {
        const user = usuarios.find(u => u.id === parseInt(req.params.id));
        //creo una variable y busco un usuario y si lo encuentra lo guarda en user

        if (!user) return res.status(404).send("Usuario no encontrado");

        user.nombre = req.body.nombre || user.nombre;
        user.apellido = req.body.apellido || user.apellido;
        user.mail = req.body.mail || user.mail;

        res.json(user);
    } catch (error) {

        console.error(error);
        //return res.status(500).json(error.message);
        return res.status(500).json({
            message: error.message,
        });
    }
});*/
