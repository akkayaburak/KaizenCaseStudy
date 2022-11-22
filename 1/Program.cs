string uniqueString = StringUtil.GetUniqueString(8);
Console.WriteLine("Unique String : " + uniqueString);

string encrypted = StringUtil.Encrypt(uniqueString);
Console.WriteLine("Encrypted : " + encrypted);

string decrypted = StringUtil.Decrypt(encrypted);
Console.WriteLine("Decrypted : " + decrypted);


Console.ReadLine();

