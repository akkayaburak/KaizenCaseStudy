
using System.Text.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

string fileName = "response.json";
string jsonString = File.ReadAllText(fileName);
Response[] responseList = JsonSerializer.Deserialize<Response[]>(jsonString)!;

Response response = responseList.First();

string[] description = response.description.Split("\n");

foreach (string value in description)
{
    Console.WriteLine(value);
}


public class Response
{
    public string local { get; set; }
    public string description { get; set; }
    public BoundingPoly boundingPoly { get; set; }
}

public class BoundingPoly
{
    public List<Vertice> vertices { get; set; }
}

public class Vertice
{
    public int x { get; set; }
    public int y { get; set; }
}