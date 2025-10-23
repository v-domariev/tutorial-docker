// See https://aka.ms/new-console-template for more information
// Console.WriteLine("Hello, World!");

Int32 counter = 0;

Int32 max = args.Length is not 0 ? Convert.ToInt32(args[0]) : -1;

while(max is -1 || counter < max) 
{
	Console.WriteLine($"Counter: {++counter}");

	await Task.Delay(TimeSpan.FromMilliseconds(1_000));
}
