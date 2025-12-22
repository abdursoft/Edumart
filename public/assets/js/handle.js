document.oncontextmenu = () => {
    errors('Page Content is Protected!');
    return false;
}

document.onkeydown = (e)=>{
    if(e.key == 'F12'){
        errors("Don't try to inspect the Element!")
        return false;
    }

    if(e.ctrlKey && e.key == 'u'){
        errors("Don't try to extract Source code!")
        return false;
    }
    if(e.ctrlKey && e.key == 'c'){
        errors("Don't try to copy any Content!")
        return false;
    }
    if(e.ctrlKey && e.key == 'v'){
        errors("Don't paste, Just type!")
        return false;
    }
    if(e.ctrlKey && e.key == 'i'){
        errors("Don't try to extract Source code!")
        return false;
    }
}

function errors(msg){
    swal.fire(msg,'', 'error');
}