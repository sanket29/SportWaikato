using System;
using System.Web;
using System.Collections;
using System.Data;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.Mvc;
using System.Collections.Generic;
using CMS.CMSHelper;
using CMS.DocumentEngine;
using CMS.GlobalHelper;
using System.Web.Caching;

/// <summary>
/// Empty web service template.
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService]
public class WebService : System.Web.Services.WebService
{
    /// <summary>
    /// Constructor.
    /// </summary>
    public WebService()
    {
        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }


    /// <summary>
    /// Returns the data from DB.
    /// </summary>
    /// <param name="parameter">String parameter for sql command</param>
    [WebMethod]
    public DataSet GetDataSet(string parameter)
    {
        // INSERT YOUR WEB SERVICE CODE AND RETURN THE RESULTING DATASET

        return null;
    }


    /// <summary>
    /// The web service method to be called by AJAXControlToolkit. The signature of this method must match this method.
    /// Note that you can replace "GetCompletionList" with a name of your choice, but the return type and parameter name and type must exactly match, including case.
    /// </summary>
    /// <param name="prefixText">Prefix to be searched</param>
    /// <param name="count">Number of suggestions to be retrieved from the web service</param>
    /// <returns>Array of suggestions</returns>
    [WebMethod(MessageName = "GetCompletionList")]
    [ScriptMethod]
    public string[] GetCompletionList(string prefixText, int count)
    {
        // INSERT YOUR WEB SERVICE CODE AND RETURN THE RESULTING STRING ARRAY

        return null;
    }

	[WebMethod]
	[ScriptMethod(UseHttpGet=true)]
	public List<Event> GetEvents()
	{
		string siteName = CMSContext.CurrentSiteName;
		string path = "/%";
		string docTypes = "SW.Event";
		string culture = TreeProvider.ALL_CULTURES;
		string orderBy = "DocumentName";

		var EventList = new List<Event>();

		DataSet Items = TreeHelper.GetDocuments(siteName, path, culture, false, docTypes, "", orderBy, -1, true, -1);

		if (Items != null)
		{
			if (Items.Tables.Count > 0)
			{
				foreach(DataRow dr in Items.Tables[0].Rows)
				{
					string eventName = dr["Name"].ToString();
					var startDate = DateTime.Now;
					var endDate = DateTime.Now;

					if (!String.IsNullOrEmpty(dr["StartDate"].ToString()))
					{
						startDate = Convert.ToDateTime(dr["StartDate"].ToString());
					}

					if (!String.IsNullOrEmpty(dr["EndDate"].ToString()))
					{
						endDate = Convert.ToDateTime(dr["EndDate"].ToString());
					}

					EventList.Add(new Event(eventName, startDate, endDate));
				}
			}
		}
		
		return EventList;
	}

	public class Event {
		public string Name { get; set; }
		public DateTime StartDate { get; set; }
		public DateTime EndDate { get; set; }

		public Event()
		{

		}

		public Event(string name, DateTime startDate, DateTime endDate)
		{
			this.Name = name;
			this.StartDate = startDate;
			this.EndDate = endDate;
		}
	}
}