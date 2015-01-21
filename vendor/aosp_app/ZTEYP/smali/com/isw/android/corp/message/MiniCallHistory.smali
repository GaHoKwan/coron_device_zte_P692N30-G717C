.class public Lcom/isw/android/corp/message/MiniCallHistory;
.super Ljava/lang/Object;
.source "MiniCallHistory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCallHistory"

.field private static bConnecting:Z

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field private static reconnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniCallHistory;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 76
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 76
    sput p0, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 79
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallHistory;->process()V

    return-void
.end method

.method private static parser(Ljava/lang/String;)V
    .locals 16
    .parameter "xmlMessage"

    .prologue
    .line 217
    const-string v9, ""

    .line 218
    .local v9, showccValue:Ljava/lang/String;
    const-string v1, ""

    .line 219
    .local v1, blackuserValue:Ljava/lang/String;
    const-string v12, ""

    .line 221
    .local v12, zoneValue:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 222
    .local v3, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 224
    .local v2, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 226
    const/4 v4, 0x0

    .line 227
    .local v4, doc:Lorg/w3c/dom/Document;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 229
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 231
    .local v7, root:Lorg/w3c/dom/Element;
    const-string v13, "zone"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 232
    .local v11, zone:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_0

    .line 233
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 234
    .local v5, e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Text;

    .line 235
    .local v10, t:Lorg/w3c/dom/Text;
    if-eqz v10, :cond_0

    .line 236
    invoke-interface {v10}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 237
    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 238
    const-string v13, "zone"

    invoke-static {v13, v12}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v10           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v13, "blackuser"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 244
    .local v0, blackuser:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_1

    .line 245
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 246
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Text;

    .line 247
    .restart local v10       #t:Lorg/w3c/dom/Text;
    if-eqz v10, :cond_1

    .line 248
    invoke-interface {v10}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 249
    const-string v13, "false"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 250
    const-string v13, "blackuser"

    const-string v14, "false"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v10           #t:Lorg/w3c/dom/Text;
    :cond_1
    :goto_0
    const-string v13, "showcc"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 259
    .local v8, showcc:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_2

    .line 260
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 261
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Text;

    .line 262
    .restart local v10       #t:Lorg/w3c/dom/Text;
    if-eqz v10, :cond_2

    .line 263
    invoke-interface {v10}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 264
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 265
    const-string v13, "showcc"

    const-string v14, "false"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v0           #blackuser:Lorg/w3c/dom/NodeList;
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v7           #root:Lorg/w3c/dom/Element;
    .end local v8           #showcc:Lorg/w3c/dom/NodeList;
    .end local v10           #t:Lorg/w3c/dom/Text;
    .end local v11           #zone:Lorg/w3c/dom/NodeList;
    :cond_2
    :goto_1
    return-void

    .line 252
    .restart local v0       #blackuser:Lorg/w3c/dom/NodeList;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #e:Lorg/w3c/dom/Element;
    .restart local v7       #root:Lorg/w3c/dom/Element;
    .restart local v10       #t:Lorg/w3c/dom/Text;
    .restart local v11       #zone:Lorg/w3c/dom/NodeList;
    :cond_3
    const-string v13, "true"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 253
    const-string v13, "blackuser"

    const-string v14, "true"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    .end local v0           #blackuser:Lorg/w3c/dom/NodeList;
    .end local v2           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v3           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4           #doc:Lorg/w3c/dom/Document;
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v7           #root:Lorg/w3c/dom/Element;
    .end local v10           #t:Lorg/w3c/dom/Text;
    .end local v11           #zone:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v6

    .line 274
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    const-string v13, "MiniCallHistory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "ex: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 267
    .end local v6           #ex:Ljava/lang/Exception;
    .restart local v0       #blackuser:Lorg/w3c/dom/NodeList;
    .restart local v2       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4       #doc:Lorg/w3c/dom/Document;
    .restart local v5       #e:Lorg/w3c/dom/Element;
    .restart local v7       #root:Lorg/w3c/dom/Element;
    .restart local v8       #showcc:Lorg/w3c/dom/NodeList;
    .restart local v10       #t:Lorg/w3c/dom/Text;
    .restart local v11       #zone:Lorg/w3c/dom/NodeList;
    :cond_4
    :try_start_1
    const-string v13, "true"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 268
    const-string v13, "showcc"

    const-string v14, "true"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static process()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 80
    sget-boolean v8, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    if-eqz v8, :cond_0

    .line 81
    const-string v8, "MiniCallHistory"

    const-string v9, "Warning! bConnecting is true!"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .local v3, historyFile:Ljava/io/File;
    :goto_0
    return-void

    .line 88
    .end local v3           #historyFile:Ljava/io/File;
    :cond_0
    :try_start_0
    sget-object v8, Lcom/isw/android/corp/message/MiniCallHistory;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v9, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    const/4 v8, 0x1

    sput-boolean v8, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    .line 91
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .restart local v3       #historyFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->otherCallFile:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v5, otherCallFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 95
    const-string v8, "MiniCallHistory"

    const-string v9, "Note! The call history file is not exist!"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v8, "lastUploadCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 202
    :cond_1
    :goto_1
    sput v12, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    .line 203
    sput-boolean v13, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    goto :goto_0

    .line 105
    :cond_2
    :try_start_1
    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->callHistoryFile:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, callHistory:Ljava/lang/String;
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "callHistory: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v8, "chupload"

    .line 118
    const/4 v9, 0x1

    .line 117
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_3

    .line 121
    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->otherCallFile:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, otherCall:Ljava/lang/String;
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "otherCall: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "@"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .end local v4           #otherCall:Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 130
    const-string v8, "lastUploadCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 130
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 194
    .end local v0           #callHistory:Ljava/lang/String;
    .end local v5           #otherCallFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 195
    .local v2, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "ex: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    sput v12, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    .line 203
    sput-boolean v13, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    goto/16 :goto_0

    .line 135
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #callHistory:Ljava/lang/String;
    .restart local v5       #otherCallFile:Ljava/io/File;
    :cond_4
    :try_start_3
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v9, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v9, v9, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v9, "/user/uploadcompanycallhistory?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "imsi="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 137
    sget-object v9, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&pkgname="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 138
    sget-object v9, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "uid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 139
    const-string v9, "uid"

    const-string v10, ""

    invoke-static {v9, v10}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 135
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, url:Ljava/lang/String;
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "callHistory: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v8, "encodeHistory"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 147
    invoke-static {v0}, Lcom/isw/android/corp/util/AesUtils;->encodeCallHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "&"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "encode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 152
    :cond_5
    invoke-static {v7, v0}, Lcom/isw/android/corp/http/WinksHttp;->sendCallHistoryRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, response:Ljava/lang/String;
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "response: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 155
    const-string v8, "MiniCallHistory"

    const-string v9, "Warning! upload callhistory fail!"

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v8, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    const/4 v9, 0x3

    if-gt v8, v9, :cond_1

    .line 157
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reconnectTimes: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    sget v10, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 157
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v8, "MiniCallHistory"

    .line 160
    const-string v9, "Try reconnect to get companydata!"

    .line 159
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    sget v8, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    .line 162
    const/4 v8, 0x0

    sput-boolean v8, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    .line 163
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallHistory;->process()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 198
    .end local v0           #callHistory:Ljava/lang/String;
    .end local v5           #otherCallFile:Ljava/io/File;
    .end local v6           #response:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 199
    .local v1, err:Ljava/lang/Error;
    :try_start_4
    const-string v8, "MiniCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "err: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    sput v12, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    .line 203
    sput-boolean v13, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    goto/16 :goto_0

    .line 167
    .end local v1           #err:Ljava/lang/Error;
    .restart local v0       #callHistory:Ljava/lang/String;
    .restart local v5       #otherCallFile:Ljava/io/File;
    .restart local v6       #response:Ljava/lang/String;
    .restart local v7       #url:Ljava/lang/String;
    :cond_6
    :try_start_5
    invoke-static {v6}, Lcom/isw/android/corp/message/MiniCallHistory;->parser(Ljava/lang/String;)V

    .line 173
    const-string v8, "MiniCallHistory"

    .line 174
    const-string v9, "Upload callhistory OK, delete the current call history file."

    .line 173
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v8, "lastUploadCallHistory"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 175
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 179
    const-string v8, "chupload"

    .line 180
    const/4 v9, 0x1

    .line 179
    invoke-static {v8, v9}, Lcom/isw/android/corp/util/LocalConfig;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eq v8, v12, :cond_1

    .line 182
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 201
    .end local v0           #callHistory:Ljava/lang/String;
    .end local v5           #otherCallFile:Ljava/io/File;
    .end local v6           #response:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catchall_0
    move-exception v8

    .line 202
    sput v12, Lcom/isw/android/corp/message/MiniCallHistory;->reconnectTimes:I

    .line 203
    sput-boolean v13, Lcom/isw/android/corp/message/MiniCallHistory;->bConnecting:Z

    .line 213
    throw v8
.end method

.method public static upload()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/WinksTools;->canDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "bchupload"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const-string v0, "MiniCallHistory"

    const-string v1, "bchupload is closed"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, Lcom/isw/android/corp/message/MiniCallHistory$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCallHistory$1;-><init>()V

    .line 72
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCallHistory$1;->start()V

    goto :goto_0
.end method
