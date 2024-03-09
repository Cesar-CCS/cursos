
const skills:string[] = ['Bash', 'Counter', 'Healing'];


//interface
interface Character {
    name: string;
    hp:number;
    skills: string[];
    hometown?: string;
}

//Objeto Literal
const strider: Character = {
    name: 'Strider',
    hp: 100,
    skills: ['Bash', 'Counter'],
}

strider.hometown = 'Rivendell';

console.table({strider});


export {};