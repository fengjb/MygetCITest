﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Web;

namespace MygetCITest
{
    /// <summary>
    /// 文件相关助手类
    /// </summary>
    public class FileHelper
    {
        /// <summary>
        /// 获取文件的绝对路径,针对window程序和web程序都可使用
        /// </summary>
        /// <param name="relativePath">相对路径地址</param>
        /// <returns>绝对路径地址</returns>
        public static string GetAbsolutePath(string relativePath)
        {
            if (string.IsNullOrEmpty(relativePath))
            {
                throw new ArgumentNullException("参数relativePath空异常！");
            }
            relativePath = relativePath.Replace("/", "\\");
            if (relativePath[0] == '\\')
            {
                relativePath = relativePath.Remove(0, 1);
            }
            return Path.Combine(AppDomain.CurrentDomain.BaseDirectory, relativePath);
        }
    }
}