using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Clinical_System
{
    public sealed class Utils
    {
        public static string GenerateId(int count,string classification)
        {
            int scale = 2;
            if (classification.ToLower().Equals("patient"))
                scale = 4;
            string id = classification.ToLower().ToCharArray()[0].ToString();
            string asString = count.ToString("D" + scale);
            id = id + asString;
            return id;
        }
        private Utils() { }
    }
}