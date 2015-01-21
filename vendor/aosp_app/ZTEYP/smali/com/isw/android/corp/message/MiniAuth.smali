.class public Lcom/isw/android/corp/message/MiniAuth;
.super Ljava/lang/Object;
.source "MiniAuth.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniAuth"

.field private static reconnectTimes:I

.field public static userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/isw/android/corp/bean/UserServiceStatusBean;

    invoke-direct {v0}, Lcom/isw/android/corp/bean/UserServiceStatusBean;-><init>()V

    sput-object v0, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    .line 67
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 67
    sput p0, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lcom/isw/android/corp/message/MiniAuth;->process()V

    return-void
.end method

.method private static parser(Ljava/lang/String;)Lcom/isw/android/corp/bean/UserServiceStatusBean;
    .locals 18
    .parameter "xmlMessage"

    .prologue
    .line 179
    new-instance v2, Lcom/isw/android/corp/bean/UserServiceStatusBean;

    invoke-direct {v2}, Lcom/isw/android/corp/bean/UserServiceStatusBean;-><init>()V

    .line 182
    .local v2, bean:Lcom/isw/android/corp/bean/UserServiceStatusBean;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v5

    .line 183
    .local v5, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 185
    .local v4, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 187
    const/4 v6, 0x0

    .line 188
    .local v6, doc:Lorg/w3c/dom/Document;
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 190
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v10

    .line 192
    .local v10, root:Lorg/w3c/dom/Element;
    const-string v15, "uid"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 193
    .local v14, uid:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_0

    .line 194
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 195
    .local v7, e:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Text;

    .line 196
    .local v13, t:Lorg/w3c/dom/Text;
    if-eqz v13, :cond_0

    .line 197
    invoke-interface {v13}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/isw/android/corp/bean/UserServiceStatusBean;->uid:Ljava/lang/String;

    .line 201
    .end local v7           #e:Lorg/w3c/dom/Element;
    .end local v13           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v15, "needAuth"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 202
    .local v9, needAuth:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_1

    .line 203
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 206
    .local v0, addressNode:Lorg/w3c/dom/Element;
    const-string v15, "authMethod"

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 207
    .local v1, authMethod:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_1

    .line 208
    const/4 v15, 0x0

    invoke-interface {v1, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 209
    .restart local v7       #e:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Text;

    .line 210
    .restart local v13       #t:Lorg/w3c/dom/Text;
    if-eqz v13, :cond_1

    .line 211
    invoke-interface {v13}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/isw/android/corp/bean/UserServiceStatusBean;->authMethod:Ljava/lang/String;

    .line 216
    .end local v0           #addressNode:Lorg/w3c/dom/Element;
    .end local v1           #authMethod:Lorg/w3c/dom/NodeList;
    .end local v7           #e:Lorg/w3c/dom/Element;
    .end local v13           #t:Lorg/w3c/dom/Text;
    :cond_1
    const-string v15, "services"

    invoke-interface {v10, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 217
    .local v11, services:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_3

    .line 218
    const/4 v15, 0x0

    invoke-interface {v11, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 221
    .restart local v0       #addressNode:Lorg/w3c/dom/Element;
    const-string v15, "subscription"

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 222
    .local v12, subscription:Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_2

    .line 223
    const/4 v15, 0x0

    invoke-interface {v12, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 224
    .restart local v7       #e:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Text;

    .line 225
    .restart local v13       #t:Lorg/w3c/dom/Text;
    if-eqz v13, :cond_2

    .line 226
    invoke-interface {v13}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/isw/android/corp/bean/UserServiceStatusBean;->subscription:Ljava/lang/String;

    .line 231
    .end local v7           #e:Lorg/w3c/dom/Element;
    .end local v13           #t:Lorg/w3c/dom/Text;
    :cond_2
    const-string v15, "customization"

    invoke-interface {v0, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 232
    .local v3, customization:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-lez v15, :cond_3

    .line 233
    const/4 v15, 0x0

    invoke-interface {v3, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 234
    .restart local v7       #e:Lorg/w3c/dom/Element;
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Text;

    .line 235
    .restart local v13       #t:Lorg/w3c/dom/Text;
    if-eqz v13, :cond_3

    .line 236
    invoke-interface {v13}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/isw/android/corp/bean/UserServiceStatusBean;->customization:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v0           #addressNode:Lorg/w3c/dom/Element;
    .end local v3           #customization:Lorg/w3c/dom/NodeList;
    .end local v4           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v5           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v6           #doc:Lorg/w3c/dom/Document;
    .end local v7           #e:Lorg/w3c/dom/Element;
    .end local v9           #needAuth:Lorg/w3c/dom/NodeList;
    .end local v10           #root:Lorg/w3c/dom/Element;
    .end local v11           #services:Lorg/w3c/dom/NodeList;
    .end local v12           #subscription:Lorg/w3c/dom/NodeList;
    .end local v13           #t:Lorg/w3c/dom/Text;
    .end local v14           #uid:Lorg/w3c/dom/NodeList;
    :cond_3
    :goto_0
    return-object v2

    .line 241
    :catch_0
    move-exception v8

    .line 242
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 243
    const-string v15, "MiniAuth"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "ex: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static process()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    .line 71
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v7, v7, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/user/auth"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    const-string v7, "?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    sget-object v7, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-static {v7}, Lcom/isw/android/corp/util/AesUtils;->IMSI2token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, url:Ljava/lang/String;
    invoke-static {v5}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, response:Ljava/lang/String;
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "userServiceStatus: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 80
    const-string v6, "MiniAuth"

    const-string v7, "Warning! response is null!"

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v2           #response:Ljava/lang/String;
    :goto_0
    return-void

    .line 84
    .restart local v2       #response:Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lcom/isw/android/corp/message/MiniAuth;->parser(Ljava/lang/String;)Lcom/isw/android/corp/bean/UserServiceStatusBean;

    move-result-object v6

    sput-object v6, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    .line 86
    sget-object v6, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/UserServiceStatusBean;->uid:Ljava/lang/String;

    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 90
    const-string v6, "uid"

    sget-object v7, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v7, v7, Lcom/isw/android/corp/bean/UserServiceStatusBean;->uid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1
    :goto_1
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "uid: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v8, v8, Lcom/isw/android/corp/bean/UserServiceStatusBean;->uid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "subscription: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v8, v8, Lcom/isw/android/corp/bean/UserServiceStatusBean;->subscription:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "customization: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v8, v8, Lcom/isw/android/corp/bean/UserServiceStatusBean;->customization:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "authMethod: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v8, v8, Lcom/isw/android/corp/bean/UserServiceStatusBean;->authMethod:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    .end local v2           #response:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 171
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ex: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 114
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v2       #response:Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v6, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/UserServiceStatusBean;->authMethod:Ljava/lang/String;

    invoke-static {v6}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    const-string v6, "needphone"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LocalConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    const-string v6, "sms"

    sget-object v7, Lcom/isw/android/corp/message/MiniAuth;->userServiceStatus:Lcom/isw/android/corp/bean/UserServiceStatusBean;

    iget-object v7, v7, Lcom/isw/android/corp/bean/UserServiceStatusBean;->authMethod:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    .line 122
    const-string v7, "sms_prefix"

    const-string v8, ""

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 124
    const-string v7, "sms_type"

    const-string v8, "auth"

    invoke-static {v7, v8}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 124
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 125
    const-string v7, "token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 127
    sget-object v7, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-static {v7}, Lcom/isw/android/corp/util/WinksTools;->simpleEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 126
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 121
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, sendContent:Ljava/lang/String;
    const-string v6, "sms_number"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, smsGWNumber:Ljava/lang/String;
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sendContent: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "smsGWNumber: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    if-ge v6, v10, :cond_3

    .line 139
    sget v6, Lcom/isw/android/corp/util/WinksApplication;->ossdk:I

    if-le v6, v10, :cond_3

    .line 142
    const/4 v6, 0x0

    .line 141
    invoke-static {v4, v3, v6}, Lcom/isw/android/corp/util/SmsUtil;->WinksSendSmsUni(Ljava/lang/String;Ljava/lang/String;I)I

    .line 146
    :cond_3
    sget v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    if-ne v6, v9, :cond_4

    .line 147
    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 148
    sget v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    .line 149
    invoke-static {}, Lcom/isw/android/corp/message/MiniAuth;->process()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 173
    .end local v2           #response:Ljava/lang/String;
    .end local v3           #sendContent:Ljava/lang/String;
    .end local v4           #smsGWNumber:Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 174
    .local v0, err:Ljava/lang/Error;
    const-string v6, "MiniAuth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "err: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v0           #err:Ljava/lang/Error;
    .restart local v2       #response:Ljava/lang/String;
    .restart local v3       #sendContent:Ljava/lang/String;
    .restart local v4       #smsGWNumber:Ljava/lang/String;
    :cond_4
    :try_start_2
    sget v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 152
    const-wide/16 v6, 0x7530

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 153
    sget v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I

    .line 154
    invoke-static {}, Lcom/isw/android/corp/message/MiniAuth;->process()V

    goto/16 :goto_1

    .line 157
    :cond_5
    const/4 v6, 0x1

    sput v6, Lcom/isw/android/corp/message/MiniAuth;->reconnectTimes:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private static update()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/isw/android/corp/message/MiniAuth$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniAuth$1;-><init>()V

    .line 63
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniAuth$1;->start()V

    .line 65
    return-void
.end method
