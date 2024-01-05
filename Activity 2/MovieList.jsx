import React from "react";
import "./MovieList.css";
class MovieList extends React.Component{
    render(){
        let movie1= "The Batman (2022)";
        let movie2= "The Grey Man (2022)"
        let movie3= "Meet Joe Black (1998)"
    return(
        <div>
        <h1> MOVIE LIST 🎥</h1>
        <ul>
           <li>{movie1}</li>
           <li>{movie2}</li>
           <li>{movie3}</li>
        </ul>
        </div>
    
       );
    }
}
export default MovieList