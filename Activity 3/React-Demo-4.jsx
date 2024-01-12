import { RainOrShine1 } from "./React-Demo-3"

export default function App(){
    return(
        <div className={'${isRainy === true ? 'dark' : 'light'}'}>
         <RainOrShine1 / >
        </div>    
    );
}