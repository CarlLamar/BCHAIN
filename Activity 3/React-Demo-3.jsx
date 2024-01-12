import React from 'react';

function Rainy1(){
    return(
        <h1>Bring your umbrella</h1>
    );
}
function Sunny1(){
    return(
        <h1>Bring your sunglasses</h1>
    )
}
function RainOrShine1(props){
    const isRainy = props.isRainy;
    if(isRainy){
        return(
           <Rainy1 />
        );
    }
    return(
    <Sunny1/>
    );
}    

export default function App(){
    return(
        <div>
        <RainOrShine1
        isRainy={false}
        />
        </div>
   );     
}    
export {Rainy1,Sunny1, RainOrShine1}