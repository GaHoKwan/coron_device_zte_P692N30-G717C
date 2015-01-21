.class public Lcom/mediatek/bluetooth/ftp/XMLParsingThread;
.super Ljava/lang/Thread;
.source "XMLParsingThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XMLParsingThread"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mListener:Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;

.field private mUri:Landroid/net/Uri;

.field private mXMLFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentResolver;Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;)V
    .locals 0
    .parameter "path"
    .parameter "uri"
    .parameter "resolver"
    .parameter "listener"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mXMLFilePath:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mUri:Landroid/net/Uri;

    .line 83
    iput-object p3, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    iput-object p4, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mListener:Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;

    .line 85
    return-void
.end method

.method private declared-synchronized postResult(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mListener:Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mListener:Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;

    invoke-interface {v0, p1}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;->onParsingDone(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private printErr(Ljava/lang/String;)V
    .locals 3
    .parameter "errMsg"

    .prologue
    .line 108
    const-string v0, "XMLParsingThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BT][FTP] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method


# virtual methods
.method public declared-synchronized isDone(Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;)Z
    .locals 2
    .parameter "l"

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    .line 89
    const/4 v0, 0x1

    .line 92
    :goto_0
    monitor-exit p0

    return v0

    .line 91
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mListener:Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener()V
    .locals 1

    .prologue
    .line 97
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mListener:Lcom/mediatek/bluetooth/ftp/XMLParsingThread$ParsingDoneListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 112
    const/4 v5, 0x0

    .line 115
    .local v5, res:I
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v8

    .line 116
    .local v8, spf:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v8}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v7

    .line 117
    .local v7, sp:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 120
    .local v9, xr:Lorg/xml/sax/XMLReader;
    iget-object v10, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mUri:Landroid/net/Uri;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    new-instance v10, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;

    iget-object v11, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mUri:Landroid/net/Uri;

    iget-object v12, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v10, v11, v12}, Lcom/mediatek/bluetooth/ftp/FtpObexXMLHandler;-><init>(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 127
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mXMLFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 128
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v10, Lorg/xml/sax/InputSource;

    invoke-direct {v10, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v9, v10}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 151
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v7           #sp:Ljavax/xml/parsers/SAXParser;
    .end local v8           #spf:Ljavax/xml/parsers/SAXParserFactory;
    .end local v9           #xr:Lorg/xml/sax/XMLReader;
    :cond_0
    :goto_0
    const/4 v10, 0x1

    if-ne v5, v10, :cond_1

    .line 153
    iget-object v10, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11, v14, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 157
    :cond_1
    invoke-direct {p0, v5}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->postResult(I)V

    .line 158
    return-void

    .line 130
    :catch_0
    move-exception v6

    .line 131
    .local v6, se:Lorg/xml/sax/SAXException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parsing failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->printErr(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, msg:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 134
    const-string v10, "invalid_name"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 135
    const/4 v5, 0x1

    goto :goto_0

    .line 140
    .end local v3           #msg:Ljava/lang/String;
    .end local v6           #se:Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v2

    .line 141
    .local v2, ie:Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Open file failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->printErr(Ljava/lang/String;)V

    .line 142
    const/4 v5, 0x1

    .line 149
    goto :goto_0

    .line 143
    .end local v2           #ie:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 144
    .local v4, pce:Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parser config failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->printErr(Ljava/lang/String;)V

    .line 145
    const/4 v5, 0x1

    .line 149
    goto :goto_0

    .line 146
    .end local v4           #pce:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v0

    .line 147
    .local v0, ex:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/bluetooth/ftp/XMLParsingThread;->printErr(Ljava/lang/String;)V

    .line 148
    const/4 v5, -0x1

    goto :goto_0
.end method
