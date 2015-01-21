.class public Lcom/autonavi/xmgd/plugin/PluginXMLParser;
.super Ljava/lang/Object;


# static fields
.field static final ELE_DESCRIPTION:Ljava/lang/String; = "description"

.field static final ELE_ENTRY:Ljava/lang/String; = "entry"

.field static final ELE_FEATURE:Ljava/lang/String; = "feature"

.field static final ELE_FILE:Ljava/lang/String; = "file"

.field static final ELE_FORM:Ljava/lang/String; = "form"

.field static final ELE_KEY:Ljava/lang/String; = "key"

.field static final ELE_PACKAGE:Ljava/lang/String; = "package"

.field static final ELE_PLUGIN:Ljava/lang/String; = "plugin"

.field static final ELE_TITLE:Ljava/lang/String; = "title"

.field static final ELE_URL:Ljava/lang/String; = "url"

.field static final ELE_VENDOR:Ljava/lang/String; = "vendor"

.field static final ELE_VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mEle:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/autonavi/xmgd/plugin/PluginXMLParser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mEle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/autonavi/xmgd/plugin/PluginXMLParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mValue:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getParseElement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/io/InputStream;)Lcom/autonavi/xmgd/plugin/PluginWrapper;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    new-instance v2, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;

    invoke-direct {v2, p0, v0}, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;-><init>(Lcom/autonavi/xmgd/plugin/PluginXMLParser;Lcom/autonavi/xmgd/plugin/PluginXMLParser$1;)V

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #getter for: Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->plugin:Lcom/autonavi/xmgd/plugin/PluginWrapper;
    invoke-static {v2}, Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;->access$100(Lcom/autonavi/xmgd/plugin/PluginXMLParser$PluginHandler;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Lcom/autonavi/xmgd/plugin/PluginWrapper;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->parse(Ljava/io/InputStream;)Lcom/autonavi/xmgd/plugin/PluginWrapper;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setParseElement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/xmgd/plugin/PluginXMLParser;->mEle:Ljava/lang/String;

    return-void
.end method
