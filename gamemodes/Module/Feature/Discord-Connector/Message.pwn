#include <a_samp>
#include <YSI\y_hooks>

new DCC_Channel:Checkmess;
new DCC_Channel:LoginRegisterMess;
new DCC_Channel:LoginMess;
new DCC_Channel:MessDiscord;
new DCC_Channel:MessBan;
new DCC_Channel:MessageKick;
new DCC_Channel:CheckHackMess;
new DCC_Channel:ConnectEmed;


hook OnGameModeInit()
{
    Checkmess = DCC_FindChannelById("1137740601887031326");
    LoginRegisterMess = DCC_FindChannelById("1137802892087136256");
    LoginMess = DCC_FindChannelById("1137798750622990532");
    MessDiscord = DCC_FindChannelById("1138320983032348703");
    MessBan = DCC_FindChannelById("1138322926853177405");
    MessageKick = DCC_FindChannelById("1139594413652316192");
    CheckHackMess = DCC_FindChannelById("1140684682980245605");
    ConnectEmed = DCC_FindChannelById("1142663689879699576");
    return 1;
}

stock PlayerTextCMD(playerid, cmdtext[]) {
    new year, month, day, ip[1280];
    getdate(year, month, day);
    GetPlayerIp(playerid, ip, sizeof(ip));
    new trangthai[1280];
    if(PlayerInfo[playerid][pVerified] != 0)
        trangthai = "Da kich hoat";
    else trangthai = "Chua kich hoat";
    if(GetPVarInt(playerid, "NotAndroid") == 1)
    {
        new stringsv[1280];
        format(stringsv,sizeof(stringsv), "```[%d/%d/%d %d:%d:%d] : [Name: %s] [ID: %d] [IP: %s] [Trang Thai: %s] [PC] (CMD: %s)```", day,month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip, trangthai, cmdtext);
        DCC_SendChannelMessage(Checkmess, stringsv);
    }
    else
    {
        new stringsv[1280];
        format(stringsv,sizeof(stringsv), "```[%d/%d/%d %d:%d:%d] : [Name: %s] [ID: %d] [IP: %s] [Trang Thai: %s] [Mobile] (CMD: %s)```", day,month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip, trangthai, cmdtext);
        DCC_SendChannelMessage(Checkmess, stringsv);
    }
    return 1;
}

stock PlayerText(playerid, text[]) {
    new year, month, day, ip[1280];
    getdate(year, month, day);
    GetPlayerIp(playerid, ip, sizeof(ip));
    new trangthai[1280];
    if(PlayerInfo[playerid][pVerified] != 0)
        trangthai = "Da kich hoat";
    else trangthai = "Chua kich hoat";
    if(GetPVarInt(playerid, "NotAndroid") == 1)
    {
        new stringsv[1280];
        format(stringsv,sizeof(stringsv), "```[%d/%d/%d %d:%d:%d] : [Name: %s] [ID: %d] [IP: %s] [Trang Thai: %s] [PC] (CHAT: %s)```", day,month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip, trangthai,text);
        DCC_SendChannelMessage(Checkmess, stringsv);
    }
    else
    {
        new stringsv[1280];
        format(stringsv,sizeof(stringsv), "```[%d/%d/%d %d:%d:%d] : [Name: %s] [ID: %d] [IP: %s] [Trang Thai: %s] [Mobile] (CHAT: %s)```", day,month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip, trangthai,text);
        DCC_SendChannelMessage(Checkmess, stringsv);       
    }
    return 1;
}

stock MessLogin(playerid) {
    new year, month, day, version[32], ip[1280];
    getdate(year, month, day);
    GetPlayerIp(playerid, ip, sizeof(ip));
    GetPlayerVersion(playerid, version, sizeof(version));
    new trangthai[1280];
    if(PlayerInfo[playerid][pVerified] != 0)
        trangthai = "Da kich hoat";
    else trangthai = "Chua kich hoat";
    if(GetPVarInt(playerid, "NotAndroid") == 1)
    {
        new string[1280];
        format(string,sizeof(string), "```[%d/%d/%d %d:%d:%d] [LOGIN-DISCORD] [Name: %s] [ID: %d] [IP: %s] [Version: %s] [Trang Thai: %s] [PC] da tham gia vao may chu | Online : %s ```", day, month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip,version, trangthai, number_format(Iter_Count(Player)));
        DCC_SendChannelMessage(LoginMess, string);
    }
    else
    {
        new string[1280];
        format(string,sizeof(string), "```[%d/%d/%d %d:%d:%d] [LOGIN-DISCORD] [Name: %s] [ID: %d] [IP: %s] [Version: %s] [Trang Thai: %s] [Mobile] da tham gia vao may chu | Online : %s ```", day, month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip,version, trangthai, number_format(Iter_Count(Player)));
        DCC_SendChannelMessage(LoginMess, string);       
    }
    return 1;
}

stock MessRegister(playerid) {
    new year, month, day, version[32], ip[1280];
    getdate(year, month, day);
    GetPlayerIp(playerid, ip, sizeof(ip));
    GetPlayerVersion(playerid, version, sizeof(version));
    new trangthai[1280];
    if(PlayerInfo[playerid][pVerified] != 0)
        trangthai = "Da kich hoat";
    else trangthai = "Chua kich hoat";
    if(GetPVarInt(playerid, "NotAndroid") == 1)
    {
        new string[1280];
        format(string,sizeof(string), "```[%d/%d/%d %d:%d:%d] [REGISTER-DISCORD] [Name: %s] [ID: %d] [IP: %s] [Version: %s] [Trang Thai: %s] [PC] da dang ky tai khoan tai may chu```", day, month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip, version, trangthai);
        DCC_SendChannelMessage(LoginRegisterMess, string);
    }
    else
    {
        new string[1280];
        format(string,sizeof(string), "```[%d/%d/%d %d:%d:%d] [REGISTER-DISCORD] [Name: %s] [ID: %d] [IP: %s] [Version: %s] [Trang Thai: %s] [Mobile] da dang ky tai khoan tai may chu```", day, month, year, hour, minuite,second, GetPlayerNameEx(playerid), playerid, ip, version, trangthai);
        DCC_SendChannelMessage(LoginRegisterMess, string);        
    }
    return 1;
}


stock MessRadio(playerid, string[])   {
    new year, month, day, version[32], ip[1280];
    getdate(year, month, day);
    GetPlayerIp(playerid, ip, sizeof(ip));
    GetPlayerVersion(playerid, version, sizeof(version));
    new trangthai[1280];
    if(PlayerInfo[playerid][pVerified] != 0)
        trangthai = "Da kich hoat";
    else trangthai = "Chua kich hoat";
    if(GetPVarInt(playerid, "NotAndroid") == 1)
    {
        new messdiscord[1280];
        format(messdiscord, sizeof(messdiscord), "```[%d/%d/%d %d:%d:%d] [RADIO-DISCORD] Radio (%d khz) [Name: %s] [ID: %d] [IP: %s] [Trang Thai: %s] [PC]: (Noi dung: %s)```", day, month, year, hour, minuite,second, PlayerInfo[playerid][pRadioFreq], GetPlayerNameEx(playerid), playerid, ip, trangthai, string);
        DCC_SendChannelMessage(MessDiscord, messdiscord);
    }
    else
    {
        new messdiscord[1280];
        format(messdiscord, sizeof(messdiscord), "```[%d/%d/%d %d:%d:%d] [RADIO-DISCORD] Radio (%d khz) [Name: %s] [ID: %d] [IP: %s] [Trang Thai: %s] [Mobile]: (Noi dung: %s)```", day, month, year, hour, minuite,second, PlayerInfo[playerid][pRadioFreq], GetPlayerNameEx(playerid), playerid, ip, trangthai, string);
        DCC_SendChannelMessage(MessDiscord, messdiscord);       
    }
    return 1;
}

stock SendLoginToDiscord(DCC_Channel:channel, const FieldName[], const FieldValue[], const FieldName2[], const FieldValue2[])
{
    new DCC_Embed:embed = DCC_CreateEmbed("Player Connecting "SERVER_GM_TEXT"");
    DCC_SetEmbedColor(embed, 0x53783A);
    DCC_AddEmbedField(embed, FieldName, FieldValue, true);
    DCC_AddEmbedField(embed, FieldName2, FieldValue2, true);
    DCC_SendChannelEmbedMessage(channel, embed);
    return 1;
}

stock showemeddiscord(playerid)
{
    new playername[1280], logindate[1280], day, month, year, hours, minute, sec;

    getdate(year, month, day);
    gettime(hours, minute, sec);

    format(playername, sizeof(playername),"%s", GetPlayerNameEx(playerid));
    format(logindate, sizeof(logindate),"%d:%d:%d - %d:%d:%d", hours, minute, sec, day, month, year);

    SendLoginToDiscord(ConnectEmed, "Player name", playername, "Thamg gia vao luc", logindate);
    return 1;
}





