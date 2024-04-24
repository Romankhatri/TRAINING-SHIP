class FileIO
{
    string folderPath = @"C:\Users\learn\Desktop\Trainingship\LanguageBasics\NETStarter\Basic\FileFolderHandling";

    //Create a text file
    public void Createfile()
        {
            string fileName = "Student.txt";
            string filePath = Path.Combine(folderPath, fileName);

            File.WriteAllText(filePath, "Hi everyone!");
        }
    public void CreateFileWithInFolder()
    {
        string newFolderName = "Student";
        string newFolderPath = Path.Combine(folderPath, newFolderName);
        Directory.CreateDirectory(newFolderPath);

        string fileName = "Student1.txt";
        string filePath = Path.Combine(newFolderPath, fileName);

        File.WriteAllText(filePath, "Hello Everyone!");
    }
}