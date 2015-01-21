.class public Lcom/autonavi/xmgd/update/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/autonavi/xmgd/c/e;


# static fields
.field private static d:Lcom/autonavi/xmgd/update/e;


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/autonavi/xmgd/update/g;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/autonavi/xmgd/update/h;

.field private f:Lcom/autonavi/xmgd/update/j;

.field private g:I

.field private h:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x7c3

    iput v0, p0, Lcom/autonavi/xmgd/update/e;->a:I

    iput-boolean v2, p0, Lcom/autonavi/xmgd/update/e;->b:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    new-instance v0, Lcom/autonavi/xmgd/update/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/autonavi/xmgd/update/h;-><init>(Lcom/autonavi/xmgd/update/e;Lcom/autonavi/xmgd/update/f;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/update/e;->e:Lcom/autonavi/xmgd/update/h;

    new-instance v0, Lcom/autonavi/xmgd/update/j;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/update/j;-><init>(Lcom/autonavi/xmgd/update/e;)V

    iput-object v0, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    iput v2, p0, Lcom/autonavi/xmgd/update/e;->g:I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const/16 v1, 0x7df

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;I)Z

    return-void
.end method

.method public static a()Lcom/autonavi/xmgd/update/e;
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xmgd/update/e;

    invoke-direct {v0}, Lcom/autonavi/xmgd/update/e;-><init>()V

    sput-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    :cond_0
    sget-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    return-object v0
.end method

.method static synthetic a(Lcom/autonavi/xmgd/update/e;)Lcom/autonavi/xmgd/update/j;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    invoke-direct {v0}, Lcom/autonavi/xmgd/update/e;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcom/autonavi/xmgd/update/e;->d:Lcom/autonavi/xmgd/update/e;

    :cond_0
    return-void
.end method

.method private f()V
    .locals 1

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;)Z

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/update/e;->h:Landroid/os/Bundle;

    return-void
.end method

.method public a(Lcom/autonavi/xmgd/update/g;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(I)Z
    .locals 11

    const/16 v10, 0x4c3c

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    iput p1, p0, Lcom/autonavi/xmgd/update/e;->g:I

    sget-object v0, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/autonavi/xmgd/citydata/DataUpdateService;->getResVersion(ILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/autonavi/xmgd/application/NaviApplication;->NAVIDATA:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "softupdateurl.txt"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    invoke-static {v0}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v1, v0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_5

    :cond_2
    const-string v1, "http://mlbs.autonavi.com/version"

    :cond_3
    :goto_2
    const-string v0, "<?xml version=\"1.0\" encoding=\"GBK\" ?><opg><activitycode>0004</activitycode><processtime>%1$s</processtime><actioncode>0</actioncode><protversion>2</protversion><svccont><info><syscode>%2$s</syscode><imei>%3$s</imei><apkv>%4$s</apkv><mapv>%5$s</mapv><resv>%6$s</resv><sign>%7$s</sign><language>%8$s</language></info></svccont></opg>"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyyMMddHHmmss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v5, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    const/4 v4, 0x2

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x3

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v5

    iget v5, v5, Lcom/autonavi/xmgd/application/Resource;->mVersionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v5

    invoke-virtual {v5}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersionWithoutV()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v5

    iget v5, v5, Lcom/autonavi/xmgd/application/Resource;->mVersionCode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/autonavi/xmgd/utility/MD5;->getSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xmgd/utility/Tool;->getSystemLanguage()Lcom/autonavi/xm/navigation/server/map/GLanguage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/autonavi/xm/navigation/server/map/GLanguage;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MapdataUpdateInstance]requestContent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-array v3, v7, [I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x7df

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v6

    :goto_3
    return v0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_3

    const-string v0, "autonavi60"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6570\u636e\u66f4\u65b0\u4f7f\u7528\u6d4b\u8bd5\u5730\u5740 = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    aget v0, v3, v6

    iput v0, p0, Lcom/autonavi/xmgd/update/e;->a:I

    move v0, v7

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public b(Lcom/autonavi/xmgd/update/g;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/autonavi/xmgd/update/e;->b:Z

    return v0
.end method

.method public d()Lcom/autonavi/xmgd/update/j;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    return-object v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->h:Landroid/os/Bundle;

    return-object v0
.end method

.method public onHttpException(Ljava/lang/Exception;IILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/update/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[88]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lcom/autonavi/xmgd/update/g;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHttpRequestByteReceived(III)V
    .locals 0

    return-void
.end method

.method public onHttpRequestFinish([BIII)V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/xmgd/citydata/GlobalCity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MapdataUpdateInstance]responseContent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/citydata/GlobalCity;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/autonavi/xmgd/update/e;->a:I

    if-ne p3, v0, :cond_1

    const/16 v0, 0x7df

    if-ne p4, v0, :cond_1

    const/16 v0, -0x7c3

    iput v0, p0, Lcom/autonavi/xmgd/update/e;->a:I

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, Lcom/autonavi/xmgd/update/e;->e:Lcom/autonavi/xmgd/update/h;

    invoke-virtual {v0, v1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/autonavi/xmgd/update/e;->b:Z

    iget v0, p0, Lcom/autonavi/xmgd/update/e;->g:I

    sget v1, Lcom/autonavi/xmgd/update/i;->b:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    iget-object v0, v0, Lcom/autonavi/xmgd/update/j;->a:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    iget-object v0, v0, Lcom/autonavi/xmgd/update/j;->a:Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    iget v0, v0, Lcom/autonavi/xmgd/update/j;->b:I

    if-ne v0, v4, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/utility/Tool;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/autonavi/xmgd/update/MapdataUpdate;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/autonavi/xmgd/update/e;->a(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/update/g;

    iget-object v2, p0, Lcom/autonavi/xmgd/update/e;->f:Lcom/autonavi/xmgd/update/j;

    invoke-interface {v0, v2, p3, p4}, Lcom/autonavi/xmgd/update/g;->a(Lcom/autonavi/xmgd/update/j;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/update/g;

    const-string v2, "[88]"

    invoke-interface {v0, v2, p3, p4}, Lcom/autonavi/xmgd/update/g;->a(Ljava/lang/String;II)V

    goto :goto_1
.end method

.method public onHttpTaskCanceled([BIII)V
    .locals 0

    return-void
.end method

.method public onHttpTimeOut(Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/xmgd/update/e;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/update/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[87]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2, p3}, Lcom/autonavi/xmgd/update/g;->b(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method
