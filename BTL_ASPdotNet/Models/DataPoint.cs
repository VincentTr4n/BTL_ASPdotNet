using System;
using System.Runtime.Serialization;

namespace BTL_ASPdotNet.Models
{
    [DataContract]
    public class DataPoint
    {
        [DataMember(Name = "label")]
        public string label = null;

        [DataMember(Name = "y")]
        public Nullable<double> y = null;

        [DataMember(Name = "x")]
        public Nullable<double> x = null;

        public DataPoint(double y, string label)
        {
            this.y = y;
            this.label = label;
        }

        public DataPoint(double x, double y)
        {
            this.x = x;
            this.y = y;
        }


        public DataPoint(double x, double y, string label)
        {
            this.x = x;
            this.y = y;
            this.label = label;
        }
    }
}