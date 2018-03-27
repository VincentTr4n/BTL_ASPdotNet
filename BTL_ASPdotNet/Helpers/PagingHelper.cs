using BTL_ASPdotNet.Models;
using System;
using System.Text;
using System.Web.Mvc;

namespace BTL_ASPdotNet.Helpers
{
    public static class PagingHelper
    {
        public static MvcHtmlString PageLinks(this HtmlHelper html, PagingInfo pagingInfo, Func<int, string> pageUrl,bool isAdmin = false)
        {
            StringBuilder builder = new StringBuilder();

            for (int i = 1; i <= pagingInfo.TotalPage; i++)
            {
                if (!isAdmin)
                {
                    TagBuilder li = new TagBuilder("li");
                    TagBuilder tag = new TagBuilder("a");
                    tag.MergeAttribute("href", pageUrl(i));
                    tag.InnerHtml = i + "";
                    if (i == pagingInfo.CurrentPage)
                    {
                        li.AddCssClass("active");
                    }
                    li.InnerHtml = tag.ToString(TagRenderMode.Normal);
                    builder.Append(li.ToString());
                }
                else
                {
                    TagBuilder tag = new TagBuilder("a");
                    tag.MergeAttribute("href", pageUrl(i));
                    tag.InnerHtml = i + "";
                    if (i == pagingInfo.CurrentPage)
                    {
                        tag.AddCssClass("selected");
                        tag.AddCssClass("btn-primary");
                    }
                    tag.AddCssClass("btn btn-default");
                    builder.Append(tag.ToString());
                }
            }

            return MvcHtmlString.Create(builder.ToString());
        }
    }
}