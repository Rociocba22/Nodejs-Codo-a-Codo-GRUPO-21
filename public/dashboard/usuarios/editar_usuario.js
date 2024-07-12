// Evento de submit del formulario
const updateForm = document.getElementById("updateForm");

const actualizarFormulario = async (event) => {
    event.preventDefault();

    let id = document.getElementById("userId").value;
    let nombre = document.getElementById("nombre").value;
    let apellido = document.getElementById("apellido").value;
    let domicilio = document.getElementById("domicilio").value;
    let telefono = document.getElementById("telefono").value;
    let email = document.getElementById("email").value;
    let contrasena = document.getElementById("contrasena").value;

    const editar_usuario = {
        nombre,
        apellido,
        domicilio,
        telefono,
        email,
        contrasena,
    };

    //falta validar este parte pero la dejo asi , el formualrio de registro tiene la validacion
    try {
        const res = await fetch(`/usuarios/${id}`, {
            method: "PUT",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(editar_usuario),
        });

        if (!res.ok) {
            throw new Error("Error al actualizar el usuario");
        }

        alert("Usuario actualizado correctamente.");

        setTimeout(() => {
            updateForm.reset();
            // Redireccionar a la página de lista de usuarios u otra página relevante
            window.location.href = "../dashboard.html";
        }, 1200);
    } catch (error) {
        console.error("Error al actualizar el usuario:", error);
        alert("Ocurrió un error al actualizar el usuario.");
    }
};

updateForm.addEventListener("submit", actualizarFormulario);






//TOGGLE form de edición de usuario

// mostrarEditarUsuarioFormBtn.addEventListener('click', () => {
//     editarUsuarioForm.classList.toggle('hidden');
// });

// //EDITAR USUARIO
// editarUsuarioForm.addEventListener('submit', async (e) => {
//     e.preventDefault();
//     const formData = new FormData(editarUsuarioForm);
//     const id = formData.get('editID');
//     const data =
//     {
//         nombre: formData.get('editNombre'),
//         apellido: formData.get('editApellido'),
//         direccion: formData.get('editDomicilio'),
//         mail: formData.get('editEmail'),
//         telefono: formData.get('editTelefono')
//     }

//     const response = await fetch(`/usuarios/${id}`,
//         {
//             method: 'PUT',
//             headers:
//             {
//                 'Content-Type': 'application/json'
//             },
//             body: JSON.stringify(data)
//         });

//     const result = await response.json();
//     alert(result.message);
//     editarUsuarioForm.reset();
//     editarUsuarioForm.classList.add('hidden');
//     listarUsuarios();

// });

