.class public Lcom/isw/android/corp/message/MiniCompanyBg;
.super Ljava/lang/Object;
.source "MiniCompanyBg.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniCompanyBg"

.field private static bConnecting:Z

.field private static busLoop:I

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field private static reconnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniCompanyBg;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 69
    sput v1, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    .line 293
    sput v1, Lcom/isw/android/corp/message/MiniCompanyBg;->busLoop:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 69
    sput p0, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 72
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyBg;->process()V

    return-void
.end method

.method public static getCurrentBgImage()Ljava/lang/String;
    .locals 7

    .prologue
    .line 296
    const-string v0, ""

    .line 299
    .local v0, ccshowImage:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, companyBgDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 303
    .local v3, list:[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_2

    .line 304
    :cond_0
    const-string v4, "MiniCompanyBg"

    const-string v5, "Warning! list is null!"

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v1           #companyBgDir:Ljava/io/File;
    .end local v3           #list:[Ljava/io/File;
    :cond_1
    :goto_0
    return-object v0

    .line 308
    .restart local v1       #companyBgDir:Ljava/io/File;
    .restart local v3       #list:[Ljava/io/File;
    :cond_2
    sget v4, Lcom/isw/android/corp/message/MiniCompanyBg;->busLoop:I

    array-length v5, v3

    if-le v4, v5, :cond_3

    .line 309
    const/4 v4, 0x1

    sput v4, Lcom/isw/android/corp/message/MiniCompanyBg;->busLoop:I

    .line 311
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 312
    sget v5, Lcom/isw/android/corp/message/MiniCompanyBg;->busLoop:I

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 311
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v4, "MiniCompanyBg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[getCurrentBgImage] ccshowImage: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget v4, Lcom/isw/android/corp/message/MiniCompanyBg;->busLoop:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/isw/android/corp/message/MiniCompanyBg;->busLoop:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v1           #companyBgDir:Ljava/io/File;
    .end local v3           #list:[Ljava/io/File;
    :catch_0
    move-exception v2

    .line 321
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "MiniCompanyBg"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[getCurrentBgImage]ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parser(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyBgBean;
    .locals 20
    .parameter "xmlMessage"

    .prologue
    .line 219
    new-instance v2, Lcom/isw/android/corp/bean/CompanyBgBean;

    invoke-direct {v2}, Lcom/isw/android/corp/bean/CompanyBgBean;-><init>()V

    .line 222
    .local v2, bean:Lcom/isw/android/corp/bean/CompanyBgBean;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 223
    .local v4, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v3, 0x0

    .line 225
    .local v3, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 227
    const/4 v5, 0x0

    .line 228
    .local v5, doc:Lorg/w3c/dom/Document;
    new-instance v17, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 230
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 232
    .local v11, root:Lorg/w3c/dom/Element;
    const-string v17, "ts"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 233
    .local v15, ts:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_0

    .line 234
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 235
    .local v6, e:Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Text;

    .line 236
    .local v14, t:Lorg/w3c/dom/Text;
    if-eqz v14, :cond_0

    .line 237
    invoke-interface {v14}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->ts:Ljava/lang/String;

    .line 241
    .end local v6           #e:Lorg/w3c/dom/Element;
    .end local v14           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v17, "url"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 242
    .local v16, url:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_1

    .line 243
    const/16 v17, 0x0

    invoke-interface/range {v16 .. v17}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 244
    .restart local v6       #e:Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Text;

    .line 245
    .restart local v14       #t:Lorg/w3c/dom/Text;
    if-eqz v14, :cond_1

    .line 246
    invoke-interface {v14}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    .line 247
    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 248
    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 250
    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    .line 255
    .end local v6           #e:Lorg/w3c/dom/Element;
    .end local v14           #t:Lorg/w3c/dom/Text;
    :cond_1
    const-string v17, "length"

    move-object/from16 v0, v17

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 256
    .local v10, length:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_2

    .line 257
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 258
    .restart local v6       #e:Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Text;

    .line 259
    .restart local v14       #t:Lorg/w3c/dom/Text;
    if-eqz v14, :cond_2

    .line 260
    invoke-interface {v14}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 261
    .local v9, ids:Ljava/lang/String;
    invoke-static {v9}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 262
    const-string v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 263
    .local v12, split:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 264
    .local v13, sub:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_3

    .line 287
    .end local v3           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v6           #e:Lorg/w3c/dom/Element;
    .end local v8           #i:I
    .end local v9           #ids:Ljava/lang/String;
    .end local v10           #length:Lorg/w3c/dom/NodeList;
    .end local v11           #root:Lorg/w3c/dom/Element;
    .end local v12           #split:[Ljava/lang/String;
    .end local v13           #sub:[Ljava/lang/String;
    .end local v14           #t:Lorg/w3c/dom/Text;
    .end local v15           #ts:Lorg/w3c/dom/NodeList;
    .end local v16           #url:Lorg/w3c/dom/NodeList;
    :cond_2
    :goto_1
    return-object v2

    .line 265
    .restart local v3       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v5       #doc:Lorg/w3c/dom/Document;
    .restart local v6       #e:Lorg/w3c/dom/Element;
    .restart local v8       #i:I
    .restart local v9       #ids:Ljava/lang/String;
    .restart local v10       #length:Lorg/w3c/dom/NodeList;
    .restart local v11       #root:Lorg/w3c/dom/Element;
    .restart local v12       #split:[Ljava/lang/String;
    .restart local v13       #sub:[Ljava/lang/String;
    .restart local v14       #t:Lorg/w3c/dom/Text;
    .restart local v15       #ts:Lorg/w3c/dom/NodeList;
    .restart local v16       #url:Lorg/w3c/dom/NodeList;
    :cond_3
    aget-object v17, v12, v8

    invoke-static/range {v17 .. v17}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 266
    aget-object v17, v12, v8

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 267
    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 268
    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->ids:Ljava/util/Vector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v13, v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :try_start_1
    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->idi:Ljava/util/Vector;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v18, v13, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_4
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 272
    :catch_0
    move-exception v7

    .line 273
    .local v7, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, v2, Lcom/isw/android/corp/bean/CompanyBgBean;->idi:Ljava/util/Vector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 283
    .end local v3           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v4           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5           #doc:Lorg/w3c/dom/Document;
    .end local v6           #e:Lorg/w3c/dom/Element;
    .end local v7           #ex:Ljava/lang/Exception;
    .end local v8           #i:I
    .end local v9           #ids:Ljava/lang/String;
    .end local v10           #length:Lorg/w3c/dom/NodeList;
    .end local v11           #root:Lorg/w3c/dom/Element;
    .end local v12           #split:[Ljava/lang/String;
    .end local v13           #sub:[Ljava/lang/String;
    .end local v14           #t:Lorg/w3c/dom/Text;
    .end local v15           #ts:Lorg/w3c/dom/NodeList;
    .end local v16           #url:Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v7

    .line 284
    .restart local v7       #ex:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 285
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static process()V
    .locals 21

    .prologue
    .line 73
    sget-boolean v17, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    if-eqz v17, :cond_0

    .line 74
    const-string v17, "MiniCompanyBg"

    const-string v18, "Warning! bConnecting is true!"

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .local v16, url:Ljava/lang/String;
    :goto_0
    return-void

    .line 79
    .end local v16           #url:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v17, Lcom/isw/android/corp/message/MiniCompanyBg;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v18, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v17 .. v18}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 80
    const/16 v17, 0x1

    sput-boolean v17, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    .line 81
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v18, "/user/updatecompanybackground"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "?"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "imsi="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 83
    sget-object v18, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "&"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 84
    const-string v18, "uid"

    const-string v19, ""

    invoke-static/range {v18 .. v19}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 81
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 86
    .restart local v16       #url:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 87
    .local v15, response:Ljava/lang/String;
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "response: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v15}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 90
    const-string v17, "MiniCompanyBg"

    const-string v18, "Warning! companydata is empty!"

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    sget v17, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 92
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "reconnectTimes: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v19, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v17, "MiniCompanyBg"

    const-string v18, "Try reconnect to get companydata!"

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sget v17, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    add-int/lit8 v17, v17, 0x1

    sput v17, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    .line 95
    const/16 v17, 0x0

    sput-boolean v17, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    .line 96
    invoke-static {}, Lcom/isw/android/corp/message/MiniCompanyBg;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :cond_1
    :goto_1
    const/16 v17, 0x1

    sput v17, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    .line 213
    const/16 v17, 0x0

    sput-boolean v17, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    goto/16 :goto_0

    .line 101
    :cond_2
    :try_start_1
    invoke-static {v15}, Lcom/isw/android/corp/message/MiniCompanyBg;->parser(Ljava/lang/String;)Lcom/isw/android/corp/bean/CompanyBgBean;

    move-result-object v4

    .line 102
    .local v4, bean:Lcom/isw/android/corp/bean/CompanyBgBean;
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "bean.ts: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ts:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "bean.url: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v17, "localCompanyBgTS"

    const-string v18, ""

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 107
    .local v14, localCompanyBgTS:Ljava/lang/String;
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "localCompanyBgTS: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ts:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-ltz v17, :cond_b

    .line 110
    const-string v17, "MiniCompanyBg"

    const-string v18, "Download the company background image"

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v17, "localCompanyBgTS"

    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ts:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v7, ""

    .line 117
    .local v7, bgUrl:Ljava/lang/String;
    const-string v6, ""

    .line 118
    .local v6, bgFile:Ljava/lang/String;
    const/4 v3, 0x1

    .line 119
    .local v3, bDownloadOneFinish:Z
    const/4 v2, 0x1

    .line 120
    .local v2, bDownloadAllFinish:Z
    new-instance v17, Ljava/io/File;

    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_3

    .line 121
    sget-object v17, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/isw/android/corp/util/InitFuncs;->initFS(Landroid/content/Context;)V

    .line 123
    :cond_3
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ids:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-lt v12, v0, :cond_6

    .line 145
    if-eqz v2, :cond_4

    .line 147
    const-string v17, "lastUploadCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 147
    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_3
    sget v17, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 162
    new-instance v5, Ljava/io/File;

    sget-object v17, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .local v5, bgDirFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 165
    .local v13, list:[Ljava/io/File;
    if-eqz v13, :cond_4

    .line 166
    const-string v11, ""

    .line 167
    .local v11, fileName:Ljava/lang/String;
    const/4 v12, 0x0

    :goto_4
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v12, v0, :cond_9

    .line 181
    .end local v5           #bgDirFile:Ljava/io/File;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v13           #list:[Ljava/io/File;
    :cond_4
    new-instance v5, Ljava/io/File;

    sget-object v17, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v5       #bgDirFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 184
    .restart local v13       #list:[Ljava/io/File;
    if-eqz v13, :cond_1

    .line 185
    const/4 v12, 0x0

    :goto_5
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_1

    .line 186
    aget-object v17, v13, v12

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_5

    .line 187
    aget-object v17, v13, v12

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 185
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 124
    .end local v5           #bgDirFile:Ljava/io/File;
    .end local v13           #list:[Ljava/io/File;
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ids:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 125
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "bgUrl: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v17, Ljava/lang/StringBuilder;

    sget-object v18, Lcom/isw/android/corp/util/LocalConfig;->imageBgDir:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 127
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ids:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 126
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 128
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_7

    .line 132
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->idi:Ljava/util/Vector;

    move-object/from16 v17, v0

    .line 133
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 132
    move/from16 v0, v17

    invoke-static {v7, v6, v0}, Lcom/isw/android/corp/http/WinksHttp;->downloadBgURL(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 134
    if-nez v3, :cond_7

    .line 135
    const/4 v2, 0x0

    .line 137
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 139
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 123
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 156
    .end local v10           #file:Ljava/io/File;
    :cond_8
    const-string v17, "MiniCompanyBg"

    .line 157
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, " Warning! CallReceiver.callCurrentStatus: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    sget v19, Lcom/isw/android/corp/telephony/CallUtil;->callCurrentStatus:I

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 157
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 156
    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-wide/16 v17, 0x7d0

    invoke-static/range {v17 .. v18}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 204
    .end local v2           #bDownloadAllFinish:Z
    .end local v3           #bDownloadOneFinish:Z
    .end local v4           #bean:Lcom/isw/android/corp/bean/CompanyBgBean;
    .end local v6           #bgFile:Ljava/lang/String;
    .end local v7           #bgUrl:Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #localCompanyBgTS:Ljava/lang/String;
    .end local v15           #response:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 205
    .local v9, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "ex: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    const/16 v17, 0x1

    sput v17, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    .line 213
    const/16 v17, 0x0

    sput-boolean v17, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    goto/16 :goto_0

    .line 168
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v2       #bDownloadAllFinish:Z
    .restart local v3       #bDownloadOneFinish:Z
    .restart local v4       #bean:Lcom/isw/android/corp/bean/CompanyBgBean;
    .restart local v5       #bgDirFile:Ljava/io/File;
    .restart local v6       #bgFile:Ljava/lang/String;
    .restart local v7       #bgUrl:Ljava/lang/String;
    .restart local v11       #fileName:Ljava/lang/String;
    .restart local v12       #i:I
    .restart local v13       #list:[Ljava/io/File;
    .restart local v14       #localCompanyBgTS:Ljava/lang/String;
    .restart local v15       #response:Ljava/lang/String;
    :cond_9
    :try_start_3
    aget-object v17, v13, v12

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 169
    invoke-static {v11}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 170
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyBgBean;->ids:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 171
    aget-object v17, v13, v12

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    .line 167
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 195
    .end local v2           #bDownloadAllFinish:Z
    .end local v3           #bDownloadOneFinish:Z
    .end local v5           #bgDirFile:Ljava/io/File;
    .end local v6           #bgFile:Ljava/lang/String;
    .end local v7           #bgUrl:Ljava/lang/String;
    .end local v11           #fileName:Ljava/lang/String;
    .end local v12           #i:I
    .end local v13           #list:[Ljava/io/File;
    :cond_b
    const-string v17, "lastUploadCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    new-instance v19, Ljava/util/Date;

    invoke-direct/range {v19 .. v19}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 195
    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v17, "MiniCompanyBg"

    .line 199
    const-string v18, "Local the company background image is not old, do not download."

    .line 198
    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 208
    .end local v4           #bean:Lcom/isw/android/corp/bean/CompanyBgBean;
    .end local v14           #localCompanyBgTS:Ljava/lang/String;
    .end local v15           #response:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 209
    .local v8, err:Ljava/lang/Error;
    :try_start_4
    const-string v17, "MiniCompanyBg"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "err: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    const/16 v17, 0x1

    sput v17, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    .line 213
    const/16 v17, 0x0

    sput-boolean v17, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    goto/16 :goto_0

    .line 211
    .end local v8           #err:Ljava/lang/Error;
    :catchall_0
    move-exception v17

    .line 212
    const/16 v18, 0x1

    sput v18, Lcom/isw/android/corp/message/MiniCompanyBg;->reconnectTimes:I

    .line 213
    const/16 v18, 0x0

    sput-boolean v18, Lcom/isw/android/corp/message/MiniCompanyBg;->bConnecting:Z

    .line 214
    throw v17
.end method

.method public static update()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/isw/android/corp/message/MiniCompanyBg$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCompanyBg$1;-><init>()V

    .line 65
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCompanyBg$1;->start()V

    .line 67
    return-void
.end method
