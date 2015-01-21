.class public Lcom/mediatek/voicecommand/cfg/ConfigurationXML;
.super Ljava/lang/Object;
.source "ConfigurationXML.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ConfigurationXML"

.field public static final sPublicFeatureName:Ljava/lang/String; = "android.mediatek.feature"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyWord:Ljava/lang/String;

.field private mVoiceFeatureName:Ljava/lang/String;

.field private mVoiceInfoCommandID:Ljava/lang/String;

.field private mVoiceInfoEnable:Ljava/lang/String;

.field private mVoiceInfoID:Ljava/lang/String;

.field private mVoiceInfoPermissionID:Ljava/lang/String;

.field private mVoiceProcessName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, "ID"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoID:Ljava/lang/String;

    .line 62
    const-string v0, "KeyWord"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mKeyWord:Ljava/lang/String;

    .line 63
    const-string v0, "CommandID"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoCommandID:Ljava/lang/String;

    .line 64
    const-string v0, "PermissionID"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoPermissionID:Ljava/lang/String;

    .line 65
    const-string v0, "Enable"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoEnable:Ljava/lang/String;

    .line 68
    const-string v0, "ProcessName"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceProcessName:Ljava/lang/String;

    .line 69
    const-string v0, "FeatureName"

    iput-object v0, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceFeatureName:Ljava/lang/String;

    .line 75
    iput-object p1, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method


# virtual methods
.method public readCustomizationFromXML(Lcom/mediatek/voicecommand/cfg/VoiceCustomization;)V
    .locals 10
    .parameter "voiceCustomization"

    .prologue
    .line 213
    const-string v7, "ConfigurationXML"

    const-string v8, "readCustomizationFromXML "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, isSystemLanguage:Z
    const/4 v5, 0x0

    .line 216
    .local v5, systemLanguage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 218
    .local v0, defaultLanguage:Ljava/lang/String;
    iget-object v7, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 220
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v4, :cond_0

    .line 221
    const-string v7, "ConfigurationXML"

    const-string v8, "readCustomizationFromXML Got execption"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_0
    return-void

    .line 226
    :cond_0
    :goto_1
    :try_start_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    .local v6, xmlEventType:I
    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    .line 227
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const-string v7, "VoiceCustomization"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 230
    const/4 v7, 0x0

    const-string v8, "SystemLanguage"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 231
    const/4 v7, 0x0

    const-string v8, "DefaultLanguage"

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 234
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    const-string v7, "ConfigurationXML"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "systemLanguage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "defaultLanguage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 245
    .end local v6           #xmlEventType:I
    :goto_2
    const-string v7, "TRUE"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 246
    const/4 v2, 0x1

    .line 248
    :cond_2
    iput-boolean v2, p1, Lcom/mediatek/voicecommand/cfg/VoiceCustomization;->mIsSystemLanguage:Z

    .line 249
    iput-object v0, p1, Lcom/mediatek/voicecommand/cfg/VoiceCustomization;->mDefaultLanguage:Ljava/lang/String;

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "ConfigurationXML"

    const-string v8, "Got execption parsing customization."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 237
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 238
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "ConfigurationXML"

    const-string v8, "Got execption finding file."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 239
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 240
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ConfigurationXML"

    const-string v8, "Got execption parsing languages."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 241
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "ConfigurationXML"

    const-string v8, "readCustomizationFromXML Got execption. "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public readKeyWordFromXml(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 15
    .parameter
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, voiceKeyWordInfos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;>;"
    const-string v12, "ConfigurationXML"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readKeyWordFromXml from file:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, in:Ljava/io/InputStream;
    iget-object v12, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 92
    .local v1, assetManager:Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 93
    .local v4, keyWord:Ljava/lang/String;
    const/4 v9, 0x0

    .line 94
    .local v9, processName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 95
    .local v8, path:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 97
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 98
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v12, "UTF-8"

    invoke-interface {v7, v3, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, xmlEventType:I
    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 100
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, name:Ljava/lang/String;
    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const-string v12, "KeyWordInfo"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 103
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceProcessName:Ljava/lang/String;

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 105
    const/4 v12, 0x0

    iget-object v13, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mKeyWord:Ljava/lang/String;

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    const/4 v12, 0x0

    const-string v13, "Path"

    invoke-interface {v7, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 108
    :cond_1
    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    const-string v12, "KeyWordInfo"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 110
    if-eqz v9, :cond_3

    if-eqz v4, :cond_3

    .line 111
    const-string v12, "ConfigurationXML"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "readEnglishKeyWordFromXml processName   = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  KeyWord ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v12, ","

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 114
    .local v5, keyWordArray:[Ljava/lang/String;
    new-instance v10, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;

    invoke-direct {v10, v5, v8}, Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v10, voiceKeyWordInfo:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 121
    .end local v5           #keyWordArray:[Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #voiceKeyWordInfo:Lcom/mediatek/voicecommand/cfg/VoiceKeyWordInfo;
    .end local v11           #xmlEventType:I
    :catch_0
    move-exception v2

    .line 122
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption parsing permissions."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    if-eqz v3, :cond_2

    .line 130
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 136
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return-void

    .line 117
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #xmlEventType:I
    :cond_3
    :try_start_3
    const-string v12, "ConfigurationXML"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error processName or keyWord "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 123
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #xmlEventType:I
    :catch_1
    move-exception v2

    .line 124
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption finding file."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    if-eqz v3, :cond_2

    .line 130
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 132
    :catch_2
    move-exception v2

    .line 133
    .local v2, e:Ljava/io/IOException;
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption parsing permissions."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 129
    .end local v2           #e:Ljava/io/IOException;
    .restart local v7       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #xmlEventType:I
    :cond_4
    if-eqz v3, :cond_2

    .line 130
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 132
    :catch_3
    move-exception v2

    .line 133
    .restart local v2       #e:Ljava/io/IOException;
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption parsing permissions."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 132
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #xmlEventType:I
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v2

    .line 133
    .local v2, e:Ljava/io/IOException;
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption parsing permissions."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 126
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_7
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption parsing permissions."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    if-eqz v3, :cond_2

    .line 130
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_1

    .line 132
    :catch_6
    move-exception v2

    .line 133
    const-string v12, "ConfigurationXML"

    const-string v13, "Got execption parsing permissions."

    invoke-static {v12, v13, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 128
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 129
    if-eqz v3, :cond_5

    .line 130
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 134
    :cond_5
    :goto_2
    throw v12

    .line 132
    :catch_7
    move-exception v2

    .line 133
    .restart local v2       #e:Ljava/io/IOException;
    const-string v13, "ConfigurationXML"

    const-string v14, "Got execption parsing permissions."

    invoke-static {v13, v14, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public readVoiceFilePathFromXml(Ljava/util/HashMap;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pathMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 254
    iget-object v6, p0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f050003

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 256
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v2, :cond_1

    .line 257
    const-string v6, "ConfigurationXML"

    const-string v7, "the package has no voice command path "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v4, 0x0

    .line 264
    .local v4, processName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 265
    .local v3, path:Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, xmlEventType:I
    if-eq v5, v7, :cond_0

    .line 266
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, name:Ljava/lang/String;
    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-string v6, "Path"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 269
    const/4 v6, 0x0

    const-string v9, "Name"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    const/4 v6, 0x0

    const-string v9, "Path"

    invoke-interface {v2, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 271
    :cond_3
    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const-string v6, "Path"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    if-eqz v4, :cond_4

    move v9, v7

    :goto_2
    if-eqz v3, :cond_5

    move v6, v7

    :goto_3
    and-int/2addr v6, v9

    if-eqz v6, :cond_6

    .line 274
    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 280
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #xmlEventType:I
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v6, "ConfigurationXML"

    const-string v7, "Got execption parsing paths."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1       #name:Ljava/lang/String;
    .restart local v5       #xmlEventType:I
    :cond_4
    move v9, v8

    .line 273
    goto :goto_2

    :cond_5
    move v6, v8

    goto :goto_3

    .line 276
    :cond_6
    :try_start_1
    const-string v6, "ConfigurationXML"

    const-string v9, "the package has no voice command path "

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 282
    .end local v1           #name:Ljava/lang/String;
    .end local v5           #xmlEventType:I
    :catch_1
    move-exception v0

    .line 283
    .local v0, e:Ljava/io/IOException;
    const-string v6, "ConfigurationXML"

    const-string v7, "Got execption parsing paths."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 284
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 285
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "ConfigurationXML"

    const-string v7, "readVoiceFilePathFromXml Got execption. "

    invoke-static {v6, v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readVoiceLanguangeFromXml(Ljava/util/ArrayList;)I
    .locals 18
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, languageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;>;"
    const/4 v2, -0x1

    .line 141
    .local v2, curIndex:I
    const-string v15, "ConfigurationXML"

    const-string v16, "readVoiceLanguangeFromXml "

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-nez p1, :cond_0

    move v3, v2

    .line 209
    .end local v2           #curIndex:I
    .local v3, curIndex:I
    :goto_0
    return v3

    .line 146
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f050005

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v13

    .line 149
    .local v13, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v13, :cond_1

    .line 150
    const-string v15, "ConfigurationXML"

    const-string v16, "readVoiceLanguangeFromXml Got execption"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 151
    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    goto :goto_0

    .line 153
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    :cond_1
    const/4 v4, 0x0

    .line 156
    .local v4, curlanguage:Ljava/lang/String;
    const/4 v11, 0x0

    .line 157
    .local v11, languageName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 158
    .local v7, filepath:Ljava/lang/String;
    const/4 v9, 0x0

    .line 159
    .local v9, id:Ljava/lang/String;
    const/4 v1, 0x0

    .line 160
    .local v1, code:Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    .local v14, xmlEventType:I
    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    .line 161
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 162
    .local v12, name:Ljava/lang/String;
    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    const-string v15, "Language"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 165
    const/4 v15, 0x0

    const-string v16, "TypeName"

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 166
    const/4 v15, 0x0

    const-string v16, "FileName"

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    const/4 v15, 0x0

    const-string v16, "ID"

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 168
    const/4 v15, 0x0

    const-string v16, "Code"

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 170
    :cond_3
    const/4 v15, 0x3

    if-ne v14, v15, :cond_7

    const-string v15, "Language"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 172
    if-eqz v11, :cond_2

    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    .line 173
    new-instance v10, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-direct {v10, v11, v7, v15, v1}, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 176
    .local v10, info:Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 184
    .end local v10           #info:Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #xmlEventType:I
    :catch_0
    move-exception v6

    .line 185
    .local v6, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v15, "ConfigurationXML"

    const-string v16, "Got execption parsing languages."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v6           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :cond_4
    :goto_2
    const-string v15, "ConfigurationXML"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readVoiceLanguangeFromXml curlanguage:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz v4, :cond_6

    .line 197
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 198
    .local v5, curlanguageID:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v8, v15, :cond_5

    .line 199
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;

    iget v15, v15, Lcom/mediatek/voicecommand/cfg/VoiceLanguageInfo;->mLanguageID:I

    if-ne v15, v5, :cond_8

    .line 200
    move v2, v8

    .line 204
    :cond_5
    if-gez v2, :cond_6

    .line 205
    const/4 v2, 0x0

    .line 208
    .end local v5           #curlanguageID:I
    .end local v8           #i:I
    :cond_6
    const-string v15, "ConfigurationXML"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "readVoiceLanguangeFromXml curIndex:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 209
    .end local v2           #curIndex:I
    .restart local v3       #curIndex:I
    goto/16 :goto_0

    .line 178
    .end local v3           #curIndex:I
    .restart local v2       #curIndex:I
    .restart local v12       #name:Ljava/lang/String;
    .restart local v14       #xmlEventType:I
    :cond_7
    const/4 v15, 0x2

    if-ne v14, v15, :cond_2

    :try_start_1
    const-string v15, "DefaultLanguage"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 180
    const/4 v15, 0x0

    const-string v16, "ID"

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v4

    goto/16 :goto_1

    .line 186
    .end local v12           #name:Ljava/lang/String;
    .end local v14           #xmlEventType:I
    :catch_1
    move-exception v6

    .line 187
    .local v6, e:Ljava/io/FileNotFoundException;
    const-string v15, "ConfigurationXML"

    const-string v16, "Got execption finding file."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 188
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 189
    .local v6, e:Ljava/io/IOException;
    const-string v15, "ConfigurationXML"

    const-string v16, "Got execption parsing languages."

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 190
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v6

    .line 191
    .local v6, e:Ljava/lang/Exception;
    const-string v15, "ConfigurationXML"

    const-string v16, "readVoiceLanguangeFromXml Got execption. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 198
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v5       #curlanguageID:I
    .restart local v8       #i:I
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3
.end method

.method public readVoiceProcessInfoFromXml(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, voiceProcessInfos:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;>;"
    .local p2, voiceUiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050006

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 293
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    if-nez v9, :cond_0

    .line 294
    const-string v17, "ConfigurationXML"

    const-string v18, "the package has no voice command info"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v5, 0x0

    .line 300
    .local v5, featureName:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    move-object v15, v14

    .line 301
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .local v15, voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :goto_1
    :try_start_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, xmlEventType:I
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    .line 303
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 304
    .local v8, name:Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    const-string v17, "VoiceProcessInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 307
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceFeatureName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 309
    if-eqz v5, :cond_9

    .line 311
    new-instance v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;

    invoke-direct {v14, v5}, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 313
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceProcessName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mProcessName:Ljava/lang/String;

    .line 316
    const/16 v17, 0x0

    const-string v18, "RelationProcess"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    .line 319
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 321
    .local v7, idStr:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 322
    const-string v17, "ConfigurationXML"

    const-string v18, " voiceInfo XML ID = NULL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 323
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto :goto_1

    .line 325
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mID:I

    .line 326
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoCommandID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, commandID:Ljava/lang/String;
    if-nez v2, :cond_2

    .line 329
    const-string v17, "ConfigurationXML"

    const-string v18, " voiceInfo XML commandID = NULL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 330
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto/16 :goto_1

    .line 333
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoPermissionID:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 335
    .local v10, permissionID:Ljava/lang/String;
    if-nez v10, :cond_3

    .line 336
    const-string v17, "ConfigurationXML"

    const-string v18, " voiceInfo XML PermissionID = NULL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 337
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto/16 :goto_1

    .line 340
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_3
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/voicecommand/cfg/ConfigurationXML;->mVoiceInfoEnable:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, voiceEnable:Ljava/lang/String;
    if-nez v13, :cond_4

    .line 343
    const-string v17, "ConfigurationXML"

    const-string v18, " voiceInfo XML voiceEnable1 = NULL"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v14

    .line 344
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto/16 :goto_1

    .line 346
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_4
    const-string v17, "TRUE"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x1

    :goto_2
    move/from16 v0, v17

    iput-boolean v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->isVoiceEnable:Z

    .line 349
    const-string v17, "ConfigurationXML"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "readVoiceInfoFromXml featureName = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "  commandID ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " permissionID = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " voiceEnable="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v2, :cond_6

    .line 355
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, commandIDTemp:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_6

    .line 358
    iget-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mCommandIDList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v3, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 346
    .end local v3           #commandIDTemp:[Ljava/lang/String;
    .end local v6           #i:I
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 363
    :cond_6
    if-eqz v10, :cond_a

    .line 364
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 365
    .local v11, permissionIDTemp:[Ljava/lang/String;
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_4
    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_a

    .line 367
    aget-object v17, v11, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 369
    .local v12, permissionid:I
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_8

    iget-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    iget-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mRelationProcessName:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "android.mediatek.feature"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 372
    :cond_7
    iget-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mFeatureName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_8
    iget-object v0, v14, Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;->mPermissionIDList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    aget-object v18, v11, v6

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 365
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 381
    .end local v2           #commandID:Ljava/lang/String;
    .end local v6           #i:I
    .end local v7           #idStr:Ljava/lang/String;
    .end local v10           #permissionID:Ljava/lang/String;
    .end local v11           #permissionIDTemp:[Ljava/lang/String;
    .end local v12           #permissionid:I
    .end local v13           #voiceEnable:Ljava/lang/String;
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_9
    :try_start_2
    const-string v17, "ConfigurationXML"

    const-string v18, "the package has no voice command info "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v14, v15

    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_a
    :goto_5
    move-object v15, v14

    .line 389
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto/16 :goto_1

    .line 383
    :cond_b
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    const-string v17, "VoiceProcessInfo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 385
    if-eqz v5, :cond_c

    if-eqz v15, :cond_c

    .line 386
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    move-object v14, v15

    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto :goto_5

    .end local v8           #name:Ljava/lang/String;
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :cond_d
    move-object v14, v15

    .line 396
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    goto/16 :goto_0

    .line 390
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .end local v16           #xmlEventType:I
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :catch_0
    move-exception v4

    move-object v14, v15

    .line 391
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :goto_6
    const-string v17, "ConfigurationXML"

    const-string v18, "Got execption parsing permissions."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 392
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :catch_1
    move-exception v4

    move-object v14, v15

    .line 393
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .local v4, e:Ljava/io/IOException;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :goto_7
    const-string v17, "ConfigurationXML"

    const-string v18, "Got execption parsing permissions."

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 394
    .end local v4           #e:Ljava/io/IOException;
    .end local v14           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .restart local v15       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :catch_2
    move-exception v4

    move-object v14, v15

    .line 395
    .end local v15           #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    .local v4, e:Ljava/lang/Exception;
    .restart local v14       #voiceProcessInfo:Lcom/mediatek/voicecommand/cfg/VoiceProcessInfo;
    :goto_8
    const-string v17, "ConfigurationXML"

    const-string v18, "readVoiceProcessInfoFromXml Got execption. "

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 394
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v8       #name:Ljava/lang/String;
    .restart local v16       #xmlEventType:I
    :catch_3
    move-exception v4

    goto :goto_8

    .line 392
    :catch_4
    move-exception v4

    goto :goto_7

    .line 390
    :catch_5
    move-exception v4

    goto :goto_6
.end method
