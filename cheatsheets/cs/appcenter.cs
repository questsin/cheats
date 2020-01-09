//Install-Package Microsoft.AppCenter.Analytics
//Install-Package Microsoft.AppCenter.Crashes

using Microsoft.AppCenter;
using Microsoft.AppCenter.Analytics;
using Microsoft.AppCenter.Crashes;

AppCenter.Start("{Your App Secret}", typeof(Analytics), typeof(Crashes));