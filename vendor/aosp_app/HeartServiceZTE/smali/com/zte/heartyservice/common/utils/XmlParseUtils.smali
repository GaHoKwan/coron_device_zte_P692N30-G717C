.class public Lcom/zte/heartyservice/common/utils/XmlParseUtils;
.super Ljava/lang/Object;
.source "XmlParseUtils.java"


# static fields
.field private static CONFIG_PATH:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static autoRunSwitch:Ljava/lang/String;

.field private static carrier:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;

.field private static periodId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "/etc/hs_customize_asdp/hs_customize_asdp.xml"

    sput-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->CONFIG_PATH:Ljava/lang/String;

    .line 20
    const-string v0, "XmlParseUtils"

    sput-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->TAG:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->autoRunSwitch:Ljava/lang/String;

    .line 23
    sput-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->deviceType:Ljava/lang/String;

    .line 24
    sput-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->periodId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoUpdateVirusDb()Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCMVersion()Z

    move-result v0

    return v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 70
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v0

    .line 72
    :cond_0
    const-string v0, "carrier"

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    .line 73
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/StringUtils;->hasText(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string v0, "china_unicom"

    sput-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    .line 76
    :cond_1
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static getXmlFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "path"

    .prologue
    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isAutoRunSettingOn()Z
    .locals 2

    .prologue
    .line 58
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->autoRunSwitch:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 59
    const-string v0, "autorun_setting"

    invoke-static {v0}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->autoRunSwitch:Ljava/lang/String;

    .line 61
    :cond_0
    const-string v0, "on"

    sget-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->autoRunSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCMVersion()Z
    .locals 2

    .prologue
    .line 96
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getCarrier()Ljava/lang/String;

    .line 99
    :cond_0
    const-string v0, "china_mobile"

    sget-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCTCUVersion()Z
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCUVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCTVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCTVersion()Z
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getCarrier()Ljava/lang/String;

    .line 113
    :cond_0
    const-string v0, "china_telecom"

    sget-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isCUVersion()Z
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getCarrier()Ljava/lang/String;

    .line 106
    :cond_0
    const-string v0, "china_unicom"

    sget-object v1, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->carrier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isChinaMobileFeature()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getCarrier()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 84
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getCarrier()Ljava/lang/String;

    move-result-object v1

    const-string v2, "china_mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPresetCTVersion()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isCTVersion()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    :cond_0
    return v1
.end method

.method public static parseCustomizeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v6, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->CONFIG_PATH:Ljava/lang/String;

    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->getXmlFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1           #stream:Ljava/io/FileInputStream;
    .local v2, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 36
    .local v0, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .line 40
    .local v4, type:I
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, tag:Ljava/lang/String;
    const-string v6, "config"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 42
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 43
    const/4 v6, 0x0

    invoke-interface {v0, v6, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v2

    .line 54
    .end local v0           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v2           #stream:Ljava/io/FileInputStream;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #type:I
    .restart local v1       #stream:Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 45
    .end local v1           #stream:Ljava/io/FileInputStream;
    .restart local v0       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    .restart local v3       #tag:Ljava/lang/String;
    .restart local v4       #type:I
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 47
    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #stream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 51
    .end local v0           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #type:I
    :catch_0
    move-exception v6

    goto :goto_0

    .end local v1           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #stream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 49
    :catch_2
    move-exception v6

    goto :goto_0

    .end local v1           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #stream:Ljava/io/FileInputStream;
    goto :goto_0

    .line 47
    :catch_4
    move-exception v6

    goto :goto_0

    .end local v1           #stream:Ljava/io/FileInputStream;
    .restart local v2       #stream:Ljava/io/FileInputStream;
    :catch_5
    move-exception v6

    move-object v1, v2

    .end local v2           #stream:Ljava/io/FileInputStream;
    .restart local v1       #stream:Ljava/io/FileInputStream;
    goto :goto_0
.end method
