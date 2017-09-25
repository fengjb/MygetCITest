using System;
using System.Collections.Generic;
using System.Linq;

namespace Document
{
    public class Class1
    {


        public int hehe(int i)
        {
            var list = new List<string>();
            list.Add("1");
            list.Add("2");
            list.Add("3");
            list.Add("4");
            list.Where(v => v.Equals("2"));
            Console.WriteLine(i);
            return i;
        }
    }
}
