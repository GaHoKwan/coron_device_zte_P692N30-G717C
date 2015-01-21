.class public Lcom/isw/android/corp/message/MiniSWLatest;
.super Ljava/lang/Object;
.source "MiniSWLatest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniSWLatest"

.field private static bConnecting:Z

.field public static fileOnline:Ljava/lang/String;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field public static optionalOnline:Ljava/lang/String;

.field private static reconnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniSWLatest;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    .line 29
    const-string v0, ""

    sput-object v0, Lcom/isw/android/corp/message/MiniSWLatest;->fileOnline:Ljava/lang/String;

    .line 31
    const-string v0, "true"

    sput-object v0, Lcom/isw/android/corp/message/MiniSWLatest;->optionalOnline:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 25
    sput p0, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lcom/isw/android/corp/message/MiniSWLatest;->process()V

    return-void
.end method

.method private static parser(Ljava/lang/String;)V
    .locals 12
    .parameter "xmlMessage"

    .prologue
    .line 102
    invoke-static {p0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 103
    const-string v9, "MiniSWLatest"

    const-string v10, "Warning! softwareLatest is empty!"

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 109
    .local v1, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 111
    .local v0, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 113
    const/4 v2, 0x0

    .line 114
    .local v2, doc:Lorg/w3c/dom/Document;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 116
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 118
    .local v7, root:Lorg/w3c/dom/Element;
    const-string v9, "file"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 119
    .local v5, file:Lorg/w3c/dom/NodeList;
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_2

    .line 120
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 121
    .local v3, e:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Text;

    .line 122
    .local v8, t:Lorg/w3c/dom/Text;
    if-eqz v8, :cond_2

    .line 123
    invoke-interface {v8}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/isw/android/corp/message/MiniSWLatest;->fileOnline:Ljava/lang/String;

    .line 127
    .end local v3           #e:Lorg/w3c/dom/Element;
    .end local v8           #t:Lorg/w3c/dom/Text;
    :cond_2
    const-string v9, "true"

    sput-object v9, Lcom/isw/android/corp/message/MiniSWLatest;->optionalOnline:Ljava/lang/String;

    .line 128
    const-string v9, "optional"

    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 129
    .local v6, optional:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lez v9, :cond_0

    .line 130
    const/4 v9, 0x0

    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 131
    .restart local v3       #e:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Text;

    .line 132
    .restart local v8       #t:Lorg/w3c/dom/Text;
    if-eqz v8, :cond_0

    .line 133
    invoke-interface {v8}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/isw/android/corp/message/MiniSWLatest;->optionalOnline:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v0           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v1           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v2           #doc:Lorg/w3c/dom/Document;
    .end local v3           #e:Lorg/w3c/dom/Element;
    .end local v5           #file:Lorg/w3c/dom/NodeList;
    .end local v6           #optional:Lorg/w3c/dom/NodeList;
    .end local v7           #root:Lorg/w3c/dom/Element;
    .end local v8           #t:Lorg/w3c/dom/Text;
    :catch_0
    move-exception v4

    .line 140
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const-string v9, "MiniSWLatest"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static process()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 46
    sget-boolean v3, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    if-eqz v3, :cond_0

    .line 47
    const-string v3, "MiniSWLatest"

    const-string v4, "Warning! bConnecting is true!"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v2, url:Ljava/lang/String;
    :goto_0
    return-void

    .line 52
    .end local v2           #url:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v3, Lcom/isw/android/corp/message/MiniSWLatest;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    const-string v3, "winks"

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    :cond_1
    const-string v3, "MiniSWLatest"

    const-string v4, "Warning! NetworkAvailable is false, or Winks is empty!"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    sput v6, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 96
    sput-boolean v7, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    goto :goto_0

    .line 60
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    const-string v4, "/company/latest?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "imsi="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 62
    sget-object v4, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    const-string v4, "uid"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2       #url:Ljava/lang/String;
    invoke-static {v2}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, response:Ljava/lang/String;
    const-string v3, "MiniSWLatest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    const-string v3, "MiniSWLatest"

    const-string v4, "Warning! softwareLatest is empty!"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget v3, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    const/4 v4, 0x3

    if-gt v3, v4, :cond_3

    .line 71
    const-string v3, "MiniSWLatest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reconnectTimes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "MiniSWLatest"

    const-string v4, "Try reconnect to get softwareLatest!"

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget v3, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 74
    invoke-static {}, Lcom/isw/android/corp/message/MiniSWLatest;->process()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    :goto_1
    sput v6, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 96
    sput-boolean v7, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    goto/16 :goto_0

    .line 77
    :cond_3
    const/4 v3, 0x1

    :try_start_2
    sput v3, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 91
    .end local v1           #response:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 92
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v3, "MiniSWLatest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ex: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    sput v6, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 96
    sput-boolean v7, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    goto/16 :goto_0

    .line 82
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #response:Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-static {v1}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-static {v1}, Lcom/isw/android/corp/message/MiniSWLatest;->parser(Ljava/lang/String;)V

    .line 85
    const-string v3, "MiniSWLatest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fileOnline: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/isw/android/corp/message/MiniSWLatest;->fileOnline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "MiniSWLatest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "optionalOnline: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/isw/android/corp/message/MiniSWLatest;->optionalOnline:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    :cond_5
    sput v6, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 96
    sput-boolean v7, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    goto/16 :goto_0

    .line 94
    .end local v1           #response:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 95
    sput v6, Lcom/isw/android/corp/message/MiniSWLatest;->reconnectTimes:I

    .line 96
    sput-boolean v7, Lcom/isw/android/corp/message/MiniSWLatest;->bConnecting:Z

    .line 97
    throw v3
.end method

.method public static update()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/isw/android/corp/message/MiniSWLatest$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniSWLatest$1;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniSWLatest$1;->start()V

    .line 43
    return-void
.end method
