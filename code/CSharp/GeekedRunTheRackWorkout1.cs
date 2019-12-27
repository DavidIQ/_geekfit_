using System;
using System.Threading;

public class GeekedRunTheRackWorkout1
{
	public static void Main(string[] args)
	{
        var routine = new string[]
        {
            "Dumbbell Incline One Arm Press",
            "Dumbbell One Arm Row",
            "Dumbbell One Arm Shoulder Press",
            "Dumbbell Rear Lunge",
            "Dumbbell Cross Body Hammer Curl",
            "Dumbbell Standing One Arm Triceps Extension",
            "Dumbbell Side Bend"
        };
        foreach(var exercise in routine)
        {
            Console.WriteLine($"Enter starting dumbbell weight (lbs) for {exercise}: ");
            var weight = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine($"Max weight will be {weight + 25} lbs");
            for(var rounds = 1; rounds <= 11; rounds++)
            {
                Console.WriteLine($"{exercise}: do 5 reps @ {weight} lbs with right arm");
                Thread.Sleep(5000); // 5 seconds for changeover
                Console.WriteLine($"{exercise}: do 5 reps @ {weight} lbs with left arm");
                Thread.Sleep(15000); // 15 seconds to grab next weight
                weight = rounds <= 6 ? (weight + 5) : (weight - 5);
                if (rounds == 6) Console.WriteLine("Reducing weight now");
            }
        }
        Console.WriteLine("And done!");
        Environment.Exit(0);
	}
}

