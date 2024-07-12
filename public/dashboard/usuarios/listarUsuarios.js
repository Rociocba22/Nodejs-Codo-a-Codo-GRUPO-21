//listar todos los usuarios

document.addEventListener("DOMContentLoaded", async () => {
    await listarUsuarios(); // Cargar automáticamente al iniciar la página
    //window.location.reload();
  });
  
  // Función para listar usuarios
  const listarUsuarios = async () => {
    try {
      const res = await fetch("/usuarios", {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
        },
      });
  
      if (!res.ok) {
        throw new Error("Error al obtener los usuarios");
      }
  
      const usuarios = await res.json();
      const tablaUsuariosBody = document.getElementById("tablaUsuariosBody");
  
      // Limpiar tabla antes de agregar datos
      tablaUsuariosBody.innerHTML = "";
  
      // Agregar filas a la tabla
      usuarios.forEach((usuario) => {
        const row = document.createElement("tr");
        row.innerHTML = `
          <td>${usuario.id}</td>
          <td>${usuario.nombre}</td>
          <td>${usuario.apellido}</td>
          <td>${usuario.domicilio}</td>
          <td>${usuario.telefono}</td>
          <td>${usuario.email}</td>
          <td>${usuario.contrasena}</td>
           <td>
            <button class="btn btn-warning btn-sm" onclick="CargarDataParaActualizar(${usuario.id})">Actualizar</button>
          </td>
          <td>
            <button class="btn btn-danger btn-sm" onclick="EliminarUsuario(${usuario.id})">Eliminar</button>
          </td>
        `;
        tablaUsuariosBody.appendChild(row);
      });
    } catch (error) {
      console.error(error);
    }
  };
  
  //=============================================================
  
  // Función para abrir formulario de actualización y almacenar datos en localStorage
  const CargarDataParaActualizar = async (id) => {
    try {
      // Obtener los datos del usuario mediante fetch
      const res = await fetch(`/usuarios/${id}`, {
        method: "GET",
        headers: {
          "Content-Type": "application/json",
        },
      });
  
      // console.log(res);
      if (!res.ok) {
        throw new Error("Error al obtener los datos del usuario");
      }
  
      const userData = await res.json();
      //console.log(userData[0]);
      // Almacenar los datos del usuario en localStorage para luegos cargarlos en el mismo formulario actualizar
      localStorage.setItem("userDataToUpdate", JSON.stringify(userData[0]));
  
      // Redirigir al formulario de actualización con el ID del usuario en la URL
      setTimeout(() => {
        window.location.href = `./usuarios/editar_usuario.html?id=${id}`;
      }, 1000);
    } catch (error) {
      console.error(error);
    }
  };
  
  //================================================================
  
  const EliminarUsuario = async (id) => {
    if (id) {
      if (confirm("¿Está seguro de eliminar este usuario?")) {
        try {
          const res = await fetch(`/usuarios/${id}`, {
            method: "DELETE",
            headers: {
              "Content-Type": "application/json",
            },
          });
  
          if (!res.ok) {
            throw new Error("Error al eliminar el usuario");
          }
  
          alert("Usuario eliminado correctamente.");
  
          // Recargar la página después de eliminar el usuario
          setTimeout(() => {
            window.location.reload();
          }, 1000);
        } catch (error) {
          console.error(error);
          alert("Ocurrió un error al eliminar el usuario.");
        }
      }
    } else {
      alert("No hay usuario seleccionado para eliminar.");
    }
  };
  
  //=========================================================
  // Mostrar sección específica y ocultar las demás
  const mostrarSeccion = (seccionId) => {
    document.querySelectorAll("section").forEach((section) => {
      section.classList.add("d-none");
    });
    document.getElementById(seccionId).classList.remove("d-none");
  };
  
  // Agregar eventos a los enlaces del sidebar o botones según corresponda
  document.getElementById("usuariosLink").addEventListener("click", () => {
    listarUsuarios();
    mostrarSeccion("usuarios");
  });
  

















































// listarUsuariosBtn.addEventListener('click', listarUsuarios); ESTA ERA MI FUNCION

// async function listarUsuarios() {
//     const response = await fetch('/usuarios/');
//     const usuarios = await response.json();
//     listaUsuarios.innerHTML = '';//limpio la lista de usuarios y después le vovleré a pasar los datos nuevos

//     usuarios.forEach(usuario => {//por cada usuario que recibas que me lleguen desde response
//         const li = document.createElement('li'); //creas un li por c/usuario 
//         li.innerHTML = /*y a cada li le agregas éstos detalles*/
//             ` 
//              <span> ID: ${usuario.id}, Nombre: ${usuario.nombre}, Apellido: ${usuario.apellido}, domicilio: ${usuario.domicilio}, Email: ${usuario.email}, telefono: ${usuario.telefono}</span>
//              <div class="actions"> 
//                  <button class="update btn btn-success" data-id="${usuario.id}" data-nombre="${usuario.nombre}" data-apellido="${usuario.apellido}" data-domicilio="${usuario.domicilio}" data-email="${usuario.email}" data-telefono="${usuario.telefono}"> Actualizar  </button> 

//                  <button class="delete btn btn-danger" data-id="${usuario.id}"> Eliminar </button>

//              </div>
//          `;

//         listaUsuarios.appendChild(li);
//     });
// }
