let x = document.getElementById('typescript-example') as HTMLSpanElement | null;

if(x != null)
    x.innerText = 'Hello from typescript';
else
    console.log("x is null");