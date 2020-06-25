using Azure.Storage.Files.DataLake;
using Azure.Storage.Files.DataLake.Models;
using Azure.Storage;
using System.IO;
using Azure;
using System;
using System.Threading;
using System.Threading.Tasks;
using RestSharp;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
namespace VTS
{
    class Clients
    {
        static void Main(string[] args)
        {
            UploadAsync();
        }

        public static string Randomize(string prefix = "vts")
        {
            return $"{prefix}-{DateTime.Now.ToString("MMMM-dd-yyyy")}";
        }

        static string CreateTempPath(string extension = ".json") =>
           Path.ChangeExtension(Path.GetTempFileName(), extension);
        static string CreateTempFile(string content)
        {
            string path = CreateTempPath();
            File.WriteAllText(path, content);
            return path;
        }

        public static async Task UploadAsync()
        {
            var storageAccountName = "jllamsavmintelimdev";
            var storageAccountKey = "DsKku/WE2IdGMvGp7AfJ/6cAJkC/NQu4liGH1InDSCgHJ6Q56m1r12Imi4hA1ifOTSSmN4hZlm2UvgZRx/J73Q==";
            Uri serviceUri = new Uri("https://" + storageAccountName + ".blob.core.windows.net");

            StorageSharedKeyCredential sharedKeyCredential = new StorageSharedKeyCredential(storageAccountName, storageAccountKey);

            DataLakeServiceClient serviceClient = new DataLakeServiceClient(serviceUri, sharedKeyCredential);
            DataLakeFileSystemClient filesystem = serviceClient.GetFileSystemClient("vts");

            var strPathval = CreatDirectory(filesystem, "vts", serviceClient);
            var token = InvokeAPI.getAuthtoken();

            var getPropertyJson = InvokeAPI.getProperties(token);
            await UploadFile(filesystem, serviceClient, strPathval, getPropertyJson, "Properties");

            var getLAJson = InvokeAPI.getLeaseAbstract();
            await UploadFile(filesystem, serviceClient, strPathval, getLAJson, "LeaseAbstract");
        }

        public static string CreatDirectory(DataLakeFileSystemClient fileSystemClient, string fileSystemName, DataLakeServiceClient serviceClient)
        {
            fileSystemClient = serviceClient.GetFileSystemClient(fileSystemName);

            DataLakeDirectoryClient directoryClient = fileSystemClient.CreateDirectory(Randomize("vts"));
            directoryClient = fileSystemClient.GetDirectoryClient(directoryClient.Name);
            return directoryClient.Name;
        }

        public static async Task UploadFile(DataLakeFileSystemClient fileSystemClient, DataLakeServiceClient serviceClient, string strDirPath, string strJson, string strFilename)
        {
            DataLakeDirectoryClient directoryClient = fileSystemClient.GetDirectoryClient(strDirPath);

            string originalPath = CreateTempFile(strJson);
            DataLakeFileClient fileClient = directoryClient.CreateFile(strFilename + ".json");
            FileStream fileStream =
                File.OpenRead(originalPath);
            long fileSize = fileStream.Length;

            fileClient.Append(fileStream, offset: 0);

            fileClient.Flush(position: fileSize);
            Console.WriteLine(strFilename + " Json File dumped into Lake.");
        }
    }
}
