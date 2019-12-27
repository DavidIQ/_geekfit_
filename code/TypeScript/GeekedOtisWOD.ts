export class GeekedOtisWOD {
    constructor() {
        const bodyWeight = parseInt(
            prompt('Your body weight', '150'));
        const otisHeroWod = {
            backSquat: `${bodyWeight * 1.5} lbs`,
            shoulderPress: `${bodyWeight * 0.75} lbs`,
            deadLift: `${bodyWeight * 1.5} lbs`
        };
        const sets = [];
        const start = Date.now();
         // AMRAP in 15 minutes
        do {
            console.log(otisHeroWod);
            console.log(`Reps for each: ${sets.length + 1}`);
            if (!prompt('Completed set?')) break;
            sets.push(otisHeroWod);
        } while ((Date.now() - start) <= 900000);

        // Reduce weight
        otisHeroWod.backSquat = `${bodyWeight * 1} lbs`;
        otisHeroWod.shoulderPress = `${bodyWeight * 0.5} lbs`;
        otisHeroWod.deadLift = `${bodyWeight * 1} lbs`;
        // Reverse reps AFAP
        for(var i = sets.length; i > 0; i--) {
            console.log(otisHeroWod);
            console.log(`Reps for each: ${i}`);
        }
        alert('Victory!!!111');
    }
}


