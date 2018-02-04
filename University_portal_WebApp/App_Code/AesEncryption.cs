using System;
using System.IO;
using System.Text;
using System.Web.Configuration;
using System.Security.Cryptography;

/// <summary>
/// Summary description for AesEncryption
/// </summary>
public class AesEncryption
{
    public string EncryptAes(string inputPassword)
    {
        //string EncryptionKey = "MAKV2SPBNI99212";
        string EncryptionKey = WebConfigurationManager.AppSettings["EncryptKey"];

        // Encode the input string to an array of bytes.
        byte[] inputPasswordBytes = Encoding.Unicode.GetBytes(inputPassword);

        // Create a new instance of the Aes
        // class.  This generates a new key and initialization 
        // vector (IV).
        using (Aes encryptorAes = Aes.Create())
        {
            byte[] salt = new byte[] {0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76};

            //Rfc2898DeriveBytes takes a password, a salt, and an iteration count, and then generates keys through calls to the GetBytes method.
            Rfc2898DeriveBytes rfc = new Rfc2898DeriveBytes(EncryptionKey,salt);

            //get the key and IV from rfc
            encryptorAes.Key = rfc.GetBytes(32);
            encryptorAes.IV = rfc.GetBytes(16);

            // Create the streams used for encryption.
            using (MemoryStream ms = new MemoryStream())
            {                
                using (CryptoStream cs = new CryptoStream(ms,encryptorAes.CreateEncryptor(),CryptoStreamMode.Write))
                {
                    //Write all data to the stream.
                    cs.Write(inputPasswordBytes, 0 , inputPasswordBytes.Length);
                    cs.Close();
                }

                inputPassword = Convert.ToBase64String(ms.ToArray());
            }
        }

        return inputPassword;
    }

    public string DecryptAes(string encryptedText)
    {
        //string EncryptionKey = "MAKV2SPBNI99212";
        string EncryptionKey = WebConfigurationManager.AppSettings["EncryptKey"];

        byte[] encryptedTextBytes = Convert.FromBase64String(encryptedText);

        using (Aes encryptorAes = Aes.Create())
        {
            byte[] salt = new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 };            

            Rfc2898DeriveBytes rfc = new Rfc2898DeriveBytes(EncryptionKey, salt);
            encryptorAes.Key = rfc.GetBytes(32);
            encryptorAes.IV = rfc.GetBytes(16);

            using (MemoryStream ms = new MemoryStream())
            {
                using (CryptoStream cs = new CryptoStream(ms, encryptorAes.CreateDecryptor(), CryptoStreamMode.Write))
                {
                    cs.Write(encryptedTextBytes, 0, encryptedTextBytes.Length);
                    cs.Close();
                }
                encryptedText = Encoding.Unicode.GetString(ms.ToArray());
            }
        }
        return encryptedText;
    }

}