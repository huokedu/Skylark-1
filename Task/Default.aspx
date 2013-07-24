﻿<%@ Page Title="人事部" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Mygod.Skylark.Task.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <style type="text/css">
        .notes {
            font-style: italic;
            color: #888888;
            font-size: 0.9em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="center">人事部</h2>
    <div>　　欢迎来到您的 云雀™ 的人事部！Mygod 工作室™ 一手为您管理这个地方，调遣人力资源来完成你分配的多到没有人性的任务，因此你只需要稍微地在这里调节几个参数即可控制大局。</div>
    <div>　　这里的员工主要来自于世界各地为了完成作业而参加社会实践活动的中小学生，他们是廉价而又优秀的义工。Mygod 工作室™从中培养出了许多优秀人才并将它们派往世界各地，包括您 云雀™ 的人事部，一个典型代表就是著名的韩亚航空214号班机的四位机长：Sum Ting Wong、Wi Tu Lo、Ho Lee Fuk、Bang Ding Ow。</div>
    
    <h3>参数控制面板</h3>
    <div>义工数量：<asp:TextBox runat="server" ID="WorkerCountBox" /></div>
    <div class="notes">这是在您的 云雀™ 打工干活的人数。由于义工等级低，在任意时刻一位义工只能干一件事情。如果义工数量过少则会因人手不足而导致干活效率过低，如果义工数量过多则会因食堂的饭不够供应吃不饱没力气干活而导致干活效率过低。因此除非你是个专家，请不要随便修改义工数量。</div>
    <div class="center"><asp:Button runat="server" Text="通知人事部经理" OnClick="UpdateArguments" /></div>
    
    <h3>人事部记过处分记录</h3>
    <div>　　当您的义工犯了什么该犯或不该犯的错误时就会在记过处分记录上留下痕迹。现在该记录的大小为 <%=LogSize %>。</div>
    <div class="center">
        <input type="button" value="查看记录" onclick="location.href='Log/'" />
        <asp:Button runat="server" Text="销毁记录" OnClick="DestroyLog" />
    </div>
</asp:Content>
