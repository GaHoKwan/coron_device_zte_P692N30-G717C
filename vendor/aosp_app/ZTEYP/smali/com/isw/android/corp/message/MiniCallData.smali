.class public Lcom/isw/android/corp/message/MiniCallData;
.super Ljava/lang/Object;
.source "MiniCallData.java"


# static fields
.field private static final EMPTY_ID:Ljava/lang/String; = "HelloWinksi"

.field private static final TAG:Ljava/lang/String; = "MiniCallData"

.field private static bConnecting:Z

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field private static reconnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniCallData;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 46
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .locals 0
    .parameter

    .prologue
    .line 46
    sput p0, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallData;->process()V

    return-void
.end method

.method private static parser(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 23
    .parameter "xmlMessage"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Vector",
            "<",
            "Lcom/isw/android/corp/bean/CompanyItemBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .local p2, iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    .line 287
    .local v8, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v7, 0x0

    .line 289
    .local v7, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 291
    const/4 v9, 0x0

    .line 292
    .local v9, doc:Lorg/w3c/dom/Document;
    new-instance v19, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v9

    .line 294
    invoke-interface {v9}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v16

    .line 299
    .local v16, root:Lorg/w3c/dom/Element;
    const-string v19, "d"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 300
    .local v14, node:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_0

    .line 301
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 302
    .local v10, e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 303
    .local v17, t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_0

    .line 304
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, d:Ljava/lang/String;
    invoke-static {v5}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 306
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 307
    .local v15, phone:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v12, v0, :cond_2

    .line 316
    .end local v5           #d:Ljava/lang/String;
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v15           #phone:[Ljava/lang/String;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v19, "i"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 317
    .local v13, iNode:Lorg/w3c/dom/NodeList;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    move/from16 v0, v19

    if-lt v12, v0, :cond_4

    .line 385
    const-string v19, "ts"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 386
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_1

    .line 387
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 388
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 389
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_1

    .line 390
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    .line 391
    .local v18, ts:Ljava/lang/String;
    const-string v19, "cdts"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v7           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #doc:Lorg/w3c/dom/Document;
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v12           #i:I
    .end local v13           #iNode:Lorg/w3c/dom/NodeList;
    .end local v14           #node:Lorg/w3c/dom/NodeList;
    .end local v16           #root:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    .end local v18           #ts:Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 308
    .restart local v5       #d:Ljava/lang/String;
    .restart local v7       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v9       #doc:Lorg/w3c/dom/Document;
    .restart local v10       #e:Lorg/w3c/dom/Element;
    .restart local v12       #i:I
    .restart local v14       #node:Lorg/w3c/dom/NodeList;
    .restart local v15       #phone:[Ljava/lang/String;
    .restart local v16       #root:Lorg/w3c/dom/Element;
    .restart local v17       #t:Lorg/w3c/dom/Text;
    :cond_2
    aget-object v19, v15, v12

    invoke-static/range {v19 .. v19}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 309
    aget-object v19, v15, v12

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 318
    .end local v5           #d:Ljava/lang/String;
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v15           #phone:[Ljava/lang/String;
    .end local v17           #t:Lorg/w3c/dom/Text;
    .restart local v13       #iNode:Lorg/w3c/dom/NodeList;
    :cond_4
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 320
    .local v6, data:Lorg/w3c/dom/Element;
    new-instance v4, Lcom/isw/android/corp/bean/CompanyItemBean;

    const-string v19, "HelloWinksi"

    const-string v20, "HelloWinksi"

    .line 321
    const-string v21, "HelloWinksi"

    const-string v22, "HelloWinksi"

    .line 320
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/isw/android/corp/bean/CompanyItemBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    .local v4, bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    const-string v19, "p"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 324
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_5

    .line 325
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 326
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 327
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_5

    .line 328
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    .line 332
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_5
    const-string v19, "n"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 333
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_6

    .line 334
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 335
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 336
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_6

    .line 337
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    .line 341
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_6
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 342
    iget-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_b

    .line 344
    const-string v19, "t"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 345
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_7

    .line 346
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 347
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 348
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_7

    .line 349
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 353
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_7
    const-string v19, "c"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 354
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_8

    .line 355
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 356
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 357
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_8

    .line 358
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 362
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_8
    const-string v19, "s"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 363
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_9

    .line 364
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 365
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 366
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_9

    .line 367
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 371
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_9
    const-string v19, "m"

    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 372
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v19

    if-lez v19, :cond_a

    .line 373
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 374
    .restart local v10       #e:Lorg/w3c/dom/Element;
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Text;

    .line 375
    .restart local v17       #t:Lorg/w3c/dom/Text;
    if-eqz v17, :cond_a

    .line 376
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 380
    .end local v10           #e:Lorg/w3c/dom/Element;
    .end local v17           #t:Lorg/w3c/dom/Text;
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 397
    .end local v4           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v6           #data:Lorg/w3c/dom/Element;
    .end local v7           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v8           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9           #doc:Lorg/w3c/dom/Document;
    .end local v12           #i:I
    .end local v13           #iNode:Lorg/w3c/dom/NodeList;
    .end local v14           #node:Lorg/w3c/dom/NodeList;
    .end local v16           #root:Lorg/w3c/dom/Element;
    :catch_0
    move-exception v11

    .line 398
    .local v11, ex:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    const-string v19, "MiniCallData"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "ex: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static process()V
    .locals 32

    .prologue
    .line 51
    sget-boolean v28, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    if-eqz v28, :cond_0

    .line 52
    const-string v28, "MiniCallData"

    const-string v29, "Warning! bConnecting is true!"

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .local v27, url:Ljava/lang/String;
    :goto_0
    return-void

    .line 57
    .end local v27           #url:Ljava/lang/String;
    :cond_0
    :try_start_0
    sget-object v28, Lcom/isw/android/corp/message/MiniCallData;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v29, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual/range {v28 .. v29}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 58
    const/16 v28, 0x1

    sput-boolean v28, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    .line 59
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v29, "/calldata"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "imsi="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 61
    const-string v29, "&pkgname="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "&cdts="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "cdts"

    const-string v30, ""

    invoke-static/range {v29 .. v30}, Lcom/isw/android/corp/util/LocalConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 59
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 63
    .restart local v27       #url:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 64
    .local v24, response:Ljava/lang/String;
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "response: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static/range {v24 .. v24}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 67
    const-string v28, "MiniCallData"

    const-string v29, "Warning! calldata is empty!"

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget v28, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_1

    .line 69
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "reconnectTimes: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v30, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v28, "MiniCallData"

    const-string v29, "Try reconnect to get calldata!"

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget v28, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    add-int/lit8 v28, v28, 0x1

    sput v28, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    .line 72
    const/16 v28, 0x0

    sput-boolean v28, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    .line 73
    invoke-static {}, Lcom/isw/android/corp/message/MiniCallData;->process()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    :cond_1
    :goto_1
    const/16 v28, 0x1

    sput v28, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    .line 277
    const/16 v28, 0x0

    sput-boolean v28, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    goto/16 :goto_0

    .line 77
    :cond_2
    :try_start_1
    const-string v28, "</l>"

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 78
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 79
    .local v7, dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/Vector;

    invoke-direct {v15}, Ljava/util/Vector;-><init>()V

    .line 81
    .local v15, iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    move-object/from16 v0, v24

    invoke-static {v0, v7, v15}, Lcom/isw/android/corp/message/MiniCallData;->parser(Ljava/lang/String;Ljava/util/Vector;Ljava/util/Vector;)V

    .line 83
    const-string v13, ""

    .line 84
    .local v13, fn:Ljava/lang/String;
    const/4 v12, 0x0

    .line 85
    .local v12, f:Ljava/io/File;
    const-string v16, ""

    .line 86
    .local v16, iconFile:Ljava/lang/String;
    const-string v17, ""

    .line 87
    .local v17, iconUrl:Ljava/lang/String;
    const/4 v4, 0x0

    .line 89
    .local v4, bDownIcon:Z
    const-string v8, ""

    .line 90
    .local v8, dotFile:Ljava/lang/String;
    const-string v9, ""

    .line 91
    .local v9, dotUrl:Ljava/lang/String;
    const/4 v3, 0x0

    .line 94
    .local v3, bDownDot:Z
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v14, v0, :cond_3

    .line 107
    const/4 v5, 0x0

    .line 108
    .local v5, bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    const-string v6, ":"

    .line 109
    .local v6, callUpdatePhones:Ljava/lang/String;
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v28

    move/from16 v0, v28

    if-lt v14, v0, :cond_5

    .line 262
    const-string v28, "lastCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    new-instance v30, Ljava/util/Date;

    invoke-direct/range {v30 .. v30}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v30 .. v30}, Ljava/util/Date;->getTime()J

    move-result-wide v30

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 262
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v28, Lcom/isw/android/corp/util/LocalConfig;->callUpdateFile:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v6, v0}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 269
    .end local v3           #bDownDot:Z
    .end local v4           #bDownIcon:Z
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v6           #callUpdatePhones:Ljava/lang/String;
    .end local v7           #dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8           #dotFile:Ljava/lang/String;
    .end local v9           #dotUrl:Ljava/lang/String;
    .end local v12           #f:Ljava/io/File;
    .end local v13           #fn:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v16           #iconFile:Ljava/lang/String;
    .end local v17           #iconUrl:Ljava/lang/String;
    .end local v24           #response:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 270
    .local v11, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "ex: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    const/16 v28, 0x1

    sput v28, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    .line 277
    const/16 v28, 0x0

    sput-boolean v28, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    goto/16 :goto_0

    .line 95
    .end local v11           #ex:Ljava/lang/Exception;
    .restart local v3       #bDownDot:Z
    .restart local v4       #bDownIcon:Z
    .restart local v7       #dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8       #dotFile:Ljava/lang/String;
    .restart local v9       #dotUrl:Ljava/lang/String;
    .restart local v12       #f:Ljava/io/File;
    .restart local v13       #fn:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v15       #iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v16       #iconFile:Ljava/lang/String;
    .restart local v17       #iconUrl:Ljava/lang/String;
    .restart local v24       #response:Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v7, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 96
    const-string v29, ".d"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 95
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 97
    new-instance v12, Ljava/io/File;

    .end local v12           #f:Ljava/io/File;
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .restart local v12       #f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 99
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 94
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 102
    :cond_4
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v30, " does not exist."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 272
    .end local v3           #bDownDot:Z
    .end local v4           #bDownIcon:Z
    .end local v7           #dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8           #dotFile:Ljava/lang/String;
    .end local v9           #dotUrl:Ljava/lang/String;
    .end local v12           #f:Ljava/io/File;
    .end local v13           #fn:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v16           #iconFile:Ljava/lang/String;
    .end local v17           #iconUrl:Ljava/lang/String;
    .end local v24           #response:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 273
    .local v10, err:Ljava/lang/Error;
    :try_start_4
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "err: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 276
    const/16 v28, 0x1

    sput v28, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    .line 277
    const/16 v28, 0x0

    sput-boolean v28, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    goto/16 :goto_0

    .line 110
    .end local v10           #err:Ljava/lang/Error;
    .restart local v3       #bDownDot:Z
    .restart local v4       #bDownIcon:Z
    .restart local v5       #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #callUpdatePhones:Ljava/lang/String;
    .restart local v7       #dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8       #dotFile:Ljava/lang/String;
    .restart local v9       #dotUrl:Ljava/lang/String;
    .restart local v12       #f:Ljava/io/File;
    .restart local v13       #fn:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v15       #iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v16       #iconFile:Ljava/lang/String;
    .restart local v17       #iconUrl:Ljava/lang/String;
    .restart local v24       #response:Ljava/lang/String;
    :cond_5
    :try_start_5
    invoke-virtual {v15, v14}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    check-cast v5, Lcom/isw/android/corp/bean/CompanyItemBean;

    .line 111
    .restart local v5       #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    const-string v28, "MiniCallData"

    const-string v29, "**************************"

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "iList["

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "].phone: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 113
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 112
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "iList["

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "].name: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 115
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 114
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "iList["

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "].info: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 117
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 116
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "iList["

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "].iconid: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 119
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 118
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "iList["

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "].dotservice: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 121
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 120
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ":"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 125
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/util/LocalConfig;->companyItem:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 126
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->phone:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ".d"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 125
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 127
    new-instance v12, Ljava/io/File;

    .end local v12           #f:Ljava/io/File;
    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    .restart local v12       #f:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v28

    if-eqz v28, :cond_d

    .line 131
    invoke-static {v13}, Lcom/isw/android/corp/util/LocalConfig;->getFileContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 132
    .local v19, oldContent:Ljava/lang/String;
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "oldContent: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v22, ""

    .line 134
    .local v22, oldInfo:Ljava/lang/String;
    const-string v21, ""

    .line 135
    .local v21, oldIconid:Ljava/lang/String;
    const-string v20, ""

    .line 136
    .local v20, oldDotservice:Ljava/lang/String;
    const-string v23, ""

    .line 137
    .local v23, oldSshow:Ljava/lang/String;
    const-string v28, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 138
    .local v25, sub:[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_6

    .line 139
    const/16 v28, 0x1

    aget-object v22, v25, v28

    .line 140
    const/16 v28, 0x2

    aget-object v21, v25, v28

    .line 141
    const/16 v28, 0x3

    aget-object v20, v25, v28

    .line 142
    const/16 v28, 0x3b

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v28

    if-ltz v28, :cond_6

    .line 144
    const/16 v28, 0x0

    .line 145
    const/16 v29, 0x3b

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v29

    .line 144
    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 149
    :cond_6
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v28, v0

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_7

    .line 150
    const/16 v28, 0x4

    aget-object v28, v25, v28

    const-string v29, ";"

    const-string v30, ""

    invoke-virtual/range {v28 .. v30}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v23

    .line 161
    :cond_7
    new-instance v28, Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 162
    .local v26, upContent:Ljava/lang/String;
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 163
    move-object/from16 v0, v22

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 165
    :cond_8
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 167
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    .line 168
    move-object/from16 v0, v21

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 170
    :cond_9
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 172
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_a

    .line 173
    move-object/from16 v0, v20

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 175
    :cond_a
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 177
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    .line 178
    move-object/from16 v0, v23

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 180
    :cond_b
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 182
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "upContent: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    move-object/from16 v0, v26

    invoke-static {v0, v13}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v19           #oldContent:Ljava/lang/String;
    .end local v20           #oldDotservice:Ljava/lang/String;
    .end local v21           #oldIconid:Ljava/lang/String;
    .end local v22           #oldInfo:Ljava/lang/String;
    .end local v23           #oldSshow:Ljava/lang/String;
    .end local v25           #sub:[Ljava/lang/String;
    .end local v26           #upContent:Ljava/lang/String;
    :goto_5
    sget-object v28, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    const/16 v29, 0x0

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/WinksTools;->canDownload(Landroid/content/Context;I)Z

    move-result v28

    if-eqz v28, :cond_c

    .line 214
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 215
    const-string v28, "MiniCallData"

    const-string v29, "Notice! iconid is empty!"

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_6
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 237
    const-string v28, "MiniCallData"

    const-string v29, "Notice! dotservice is empty!"

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_c
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 188
    :cond_d
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 189
    const-string v28, ""

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    .line 192
    :cond_e
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_f

    .line 193
    const-string v28, ""

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    .line 196
    :cond_f
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_10

    .line 197
    const-string v28, ""

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    .line 200
    :cond_10
    const-string v28, "HelloWinksi"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_11

    .line 201
    const-string v28, ""

    move-object/from16 v0, v28

    iput-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->sshow:Ljava/lang/String;

    .line 204
    :cond_11
    new-instance v28, Ljava/lang/StringBuilder;

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->info:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 205
    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ","

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 206
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ";"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 204
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 207
    .local v18, newContent:Ljava/lang/String;
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "newContent: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, v18

    invoke-static {v0, v13}, Lcom/isw/android/corp/util/LocalConfig;->overWirteFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    .line 275
    .end local v3           #bDownDot:Z
    .end local v4           #bDownIcon:Z
    .end local v5           #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .end local v6           #callUpdatePhones:Ljava/lang/String;
    .end local v7           #dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v8           #dotFile:Ljava/lang/String;
    .end local v9           #dotUrl:Ljava/lang/String;
    .end local v12           #f:Ljava/io/File;
    .end local v13           #fn:Ljava/lang/String;
    .end local v14           #i:I
    .end local v15           #iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .end local v16           #iconFile:Ljava/lang/String;
    .end local v17           #iconUrl:Ljava/lang/String;
    .end local v18           #newContent:Ljava/lang/String;
    .end local v24           #response:Ljava/lang/String;
    :catchall_0
    move-exception v28

    .line 276
    const/16 v29, 0x1

    sput v29, Lcom/isw/android/corp/message/MiniCallData;->reconnectTimes:I

    .line 277
    const/16 v29, 0x0

    sput-boolean v29, Lcom/isw/android/corp/message/MiniCallData;->bConnecting:Z

    .line 278
    throw v28

    .line 218
    .restart local v3       #bDownDot:Z
    .restart local v4       #bDownIcon:Z
    .restart local v5       #bean:Lcom/isw/android/corp/bean/CompanyItemBean;
    .restart local v6       #callUpdatePhones:Ljava/lang/String;
    .restart local v7       #dList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v8       #dotFile:Ljava/lang/String;
    .restart local v9       #dotUrl:Ljava/lang/String;
    .restart local v12       #f:Ljava/io/File;
    .restart local v13       #fn:Ljava/lang/String;
    .restart local v14       #i:I
    .restart local v15       #iList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/isw/android/corp/bean/CompanyItemBean;>;"
    .restart local v16       #iconFile:Ljava/lang/String;
    .restart local v17       #iconUrl:Ljava/lang/String;
    .restart local v24       #response:Ljava/lang/String;
    :cond_12
    :try_start_6
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/isw/android/corp/message/MiniCompanyIcon;->companyIconExist(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_13

    .line 220
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 220
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 222
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/util/LocalConfig;->callIconDir:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 223
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 222
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 224
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/isw/android/corp/http/WinksHttp;->downloadIconURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 226
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "iconUrl: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 227
    const-string v30, ", iconFile: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 228
    const-string v30, ", bDownIcon: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 226
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 231
    :cond_13
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Notice! "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->iconid:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 232
    const-string v30, " is exist!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 231
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 240
    :cond_14
    const-string v28, "0"

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_15

    .line 242
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/isw/android/corp/message/MiniCompanyIcon;->companyDoticonExist(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_15

    .line 244
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 244
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 246
    new-instance v28, Ljava/lang/StringBuilder;

    sget-object v29, Lcom/isw/android/corp/util/LocalConfig;->dotIconDir:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v28 .. v29}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v29, "/"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 247
    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 246
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    invoke-static {v9, v8}, Lcom/isw/android/corp/http/WinksHttp;->downloadIconURL(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 250
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "dotUrl: "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 251
    const-string v30, ", dotFile: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 252
    const-string v30, ", bDownDot: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 250
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 255
    :cond_15
    const-string v28, "MiniCallData"

    new-instance v29, Ljava/lang/StringBuilder;

    const-string v30, "Notice! "

    invoke-direct/range {v29 .. v30}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/isw/android/corp/bean/CompanyItemBean;->dotservice:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 256
    const-string v30, " is exist!"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 255
    invoke-static/range {v28 .. v29}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_7
.end method

.method public static update()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/WinksTools;->canDownload(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/isw/android/corp/message/MiniCallData$1;

    invoke-direct {v0}, Lcom/isw/android/corp/message/MiniCallData$1;-><init>()V

    .line 42
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniCallData$1;->start()V

    goto :goto_0
.end method
