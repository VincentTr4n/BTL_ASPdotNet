using BTL_ASPdotNet.Models;
using System;
using System.Text;
using System.Web.Mvc;

namespace BTL_ASPdotNet.Helpers
{
    public static class PagingHelper
    {
        public static MvcHtmlString PageLinks(this HtmlHelper html, PagingInfo pagingInfo, Func<int, string> pageUrl)
        {
            StringBuilder builder = new StringBuilder();

            for (int i = 1; i <= pagingInfo.TotalPage; i++)
            {
                TagBuilder li = new TagBuilder("li");
                TagBuilder tag = new TagBuilder("a");
                tag.MergeAttribute("href", pageUrl(i));
                tag.InnerHtml = i + "";
                if (i == pagingInfo.CurrentPage)
                {
                    tag.AddCssClass("active");
                }
                builder.Append(tag.ToString());
                li.InnerHtml = tag.ToString(TagRenderMode.Normal);
            }

            return MvcHtmlString.Create(builder.ToString());
        }
    }
}