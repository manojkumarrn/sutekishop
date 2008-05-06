﻿using System.Text;

namespace Suteki.Common.Extensions
{
    public static class StringExtensions
    {
        public static string Join(this string[] values, string joinText)
        {
            StringBuilder result = new StringBuilder();

            if (values.Length == 0) return string.Empty;

            result.Append(values[0]);

            for (int i = 1; i < values.Length; i++)
            {
                result.Append(joinText);
                result.Append(values[i]);
            }

            return result.ToString();
        }

        public static string TrimWithElipsis(this string text, int length)
        {
            if (text.Length <= length) return text;
            return text.Substring(0, length) + "...";
        }

        /// <summary>
        /// replacement for String.Format
        /// </summary>
        public static string With(this string format, params object[] args)
        {
            return string.Format(format, args);
        }
    }
}
