import { serverAddress } from '../constants/constants.js'; 
import { PagePaths } from '../pagination/paths.js';

export function onLogin(e, username, password, navigate) {
    e.preventDefault(); 

    const data = { username: username, password: password }; 
    
    fetch(`${serverAddress}/login`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
        credentials: 'include'
    })
        .then(res => {
            if (res.ok) { 
                alert("¡Bienvenido de vuelta!");
                navigate(PagePaths['Home']);
            } else {
                throw new Error(`Credenciales invalidas`);
            }
        })
        .catch(error => alert(error));
}
