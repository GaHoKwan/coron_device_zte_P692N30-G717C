.class public Lcom/zte/backup/utils/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/backup/utils/VersionInfo$VersionData;
    }
.end annotation


# static fields
.field private static final ANDROID_VERSION:Ljava/lang/String; = "Android_Version"

.field private static final HARDWARE_MODEL:Ljava/lang/String; = "Hardware_Version"

.field protected static final INDENT_OUTPUT:Ljava/lang/String; = "http://xmlpull.org/v1/doc/features.html#indent-output"

.field private static final MMS_COUNT:Ljava/lang/String; = "MMS_NUMBER"

.field private static final MTK_MODEL_DOUBLE_SET:[Ljava/lang/String; = null

.field private static final MTK_MODEL_SET:[Ljava/lang/String; = null

.field private static final PHONE_MANUFACTURER:Ljava/lang/String; = "Phone_Manufacturer"

.field private static final SMS_COUNT:Ljava/lang/String; = "SMS_NUMBER"

.field private static final SOFTWARE_VERSION:Ljava/lang/String; = "Phone_Version"

.field private static final SPRD_MODEL_SET:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VersionInfo"

.field private static final TD_VerInfo_FILE:Ljava/lang/String; = "version.xml"

.field private static final TD_Version_Info_Title:Ljava/lang/String; = "NewDataSet"

.field private static final VerInfo_FILE:Ljava/lang/String; = "eBackup.xml"

.field private static final Version_Info_Title:Ljava/lang/String; = "eBackup"

.field private static isMTKDouble:Z


# instance fields
.field private mData:Lcom/zte/backup/utils/VersionInfo$VersionData;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "ZTE U788+"

    aput-object v2, v1, v4

    sput-object v1, Lcom/zte/backup/utils/VersionInfo;->SPRD_MODEL_SET:[Ljava/lang/String;

    .line 51
    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ZTE U795"

    aput-object v2, v1, v4

    const-string v2, "ZTE U880F1"

    aput-object v2, v1, v5

    const-string v2, "ZTE U795+"

    aput-object v2, v1, v6

    const-string v2, "ZTE U817"

    aput-object v2, v1, v7

    .line 52
    const-string v2, "ZTE U960s3"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "ZTE U935"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ZTE N983"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ZTE P903SW03"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ZTE U807"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "ZTE U807N"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "ZTE V965"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "ZTE V987"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 53
    const-string v3, "ZTE U819"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "ZTE V967S"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "ZTE U960E"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "ZTE N986"

    aput-object v3, v1, v2

    .line 51
    sput-object v1, Lcom/zte/backup/utils/VersionInfo;->MTK_MODEL_SET:[Ljava/lang/String;

    .line 55
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "ZTE N983"

    aput-object v2, v1, v4

    const-string v2, "ZTE U819"

    aput-object v2, v1, v5

    const-string v2, "ZTE U807N"

    aput-object v2, v1, v6

    const-string v2, "ZTE U960E"

    aput-object v2, v1, v7

    .line 56
    const-string v2, "ZTE N986"

    aput-object v2, v1, v8

    .line 55
    sput-object v1, Lcom/zte/backup/utils/VersionInfo;->MTK_MODEL_DOUBLE_SET:[Ljava/lang/String;

    .line 57
    sput-boolean v4, Lcom/zte/backup/utils/VersionInfo;->isMTKDouble:Z

    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/zte/backup/utils/VersionInfo;->MTK_MODEL_DOUBLE_SET:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 24
    return-void

    .line 60
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/zte/backup/utils/VersionInfo;->MTK_MODEL_DOUBLE_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    sput-boolean v5, Lcom/zte/backup/utils/VersionInfo;->isMTKDouble:Z

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/zte/backup/utils/VersionInfo$VersionData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/backup/utils/VersionInfo$VersionData;-><init>(Lcom/zte/backup/utils/VersionInfo$VersionData;)V

    iput-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/zte/backup/utils/VersionInfo;)Lcom/zte/backup/utils/VersionInfo$VersionData;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    return-object v0
.end method

.method public static getInstance()Lcom/zte/backup/utils/VersionInfo;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    return-object v0
.end method

.method private getRootElement()Landroid/sax/RootElement;
    .locals 8

    .prologue
    .line 192
    iget-object v7, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iget-boolean v7, v7, Lcom/zte/backup/utils/VersionInfo$VersionData;->isTDdata:Z

    if-eqz v7, :cond_0

    .line 193
    new-instance v6, Landroid/sax/RootElement;

    const-string v7, "NewDataSet"

    invoke-direct {v6, v7}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .line 198
    .local v6, verInfo:Landroid/sax/RootElement;
    :goto_0
    const-string v7, "Phone_Manufacturer"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 199
    .local v3, phone:Landroid/sax/Element;
    new-instance v7, Lcom/zte/backup/utils/VersionInfo$1;

    invoke-direct {v7, p0}, Lcom/zte/backup/utils/VersionInfo$1;-><init>(Lcom/zte/backup/utils/VersionInfo;)V

    invoke-virtual {v3, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 206
    const-string v7, "Hardware_Version"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v1

    .line 207
    .local v1, hardwareModel:Landroid/sax/Element;
    new-instance v7, Lcom/zte/backup/utils/VersionInfo$2;

    invoke-direct {v7, p0}, Lcom/zte/backup/utils/VersionInfo$2;-><init>(Lcom/zte/backup/utils/VersionInfo;)V

    invoke-virtual {v1, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 214
    const-string v7, "Android_Version"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v0

    .line 215
    .local v0, androidVer:Landroid/sax/Element;
    new-instance v7, Lcom/zte/backup/utils/VersionInfo$3;

    invoke-direct {v7, p0}, Lcom/zte/backup/utils/VersionInfo$3;-><init>(Lcom/zte/backup/utils/VersionInfo;)V

    invoke-virtual {v0, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 222
    const-string v7, "Phone_Version"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    .line 223
    .local v5, softwareVer:Landroid/sax/Element;
    new-instance v7, Lcom/zte/backup/utils/VersionInfo$4;

    invoke-direct {v7, p0}, Lcom/zte/backup/utils/VersionInfo$4;-><init>(Lcom/zte/backup/utils/VersionInfo;)V

    invoke-virtual {v5, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 230
    const-string v7, "SMS_NUMBER"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v4

    .line 231
    .local v4, smsCount:Landroid/sax/Element;
    new-instance v7, Lcom/zte/backup/utils/VersionInfo$5;

    invoke-direct {v7, p0}, Lcom/zte/backup/utils/VersionInfo$5;-><init>(Lcom/zte/backup/utils/VersionInfo;)V

    invoke-virtual {v4, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 238
    const-string v7, "MMS_NUMBER"

    invoke-virtual {v6, v7}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 239
    .local v2, mmsCount:Landroid/sax/Element;
    new-instance v7, Lcom/zte/backup/utils/VersionInfo$6;

    invoke-direct {v7, p0}, Lcom/zte/backup/utils/VersionInfo$6;-><init>(Lcom/zte/backup/utils/VersionInfo;)V

    invoke-virtual {v2, v7}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 246
    return-object v6

    .line 195
    .end local v0           #androidVer:Landroid/sax/Element;
    .end local v1           #hardwareModel:Landroid/sax/Element;
    .end local v2           #mmsCount:Landroid/sax/Element;
    .end local v3           #phone:Landroid/sax/Element;
    .end local v4           #smsCount:Landroid/sax/Element;
    .end local v5           #softwareVer:Landroid/sax/Element;
    .end local v6           #verInfo:Landroid/sax/RootElement;
    :cond_0
    new-instance v6, Landroid/sax/RootElement;

    const-string v7, "eBackup"

    invoke-direct {v6, v7}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;)V

    .restart local v6       #verInfo:Landroid/sax/RootElement;
    goto :goto_0
.end method

.method private getXmlFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "path"

    .prologue
    .line 178
    new-instance v0, Ljava/io/File;

    const-string v1, "eBackup.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v0, xmlFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    new-instance v0, Ljava/io/File;

    .end local v0           #xmlFile:Ljava/io/File;
    const-string v1, "version.xml"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .restart local v0       #xmlFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/zte/backup/utils/VersionInfo$VersionData;->isTDdata:Z

    .line 187
    :cond_0
    return-object v0
.end method

.method private readXml(Ljava/io/File;)Z
    .locals 7
    .parameter "xmlFile"

    .prologue
    .line 150
    const/4 v2, 0x0

    .line 152
    .local v2, inputXml:Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v2           #inputXml:Ljava/io/InputStream;
    .local v3, inputXml:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 154
    .local v1, factory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 155
    .local v4, parser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 156
    .local v5, reader:Lorg/xml/sax/XMLReader;
    invoke-direct {p0}, Lcom/zte/backup/utils/VersionInfo;->getRootElement()Landroid/sax/RootElement;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 157
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 164
    if-eqz v3, :cond_0

    .line 166
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 174
    :cond_0
    :goto_0
    const/4 v6, 0x1

    move-object v2, v3

    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v3           #inputXml:Ljava/io/InputStream;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #reader:Lorg/xml/sax/XMLReader;
    .restart local v2       #inputXml:Ljava/io/InputStream;
    :goto_1
    return v6

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    if-eqz v2, :cond_1

    .line 166
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v6, 0x0

    goto :goto_1

    .line 168
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 164
    :goto_4
    if-eqz v2, :cond_2

    .line 166
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 172
    :cond_2
    :goto_5
    throw v6

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 168
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #inputXml:Ljava/io/InputStream;
    .restart local v1       #factory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v3       #inputXml:Ljava/io/InputStream;
    .restart local v4       #parser:Ljavax/xml/parsers/SAXParser;
    .restart local v5       #reader:Lorg/xml/sax/XMLReader;
    :catch_3
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #factory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v4           #parser:Ljavax/xml/parsers/SAXParser;
    .end local v5           #reader:Lorg/xml/sax/XMLReader;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #inputXml:Ljava/io/InputStream;
    .restart local v2       #inputXml:Ljava/io/InputStream;
    goto :goto_4

    .line 159
    .end local v2           #inputXml:Ljava/io/InputStream;
    .restart local v3       #inputXml:Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #inputXml:Ljava/io/InputStream;
    .restart local v2       #inputXml:Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public getIsMTKDouble()Z
    .locals 1

    .prologue
    .line 294
    sget-boolean v0, Lcom/zte/backup/utils/VersionInfo;->isMTKDouble:Z

    return v0
.end method

.method public getMmsCount()I
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->mmsCount:I

    return v0
.end method

.method public getSmsCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iget v0, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->smsCount:I

    return v0
.end method

.method public isMTKPlatform()Z
    .locals 3

    .prologue
    .line 281
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/zte/backup/utils/VersionInfo;->MTK_MODEL_SET:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 286
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 282
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/zte/backup/utils/VersionInfo;->MTK_MODEL_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const/4 v1, 0x1

    goto :goto_1

    .line 281
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isSprdPlatform()Z
    .locals 3

    .prologue
    .line 267
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/zte/backup/utils/VersionInfo;->SPRD_MODEL_SET:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 272
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 268
    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/zte/backup/utils/VersionInfo;->SPRD_MODEL_SET:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x1

    goto :goto_1

    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isTDdata()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iget-boolean v0, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->isTDdata:Z

    return v0
.end method

.method public isTabletP60()Z
    .locals 2

    .prologue
    .line 290
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "P60"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public readVerInfoFromXml(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/zte/backup/utils/VersionInfo;->resetData()V

    .line 141
    invoke-direct {p0, p1}, Lcom/zte/backup/utils/VersionInfo;->getXmlFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 142
    .local v0, xmlFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v1, 0x0

    .line 146
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/zte/backup/utils/VersionInfo;->readXml(Ljava/io/File;)Z

    move-result v1

    goto :goto_0
.end method

.method protected resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iput-boolean v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->isTDdata:Z

    .line 87
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->smsCount:I

    .line 88
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    iput v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->mmsCount:I

    .line 89
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    const-string v1, ""

    iput-object v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->ANDROID_VERSION:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    const-string v1, ""

    iput-object v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->HARDWARE_MODEL:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    const-string v1, ""

    iput-object v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->PHONE_MANUFACTURER:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/zte/backup/utils/VersionInfo;->mData:Lcom/zte/backup/utils/VersionInfo$VersionData;

    const-string v1, ""

    iput-object v1, v0, Lcom/zte/backup/utils/VersionInfo$VersionData;->SOFTWARE_VERSION:Ljava/lang/String;

    .line 93
    return-void
.end method

.method protected setXmlElement(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "serializer"
    .parameter "tag"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    return-void
.end method
