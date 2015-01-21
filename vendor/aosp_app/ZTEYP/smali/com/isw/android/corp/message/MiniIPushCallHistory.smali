.class public Lcom/isw/android/corp/message/MiniIPushCallHistory;
.super Ljava/lang/Object;
.source "MiniIPushCallHistory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SIPushCallHistory"

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

    sput-object v0, Lcom/isw/android/corp/message/MiniIPushCallHistory;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 68
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z

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
    .line 68
    sput p0, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 71
    invoke-static {}, Lcom/isw/android/corp/message/MiniIPushCallHistory;->process()V

    return-void
.end method

.method private static parser(Ljava/lang/String;)V
    .locals 16
    .parameter "xmlMessage"

    .prologue
    .line 182
    const-string v9, ""

    .line 183
    .local v9, showccValue:Ljava/lang/String;
    const-string v1, ""

    .line 184
    .local v1, blackuserValue:Ljava/lang/String;
    const-string v12, ""

    .line 186
    .local v12, zoneValue:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 187
    .local v3, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 189
    .local v2, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 191
    const/4 v4, 0x0

    .line 192
    .local v4, doc:Lorg/w3c/dom/Document;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 194
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v7

    .line 196
    .local v7, root:Lorg/w3c/dom/Element;
    const-string v13, "zone"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 197
    .local v11, zone:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_0

    .line 198
    const/4 v13, 0x0

    invoke-interface {v11, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 199
    .local v5, e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Text;

    .line 200
    .local v10, t:Lorg/w3c/dom/Text;
    if-eqz v10, :cond_0

    .line 201
    invoke-interface {v10}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    .line 202
    invoke-static {v12}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 203
    const-string v13, "zone"

    invoke-static {v13, v12}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v10           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v13, "blackuser"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 209
    .local v0, blackuser:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_1

    .line 210
    const/4 v13, 0x0

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 211
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Text;

    .line 212
    .restart local v10       #t:Lorg/w3c/dom/Text;
    if-eqz v10, :cond_1

    .line 213
    invoke-interface {v10}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v13, "false"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 215
    const-string v13, "blackuser"

    const-string v14, "false"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v5           #e:Lorg/w3c/dom/Element;
    .end local v10           #t:Lorg/w3c/dom/Text;
    :cond_1
    :goto_0
    const-string v13, "showcc"

    invoke-interface {v7, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 224
    .local v8, showcc:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-lez v13, :cond_2

    .line 225
    const/4 v13, 0x0

    invoke-interface {v8, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 226
    .restart local v5       #e:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Text;

    .line 227
    .restart local v10       #t:Lorg/w3c/dom/Text;
    if-eqz v10, :cond_2

    .line 228
    invoke-interface {v10}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 229
    const-string v13, "false"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 230
    const-string v13, "showcc"

    const-string v14, "false"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
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

    .line 217
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

    .line 218
    const-string v13, "blackuser"

    const-string v14, "true"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
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

    .line 239
    .local v6, ex:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    const-string v13, "SIPushCallHistory"

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

    .line 232
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

    .line 233
    const-string v13, "showcc"

    const-string v14, "true"

    invoke-static {v13, v14}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static declared-synchronized process()V
    .locals 13

    .prologue
    .line 72
    const-class v9, Lcom/isw/android/corp/message/MiniIPushCallHistory;

    monitor-enter v9

    :try_start_0
    sget-boolean v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z

    if-eqz v8, :cond_0

    .line 73
    const-string v8, "SIPushCallHistory"

    const-string v10, "Warning! bConnecting is true!"

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    .local v3, historyFile:Ljava/io/File;
    :goto_0
    monitor-exit v9

    return-void

    .line 79
    .end local v3           #historyFile:Ljava/io/File;
    :cond_0
    :try_start_1
    sget-object v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v8, v10}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 81
    const/4 v8, 0x1

    sput-boolean v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z

    .line 82
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->pushRecordDir:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v3       #historyFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->pushDotRecordDir:Ljava/lang/String;

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, otherCallFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 85
    const-string v8, "SIPushCallHistory"

    const-string v10, "Note! The call history file is not exist!"

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v8, "lastUploadCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 86
    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    :cond_1
    :goto_1
    const/4 v8, 0x1

    :try_start_2
    sput v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    .line 177
    const/4 v8, 0x0

    sput-boolean v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 72
    .end local v5           #otherCallFile:Ljava/io/File;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 94
    .restart local v5       #otherCallFile:Ljava/io/File;
    :cond_2
    :try_start_3
    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->pushRecordDir:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, callHistory:Ljava/lang/String;
    sget-object v8, Lcom/isw/android/corp/util/LocalConfig;->pushDotRecordDir:Ljava/lang/String;

    invoke-static {v8}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, otherCall:Ljava/lang/String;
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "otherCall: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 102
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "@"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_3
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "callHistory: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 108
    const-string v8, "lastUploadCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 108
    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 168
    .end local v0           #callHistory:Ljava/lang/String;
    .end local v4           #otherCall:Ljava/lang/String;
    .end local v5           #otherCallFile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 169
    .local v2, ex:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ex: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    const/4 v8, 0x1

    :try_start_5
    sput v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    .line 177
    const/4 v8, 0x0

    sput-boolean v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 113
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v0       #callHistory:Ljava/lang/String;
    .restart local v4       #otherCall:Ljava/lang/String;
    .restart local v5       #otherCallFile:Ljava/io/File;
    :cond_4
    :try_start_6
    new-instance v8, Ljava/lang/StringBuilder;

    sget-object v10, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v10, v10, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    const-string v10, "/user/uploadIPushRecord?"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "imsi="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 115
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "&pkgname="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    sget-object v10, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "uid="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 117
    const-string v10, "uid"

    const-string v11, ""

    invoke-static {v10, v11}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 113
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, url:Ljava/lang/String;
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "callHistory: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "url: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v8, "encodeHistory"

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 126
    invoke-static {v0}, Lcom/isw/android/corp/util/AesUtils;->encodeCallHistory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "&"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "encode="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "true"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 131
    :cond_5
    invoke-static {v7, v0}, Lcom/isw/android/corp/http/WinksHttp;->sendCallHistoryRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, response:Ljava/lang/String;
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "response: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 134
    const-string v8, "SIPushCallHistory"

    const-string v10, "Warning! upload callhistory fail!"

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    const/4 v10, 0x3

    if-gt v8, v10, :cond_1

    .line 136
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "reconnectTimes: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    sget v11, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v8, "SIPushCallHistory"

    .line 139
    const-string v10, "Try reconnect to get companydata!"

    .line 138
    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    .line 141
    const/4 v8, 0x0

    sput-boolean v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z

    .line 142
    invoke-static {}, Lcom/isw/android/corp/message/MiniIPushCallHistory;->process()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 172
    .end local v0           #callHistory:Ljava/lang/String;
    .end local v4           #otherCall:Ljava/lang/String;
    .end local v5           #otherCallFile:Ljava/io/File;
    .end local v6           #response:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 173
    .local v1, err:Ljava/lang/Error;
    :try_start_7
    const-string v8, "SIPushCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "err: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 176
    const/4 v8, 0x1

    :try_start_8
    sput v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    .line 177
    const/4 v8, 0x0

    sput-boolean v8, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 146
    .end local v1           #err:Ljava/lang/Error;
    .restart local v0       #callHistory:Ljava/lang/String;
    .restart local v4       #otherCall:Ljava/lang/String;
    .restart local v5       #otherCallFile:Ljava/io/File;
    .restart local v6       #response:Ljava/lang/String;
    .restart local v7       #url:Ljava/lang/String;
    :cond_6
    :try_start_9
    invoke-static {v6}, Lcom/isw/android/corp/message/MiniIPushCallHistory;->parser(Ljava/lang/String;)V

    .line 152
    const-string v8, "SIPushCallHistory"

    .line 153
    const-string v10, "Upload callhistory OK, delete the current call history file."

    .line 152
    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v8, "lastUploadCallHistory"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 154
    invoke-static {v8, v10}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 157
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Error; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    .line 175
    .end local v0           #callHistory:Ljava/lang/String;
    .end local v4           #otherCall:Ljava/lang/String;
    .end local v5           #otherCallFile:Ljava/io/File;
    .end local v6           #response:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    :catchall_1
    move-exception v8

    .line 176
    const/4 v10, 0x1

    :try_start_a
    sput v10, Lcom/isw/android/corp/message/MiniIPushCallHistory;->reconnectTimes:I

    .line 177
    const/4 v10, 0x0

    sput-boolean v10, Lcom/isw/android/corp/message/MiniIPushCallHistory;->bConnecting:Z

    .line 178
    throw v8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public static upload()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/isw/android/corp/message/MiniIPushCallHistory$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniIPushCallHistory$1;-><init>()V

    .line 64
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniIPushCallHistory$1;->start()V

    .line 66
    return-void
.end method
