<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="PrintingOptionsSample.MainPage" %>

<%@ Register Assembly="DevExpress.XtraCharts.v15.2.Web, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.XtraCharts.Web" TagPrefix="dxchartsui" %>

<%@ Register assembly="DevExpress.XtraCharts.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraCharts" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxchartsui:WebChartControl ID="chart" runat="server" CrosshairEnabled="True" Height="360px" PaletteName="Office 2013" Width="640px">
            <diagramserializable>
                <cc1:XYDiagram>
                    <axisx visibleinpanesserializable="-1">
                    </axisx>
                    <axisy visibleinpanesserializable="-1">
                        <wholerange alwaysshowzerolevel="False" />
                    </axisy>
                </cc1:XYDiagram>
            </diagramserializable>
            <legend alignmenthorizontal="Right" direction="LeftToRight"></legend>
            <seriesserializable>
                <cc1:Series Name="1998">
                    <points>
                        <cc1:SeriesPoint ArgumentSerializable="Illinois" Values="423.721">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Indiana" Values="178.719">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Michigan" Values="308.845">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Ohio" Values="348.555">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Wisconsin" Values="160.274">
                        </cc1:SeriesPoint>
                    </points>
                    <viewserializable>
                        <cc1:SideBySideBarSeriesView>
                            <fillstyle fillmode="Solid">
                            </fillstyle>
                        </cc1:SideBySideBarSeriesView>
                    </viewserializable>
                </cc1:Series>
                <cc1:Series Name="2001">
                    <points>
                        <cc1:SeriesPoint ArgumentSerializable="Illinois" Values="476.851">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Indiana" Values="195.769">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Michigan" Values="335.793">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Ohio" Values="374.771">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Wisconsin" Values="182.373">
                        </cc1:SeriesPoint>
                    </points>
                    <viewserializable>
                        <cc1:SideBySideBarSeriesView>
                            <fillstyle fillmode="Solid">
                            </fillstyle>
                        </cc1:SideBySideBarSeriesView>
                    </viewserializable>
                </cc1:Series>
                <cc1:Series Name="2004">
                    <points>
                        <cc1:SeriesPoint ArgumentSerializable="Illinois" Values="528.904">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Indiana" Values="227.271">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Michigan" Values="372.576">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Ohio" Values="418.258">
                        </cc1:SeriesPoint>
                        <cc1:SeriesPoint ArgumentSerializable="Wisconsin" Values="211.727">
                        </cc1:SeriesPoint>
                    </points>
                    <viewserializable>
                        <cc1:SideBySideBarSeriesView>
                            <fillstyle fillmode="Solid">
                            </fillstyle>
                        </cc1:SideBySideBarSeriesView>
                    </viewserializable>
                </cc1:Series>
            </seriesserializable>
            <titles>
                <cc1:ChartTitle Text="Great Lakes Gross State Product" />
            </titles>
        </dxchartsui:WebChartControl>
        <%--region #PrintingOptions--%>
        <button  onclick="
            var options = chart.GetPrintOptions();
            options.SetPaperKind('A5');
            options.SetMarginLeft(50);
            options.SetMarginRight(50);
            options.SetMarginTop(50);
            options.SetMarginBottom(50);
            options.SetLandscape(true);
            
            chart.Print(); 
            return false;">
            Print Chart
        </button>
        <%--region #PrintingOptions--%>
    </div>
    </form>
</body>
</html>
