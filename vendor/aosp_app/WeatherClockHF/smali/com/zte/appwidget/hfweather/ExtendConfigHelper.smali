.class public final Lcom/zte/appwidget/hfweather/ExtendConfigHelper;
.super Ljava/lang/Object;
.source "ExtendConfigHelper.java"


# static fields
.field private static final CONFIG_MIFAVOR_XML:Ljava/lang/String; = "/system/etc/custom_config/app/ZTEHFWeather/configWeather.xml"

.field private static DEBUG:Z = false

.field public static final EXTEND_CONIFG_PATH:Ljava/lang/String; = "/system/etc/custom_config/app"

.field public static ExCfgClockActivityNameEnable:Z = false

.field public static ExCfgClockPackagesNameEnable:Z = false

.field public static ExtendedCustomEnable:Z = false

.field private static final TAG:Ljava/lang/String; = "ExtendConfigHelper"

.field public static exCfgClockActivityName:Ljava/lang/String;

.field public static exCfgClockPackagesName:Ljava/lang/String;

.field private static isReadXML:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->DEBUG:Z

    .line 22
    sput-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->isReadXML:Z

    .line 23
    sput-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExtendedCustomEnable:Z

    .line 25
    const-string v0, ""

    sput-object v0, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->exCfgClockPackagesName:Ljava/lang/String;

    .line 26
    const-string v0, ""

    sput-object v0, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->exCfgClockActivityName:Ljava/lang/String;

    .line 28
    sput-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExCfgClockPackagesNameEnable:Z

    .line 29
    sput-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExCfgClockActivityNameEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Check(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/custom_config/app/ZTEHFWeather/configWeather.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 34
    sget-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ExtendConfigHelper"

    const-string v2, "file is not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->isReadXML:Z

    if-nez v1, :cond_0

    .line 39
    invoke-static {p0, v0}, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->decodeXmlFileExtendCustom(Landroid/content/Context;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const/4 v1, 0x1

    sput-boolean v1, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExtendedCustomEnable:Z

    goto :goto_0
.end method

.method public static decodeXmlFileExtendCustom(Landroid/content/Context;Ljava/io/File;)Z
    .locals 13
    .parameter "context"
    .parameter "file"

    .prologue
    const/4 v12, 0x1

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, stream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 50
    .local v5, success:Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 51
    .end local v3           #stream:Ljava/io/FileInputStream;
    .local v4, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 52
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v2, v4, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 56
    .local v7, type:I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_1

    .line 57
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, name:Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v2, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, tag:Ljava/lang/String;
    const-string v9, "config_clock_packages_name"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 60
    const-string v9, "string"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 61
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->exCfgClockPackagesName:Ljava/lang/String;

    .line 63
    const/4 v9, 0x1

    sput-boolean v9, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExCfgClockPackagesNameEnable:Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 77
    .end local v1           #name:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    :goto_0
    if-ne v7, v12, :cond_0

    .line 78
    const/4 v5, 0x1

    move-object v3, v4

    .line 91
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v3, :cond_2

    .line 92
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 93
    const/4 v3, 0x0

    .line 98
    :cond_2
    :goto_2
    sput-boolean v12, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->isReadXML:Z

    .line 99
    return v5

    .line 65
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_3
    :try_start_3
    sget-boolean v9, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "other tyle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 79
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #type:I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 80
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NullPointerException;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_3
    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 67
    .end local v0           #e:Ljava/lang/NullPointerException;
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_4
    :try_start_4
    const-string v9, "config_clock_activity_name"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 68
    const-string v9, "string"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 69
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v8

    .line 70
    .restart local v8       #value:Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->exCfgClockActivityName:Ljava/lang/String;

    .line 71
    const/4 v9, 0x1

    sput-boolean v9, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->ExCfgClockActivityNameEnable:Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_0

    .line 81
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #type:I
    .end local v8           #value:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 82
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v0, e:Ljava/lang/NumberFormatException;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_4
    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 73
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    .restart local v6       #tag:Ljava/lang/String;
    .restart local v7       #type:I
    :cond_5
    :try_start_5
    sget-boolean v9, Lcom/zte/appwidget/hfweather/ExtendConfigHelper;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "other tyle="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_0

    .line 83
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #tag:Ljava/lang/String;
    .end local v7           #type:I
    :catch_2
    move-exception v0

    move-object v3, v4

    .line 84
    .end local v4           #stream:Ljava/io/FileInputStream;
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    :goto_5
    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 85
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 87
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v9, "ExtendConfigHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 95
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v9

    goto/16 :goto_2

    .line 87
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 85
    .end local v3           #stream:Ljava/io/FileInputStream;
    .restart local v4       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4           #stream:Ljava/io/FileInputStream;
    .restart local v3       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 83
    :catch_8
    move-exception v0

    goto :goto_5

    .line 81
    :catch_9
    move-exception v0

    goto/16 :goto_4

    .line 79
    :catch_a
    move-exception v0

    goto/16 :goto_3
.end method
