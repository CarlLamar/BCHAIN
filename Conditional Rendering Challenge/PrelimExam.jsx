//Gegante, Carl D. WD-402

import React from "react";

function ItemsList(){
    return (
        <div>
            <h1>Things to Bring:</h1>
            <h2> My Strawhat</h2>
            <h2> Gum-Gum Fruit</h2>
            <h2> The Red Vest</h2>
        </div>
    )
}

function OnHandItems(){
    return (
        <div>
            <h1>Things to Bring:</h1>
            <h1 className="true"> My Strawhat</h1>
            <h1 className="true"> Gum-Gum Fruit</h1>
            <h1 className="true1"> The Red Vest</h1>
        </div>
    )
}

function ListItems(props){
    const isOnhand = props.isOnhand;
    if (isOnhand){
        return(
            <OnHandItems />
        );
    }
    return (<ItemsList/>);
}

export default function PrelimExam(){
    return(
        <div>
            <ListItems isOnhand={true} />
        </div>
    );
}