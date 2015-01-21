.class final Ltmsdk/bg/module/ipdial/a;
.super Ltmsdk/bg/creator/BaseManagerB;
.source "SourceFile"


# instance fields
.field uD:Ltmsdk/common/module/ipdial/IpDialManagerSetting;

.field uE:Ltmsdk/bg/module/location/LocationManager;

.field uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ltmsdk/bg/creator/BaseManagerB;-><init>()V

    return-void
.end method

.method private bG(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 76
    const-string v1, "IpDialManagerImpl"

    invoke-static {v1, p1}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Ltmsdk/bg/module/ipdial/a;->getIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v0

    .line 78
    .local v0, settings:Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTING Dial Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getIpDialMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTING Ip Head: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTING Local Phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getLocalPhoneLocation()Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getLocalPhoneLocation()Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTING Excluded Area: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getExcludedAreaList()Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->listToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    const-string v1, "IpDialManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETTING Excluded Phone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getExcludedPhoneNumberList()Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    move-result-object v3

    invoke-virtual {v3}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->listToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method private bH(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "number"

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x0

    .line 93
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v3, :cond_1

    :cond_0
    move-object v4, p1

    .line 141
    :goto_0
    return-object v4

    .line 98
    :cond_1
    const-string v4, "+86"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 99
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 102
    :cond_2
    iget-object v4, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v4, :cond_4

    iget-object v4, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v4}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v4

    invoke-virtual {v4}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, ipHeader:Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 105
    .local v3, ipHeaderLen:I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_5

    move-object v4, p1

    .line 106
    goto :goto_0

    .line 102
    .end local v2           #ipHeader:Ljava/lang/String;
    .end local v3           #ipHeaderLen:I
    :cond_4
    const-string v2, ""

    goto :goto_1

    .line 109
    .restart local v2       #ipHeader:Ljava/lang/String;
    .restart local v3       #ipHeaderLen:I
    :cond_5
    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, header:Ljava/lang/String;
    const/4 v0, 0x0

    .line 112
    .local v0, hasIpHeader:Z
    const-string v4, "17911"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 113
    const/4 v0, 0x1

    .line 136
    :cond_6
    :goto_2
    if-eqz v0, :cond_11

    .line 137
    const-string v4, "IpDialManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "has IP header, remove the header("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 114
    :cond_7
    const-string v4, "17951"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 115
    const/4 v0, 0x1

    goto :goto_2

    .line 116
    :cond_8
    const-string v4, "10193"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 117
    const/4 v0, 0x1

    goto :goto_2

    .line 118
    :cond_9
    const-string v4, "17910"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 119
    const/4 v0, 0x1

    goto :goto_2

    .line 120
    :cond_a
    const-string v4, "12520"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 121
    const/4 v0, 0x1

    goto :goto_2

    .line 122
    :cond_b
    const-string v4, "12583"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 123
    const/4 v0, 0x1

    goto :goto_2

    .line 124
    :cond_c
    const-string v4, "96688"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 125
    const/4 v0, 0x1

    goto :goto_2

    .line 126
    :cond_d
    const-string v4, "17901"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 127
    const/4 v0, 0x1

    goto :goto_2

    .line 128
    :cond_e
    const-string v4, "12593"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 129
    const/4 v0, 0x1

    goto :goto_2

    .line 130
    :cond_f
    const-string v4, "17909"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 132
    :cond_10
    if-eqz v2, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 133
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 140
    :cond_11
    const-string v4, "IpDialManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "don\'t has IP header, go to next step!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, p1

    .line 141
    goto/16 :goto_0
.end method

.method private bI(Ljava/lang/String;)Z
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 213
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 214
    .local v0, country:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 215
    .local v2, location:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v3, operator:Ljava/lang/StringBuffer;
    iget-object v6, p0, Ltmsdk/bg/module/ipdial/a;->uE:Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v6, v0, v2, v3, p1}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 218
    .local v5, provCity:[Ljava/lang/String;
    new-instance v4, Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    invoke-direct {v4}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;-><init>()V

    .line 219
    .local v4, pc:Ltmsdk/common/module/ipdial/IpDialProvinceCity;
    array-length v6, v5

    if-le v6, v8, :cond_1

    .line 220
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    .line 221
    aget-object v6, v5, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->setCity(Ljava/lang/String;)V

    .line 225
    :goto_0
    iget-object v6, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v6, :cond_0

    iget-object v6, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v6}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getExcludedAreaList()Ltmsdk/common/module/ipdial/IpDialProvinceCityList;

    move-result-object v6

    invoke-virtual {v6, v4}, Ltmsdk/common/module/ipdial/IpDialProvinceCityList;->existed(Ltmsdk/common/module/ipdial/IpDialProvinceCity;)Z

    move-result v1

    .line 228
    .local v1, existed:Z
    :cond_0
    const-string v6, "IpDialManagerImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is {"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    return v1

    .line 223
    .end local v1           #existed:Z
    :cond_1
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->setProvince(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bJ(Ljava/lang/String;)Z
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 238
    new-instance v0, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ltmsdk/common/module/ipdial/IpDialPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v0, number:Ltmsdk/common/module/ipdial/IpDialPhoneNumber;
    iget-object v1, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v1}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getExcludedPhoneNumberList()Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ltmsdk/common/module/ipdial/IpDialPhoneNumberList;->exists(Ltmsdk/common/module/ipdial/IpDialPhoneNumber;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private bK(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 245
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/a;->uE:Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v0, p1}, Ltmsdk/bg/module/location/LocationManager;->isYellowPageNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bL(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "phoneNumber"

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 255
    .local v0, country:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 256
    .local v2, location:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 257
    .local v4, operator:Ljava/lang/StringBuffer;
    iget-object v5, p0, Ltmsdk/bg/module/ipdial/a;->uE:Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v5, v0, v2, v4, p1}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, locationTrim:Ljava/lang/String;
    const-string v1, ""

    .line 260
    .local v1, localPhone:Ljava/lang/String;
    iget-object v5, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v5, :cond_0

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v6}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getLocalPhoneLocation()Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getProvince()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v6}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getLocalPhoneLocation()Ltmsdk/common/module/ipdial/IpDialProvinceCity;

    move-result-object v6

    invoke-virtual {v6}, Ltmsdk/common/module/ipdial/IpDialProvinceCity;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    :cond_0
    const-string v5, "IpDialManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocationTrime{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} compare localPhone{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "400"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "800"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 269
    :cond_2
    const-string v5, "IpDialManagerImpl"

    const-string v6, "WHEN-DIAL-LONG-DISTANCE-CALL: You are dialing local call"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    .end local p1
    :goto_0
    return-object p1

    .line 272
    .restart local p1
    :cond_3
    const-string v5, "IpDialManagerImpl"

    const-string v6, "WHEN-DIAL-LONG-DISTANCE-CALL: You are dialing IP call"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 274
    invoke-direct {p0, p1}, Ltmsdk/bg/module/ipdial/a;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private bM(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Ltmsdk/bg/module/ipdial/a;->bN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private bN(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 293
    iget-object v1, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v1, :cond_1

    iget-object v1, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v1}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v1

    invoke-virtual {v1}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getIpHeader()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, ipHeader:Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 301
    .end local p1
    :cond_0
    return-object p1

    .line 293
    .end local v0           #ipHeader:Ljava/lang/String;
    .restart local p1
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public doIpCall(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter "ipPhoneNum"
    .parameter "receiver"

    .prologue
    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p2, p1}, Landroid/content/BroadcastReceiver;->setResultData(Ljava/lang/String;)V

    .line 337
    :cond_0
    return-void
.end method

.method public getDialPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "number"

    .prologue
    .line 151
    if-eqz p1, :cond_1

    .line 152
    const-string v5, "IpDialManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Start dealing with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-direct {p0, p1}, Ltmsdk/bg/module/ipdial/a;->bH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, phoneNumber:Ljava/lang/String;
    const-string v5, "IpDialManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remove header, it becomes "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    invoke-direct {p0, v4}, Ltmsdk/bg/module/ipdial/a;->bI(Ljava/lang/String;)Z

    move-result v0

    .line 165
    .local v0, inExcludedAL:Z
    invoke-direct {p0, v4}, Ltmsdk/bg/module/ipdial/a;->bJ(Ljava/lang/String;)Z

    move-result v1

    .line 166
    .local v1, inExcludedPL:Z
    invoke-direct {p0, v4}, Ltmsdk/bg/module/ipdial/a;->bK(Ljava/lang/String;)Z

    move-result v2

    .line 168
    .local v2, inYellowL:Z
    const-string v5, "IpDialManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Excluded-Area "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Excluded-Phone "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Yellow-Page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_2

    .line 172
    :cond_0
    const-string v5, "IpDialManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in the excluded lists, so change nothing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 204
    .end local v0           #inExcludedAL:Z
    .end local v1           #inExcludedPL:Z
    .end local v2           #inYellowL:Z
    .end local v4           #phoneNumber:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 154
    :cond_1
    const-string v5, "IpDialManagerImpl"

    const-string v6, "Start dealing with empty traffic! So return as it was!"

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, p1

    .line 155
    goto :goto_0

    .line 178
    .restart local v0       #inExcludedAL:Z
    .restart local v1       #inExcludedPL:Z
    .restart local v2       #inYellowL:Z
    .restart local v4       #phoneNumber:Ljava/lang/String;
    :cond_2
    const-string v5, "call [getDialPhoneNumber]"

    invoke-direct {p0, v5}, Ltmsdk/bg/module/ipdial/a;->bG(Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v5, :cond_3

    iget-object v5, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v5}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v5

    invoke-virtual {v5}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->getIpDialMode()I

    move-result v3

    .line 183
    .local v3, ipDialMode:I
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 193
    :pswitch_0
    const-string v5, "IpDialManagerImpl"

    const-string v6, "use IP-DIAL-MODE when dialing long-distance calls."

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x8

    if-gt v5, v6, :cond_4

    .line 195
    const-string v5, "IpDialManagerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'s length less than 8, so do nothing!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    .end local v3           #ipDialMode:I
    :cond_3
    const/4 v3, 0x2

    goto :goto_1

    .line 185
    .restart local v3       #ipDialMode:I
    :pswitch_1
    const-string v5, "IpDialManagerImpl"

    const-string v6, "not use IP-DIAL-MODE."

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :pswitch_2
    const-string v5, "IpDialManagerImpl"

    const-string v6, "use IP-DIAL-MODE when dialing any calls."

    invoke-static {v5, v6}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    invoke-direct {p0, v4}, Ltmsdk/bg/module/ipdial/a;->bM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 198
    :cond_4
    invoke-direct {p0, v4}, Ltmsdk/bg/module/ipdial/a;->bL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    invoke-interface {v0}, Ltmsdk/common/module/ipdial/IAbsIpSetting;->getSettings()Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/ipdial/a;->uD:Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    goto :goto_0
.end method

.method public getLagacyIpDialSetting()Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    .locals 10

    .prologue
    .line 347
    new-instance v4, Ltmsdkobf/kf;

    const-string v8, "IpDialProperty"

    invoke-direct {v4, v8}, Ltmsdkobf/kf;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, property:Ltmsdkobf/kf;
    new-instance v6, Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    invoke-direct {v6}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;-><init>()V

    .line 349
    .local v6, setting:Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    const-string v8, "ip_dial_setting"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Ltmsdkobf/kf;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, storeData:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 352
    :try_start_0
    invoke-static {v7}, Ltmsdkobf/jr;->hexStringToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 353
    .local v1, bytes:[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 354
    .local v0, byteStream:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 355
    .local v3, objectStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    .line 356
    .local v5, s:Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    invoke-virtual {v6, v5}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;->copyFrom(Ltmsdk/common/module/ipdial/IpDialManagerSetting;)V

    .line 357
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 358
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0           #byteStream:Ljava/io/ByteArrayInputStream;
    .end local v1           #bytes:[B
    .end local v3           #objectStream:Ljava/io/ObjectInputStream;
    .end local v5           #s:Ltmsdk/common/module/ipdial/IpDialManagerSetting;
    :cond_0
    :goto_0
    return-object v6

    .line 359
    :catch_0
    move-exception v2

    .line 360
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "IpDialManagerImpl"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const-class v0, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v0}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v0

    check-cast v0, Ltmsdk/bg/module/location/LocationManager;

    iput-object v0, p0, Ltmsdk/bg/module/ipdial/a;->uE:Ltmsdk/bg/module/location/LocationManager;

    .line 54
    new-instance v0, Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    invoke-direct {v0}, Ltmsdk/common/module/ipdial/IpDialManagerSetting;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/ipdial/a;->uD:Ltmsdk/common/module/ipdial/IpDialManagerSetting;

    .line 56
    return-void
.end method

.method public setIpDialSettingDao(Ltmsdk/common/module/ipdial/IAbsIpSetting;)V
    .locals 0
    .parameter "setting"

    .prologue
    .line 59
    iput-object p1, p0, Ltmsdk/bg/module/ipdial/a;->uF:Ltmsdk/common/module/ipdial/IAbsIpSetting;

    .line 60
    return-void
.end method
