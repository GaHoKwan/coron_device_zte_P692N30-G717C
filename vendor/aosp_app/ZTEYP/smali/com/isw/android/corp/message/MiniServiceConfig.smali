.class public Lcom/isw/android/corp/message/MiniServiceConfig;
.super Ljava/lang/Object;
.source "MiniServiceConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiniServiceConfig"

.field private static bConnecting:Z

.field public static currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

.field private static mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

.field private static reconnectTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/isw/android/corp/services/WinksEngine;->getInstance()Lcom/isw/android/corp/services/WinksEngine;

    move-result-object v0

    sput-object v0, Lcom/isw/android/corp/message/MiniServiceConfig;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    .line 59
    new-instance v0, Lcom/isw/android/corp/bean/ServiceConfigBean;

    invoke-direct {v0}, Lcom/isw/android/corp/bean/ServiceConfigBean;-><init>()V

    sput-object v0, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 71
    const/4 v0, 0x1

    sput v0, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    .line 72
    const/4 v0, 0x0

    sput-boolean v0, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

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
    .line 71
    sput p0, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0
    .parameter

    .prologue
    .line 74
    invoke-static {p0}, Lcom/isw/android/corp/message/MiniServiceConfig;->process(Z)V

    return-void
.end method

.method private static parser(Ljava/lang/String;)Lcom/isw/android/corp/bean/ServiceConfigBean;
    .locals 72
    .parameter "xmlMessage"

    .prologue
    .line 328
    new-instance v5, Lcom/isw/android/corp/bean/ServiceConfigBean;

    invoke-direct {v5}, Lcom/isw/android/corp/bean/ServiceConfigBean;-><init>()V

    .line 331
    .local v5, bean:Lcom/isw/android/corp/bean/ServiceConfigBean;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v22

    .line 332
    .local v22, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    const/16 v21, 0x0

    .line 334
    .local v21, db:Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {v22 .. v22}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v21

    .line 336
    const/16 v24, 0x0

    .line 337
    .local v24, doc:Lorg/w3c/dom/Document;
    new-instance v69, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v70

    invoke-direct/range {v69 .. v70}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, v21

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v24

    .line 339
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v54

    .line 341
    .local v54, root:Lorg/w3c/dom/Element;
    const-string v69, "address"

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 342
    .local v2, address:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_5

    .line 343
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 345
    .local v3, addressNode:Lorg/w3c/dom/Element;
    const-string v69, "winks"

    move-object/from16 v0, v69

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v66

    .line 346
    .local v66, winks:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v66 .. v66}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_0

    .line 347
    const/16 v69, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 348
    .local v31, e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 349
    .local v58, t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_0

    .line 350
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    .line 351
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v69

    if-nez v69, :cond_0

    .line 352
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v69, v0

    const-string v70, "/"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v69

    if-eqz v69, :cond_0

    .line 354
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    move-object/from16 v71, v0

    .line 355
    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v71

    add-int/lit8 v71, v71, -0x1

    .line 354
    invoke-virtual/range {v69 .. v71}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    .line 360
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_0
    const-string v69, "media"

    move-object/from16 v0, v69

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v39

    .line 361
    .local v39, media:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v39 .. v39}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1

    .line 362
    const/16 v69, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 363
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 364
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1

    .line 365
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    .line 366
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v69

    if-nez v69, :cond_1

    .line 367
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    move-object/from16 v69, v0

    const-string v70, "/"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v69

    if-eqz v69, :cond_1

    .line 369
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    move-object/from16 v71, v0

    .line 370
    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v71

    add-int/lit8 v71, v71, -0x1

    .line 369
    invoke-virtual/range {v69 .. v71}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    .line 375
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1
    const-string v69, "pushUrl"

    move-object/from16 v0, v69

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v48

    .line 376
    .local v48, pushUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v48 .. v48}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2

    .line 377
    const/16 v69, 0x0

    move-object/from16 v0, v48

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 378
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 379
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2

    .line 380
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    .line 381
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v69

    if-nez v69, :cond_2

    .line 382
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    const-string v70, "/"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v69

    if-eqz v69, :cond_2

    .line 384
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    .line 385
    const/16 v70, 0x0

    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v71

    add-int/lit8 v71, v71, -0x1

    invoke-virtual/range {v69 .. v71}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 384
    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    .line 399
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2
    const-string v69, "sms"

    move-object/from16 v0, v69

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v56

    .line 400
    .local v56, sms:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v56 .. v56}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_5

    .line 401
    const/16 v69, 0x0

    move-object/from16 v0, v56

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v57

    check-cast v57, Lorg/w3c/dom/Element;

    .line 403
    .local v57, smsNode:Lorg/w3c/dom/Element;
    const-string v69, "number"

    move-object/from16 v0, v57

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v42

    .line 404
    .local v42, number:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v42 .. v42}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_3

    .line 405
    const/16 v69, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 406
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 407
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_3

    .line 408
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_number:Ljava/lang/String;

    .line 412
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_3
    const-string v69, "prefix"

    move-object/from16 v0, v57

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v47

    .line 413
    .local v47, prefix:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v47 .. v47}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_4

    .line 414
    const/16 v69, 0x0

    move-object/from16 v0, v47

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 415
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 416
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_4

    .line 417
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_prefix:Ljava/lang/String;

    .line 421
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_4
    const-string v69, "type"

    move-object/from16 v0, v57

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v60

    .line 422
    .local v60, type:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v60 .. v60}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_5

    .line 423
    const/16 v69, 0x0

    move-object/from16 v0, v60

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 424
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 425
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_5

    .line 426
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_type:Ljava/lang/String;

    .line 433
    .end local v3           #addressNode:Lorg/w3c/dom/Element;
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v39           #media:Lorg/w3c/dom/NodeList;
    .end local v42           #number:Lorg/w3c/dom/NodeList;
    .end local v47           #prefix:Lorg/w3c/dom/NodeList;
    .end local v48           #pushUrl:Lorg/w3c/dom/NodeList;
    .end local v56           #sms:Lorg/w3c/dom/NodeList;
    .end local v57           #smsNode:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    .end local v60           #type:Lorg/w3c/dom/NodeList;
    .end local v66           #winks:Lorg/w3c/dom/NodeList;
    :cond_5
    const-string v69, "config"

    move-object/from16 v0, v54

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 434
    .local v17, config:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_35

    .line 435
    const/16 v69, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Element;

    .line 441
    .local v18, configNode:Lorg/w3c/dom/Element;
    const-string v69, "updateCompanyDataPeroid"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 442
    .local v12, cdperiod:Lorg/w3c/dom/NodeList;
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_6

    .line 443
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 444
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 445
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_6

    .line 446
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyDataPeriod:Ljava/lang/String;

    .line 454
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_6
    const-string v69, "clearCompanyCachePeroid"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 455
    .local v14, clearcacheperiod:Lorg/w3c/dom/NodeList;
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_7

    .line 456
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 457
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 458
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_7

    .line 459
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->clearCompanyCachePeroid:Ljava/lang/String;

    .line 467
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_7
    const-string v69, "uploadCompanyCallHistoryPeriod"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v65

    .line 468
    .local v65, uploadPeriod:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_8

    .line 469
    const/16 v69, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 470
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 471
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_8

    .line 472
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    .line 477
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_8
    const-string v69, "uploadCompanyCallHistoryPeriod"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v65

    .line 478
    invoke-interface/range {v65 .. v65}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_9

    .line 479
    const/16 v69, 0x0

    move-object/from16 v0, v65

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 480
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 481
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_9

    .line 482
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    .line 490
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_9
    const-string v69, "updateCompanyBackgroundPeroid"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v64

    .line 491
    .local v64, uploadCompangBgPeriod:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v64 .. v64}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_a

    .line 492
    const/16 v69, 0x0

    move-object/from16 v0, v64

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 493
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 494
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_a

    .line 495
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyBackgroundPeroid:Ljava/lang/String;

    .line 503
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_a
    const-string v69, "updateCallDataPeriod"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v61

    .line 504
    .local v61, updateCallDataPeriod:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v61 .. v61}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_b

    .line 505
    const/16 v69, 0x0

    move-object/from16 v0, v61

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 506
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 507
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_b

    .line 508
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCallDataPeriod:Ljava/lang/String;

    .line 516
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_b
    const-string v69, "updatePkgPeriod"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v63

    .line 517
    .local v63, updatePkgPeriod:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v63 .. v63}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_c

    .line 518
    const/16 v69, 0x0

    move-object/from16 v0, v63

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 519
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 520
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_c

    .line 521
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePkgPeriod:Ljava/lang/String;

    .line 530
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_c
    const-string v69, "companyUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 531
    .local v16, companyUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_d

    .line 532
    const/16 v69, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 533
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 534
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_d

    .line 535
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyUrl:Ljava/lang/String;

    .line 543
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_d
    const-string v69, "enableCompanyDetailUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v32

    .line 544
    .local v32, enableDetailUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_e

    .line 545
    const/16 v69, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 546
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 547
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_e

    .line 548
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableCompanyDetailUrl:Ljava/lang/String;

    .line 555
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_e
    const-string v69, "zone"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v68

    .line 556
    .local v68, zone:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v68 .. v68}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_f

    .line 557
    const/16 v69, 0x0

    invoke-interface/range {v68 .. v69}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 558
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 559
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_f

    .line 560
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->zone:Ljava/lang/String;

    .line 568
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_f
    const-string v69, "companyIconUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 569
    .local v15, companyIconUrl:Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_10

    .line 570
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 571
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 572
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_10

    .line 573
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    .line 574
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v69

    if-nez v69, :cond_10

    .line 575
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    const-string v70, "/"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v69

    if-eqz v69, :cond_10

    .line 577
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    .line 578
    const/16 v70, 0x0

    .line 579
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v71

    add-int/lit8 v71, v71, -0x1

    .line 578
    invoke-virtual/range {v69 .. v71}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 577
    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    .line 588
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_10
    const-string v69, "dotIconUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v27

    .line 589
    .local v27, dotIconUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v27 .. v27}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_11

    .line 590
    const/16 v69, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 591
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 592
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_11

    .line 593
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    .line 594
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-static/range {v69 .. v69}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v69

    if-nez v69, :cond_11

    .line 595
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    const-string v70, "/"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v69

    if-eqz v69, :cond_11

    .line 597
    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v69, v0

    .line 598
    const/16 v70, 0x0

    iget-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    move-object/from16 v71, v0

    invoke-virtual/range {v71 .. v71}, Ljava/lang/String;->length()I

    move-result v71

    add-int/lit8 v71, v71, -0x1

    invoke-virtual/range {v69 .. v71}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v69

    .line 597
    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    .line 606
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_11
    const-string v69, "dotCommUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 607
    .local v25, dotCommUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_12

    .line 608
    const/16 v69, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 609
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 610
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_12

    .line 611
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    .line 618
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_12
    const-string v69, "dotMediaUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v28

    .line 619
    .local v28, dotMediaUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_13

    .line 620
    const/16 v69, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 621
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 622
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_13

    .line 623
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    .line 630
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_13
    const-string v69, "contactUrl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 631
    .local v19, contactUrl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_14

    .line 632
    const/16 v69, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 633
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 634
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_14

    .line 635
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->contactUrl:Ljava/lang/String;

    .line 642
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_14
    const-string v69, "dotEnable"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 643
    .local v26, dotEnable:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_15

    .line 644
    const/16 v69, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 645
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 646
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_15

    .line 647
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    .line 654
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_15
    const-string v69, "dotmatch"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 655
    .local v29, dotmatch:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_16

    .line 656
    const/16 v69, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 657
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 658
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_16

    .line 659
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    .line 668
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_16
    const-string v69, "blackuser"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 669
    .local v6, blackuser:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_17

    .line 670
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 671
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 672
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_17

    .line 673
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->blackuser:Ljava/lang/String;

    .line 680
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_17
    const-string v69, "showcc"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v55

    .line 681
    .local v55, showcc:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v55 .. v55}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_18

    .line 682
    const/16 v69, 0x0

    move-object/from16 v0, v55

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 683
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 684
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_18

    .line 685
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->showcc:Ljava/lang/String;

    .line 693
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_18
    const-string v69, "needphone"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 694
    .local v41, needphone:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_19

    .line 695
    const/16 v69, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 696
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 697
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_19

    .line 698
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->needphone:Ljava/lang/String;

    .line 720
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_19
    const-string v69, "updatePhoneLocPeroid"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v62

    .line 721
    .local v62, updatePhoneLocPeroid:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v62 .. v62}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1a

    .line 722
    const/16 v69, 0x0

    move-object/from16 v0, v62

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 723
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 724
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1a

    .line 725
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePhoneLocPeroid:Ljava/lang/String;

    .line 733
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1a
    const-string v69, "maxSingleCall"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v38

    .line 734
    .local v38, maxSingleCall:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v38 .. v38}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1b

    .line 735
    const/16 v69, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 736
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 737
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1b

    .line 738
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxSingleCall:Ljava/lang/String;

    .line 746
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1b
    const-string v69, "maxLocalHistory"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 747
    .local v37, maxLocalHistory:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1c

    .line 748
    const/16 v69, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 749
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 750
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1c

    .line 751
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxLocalHistory:Ljava/lang/String;

    .line 759
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1c
    const-string v69, "encodeHistory"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v34

    .line 760
    .local v34, encodeHistory:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v34 .. v34}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1d

    .line 761
    const/16 v69, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 762
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 763
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1d

    .line 764
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodeHistory:Ljava/lang/String;

    .line 772
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1d
    const-string v69, "encodePhone"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v35

    .line 773
    .local v35, encodePhone:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1e

    .line 774
    const/16 v69, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 775
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 776
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1e

    .line 777
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodePhone:Ljava/lang/String;

    .line 785
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1e
    const-string v69, "zipCompanyData"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v67

    .line 786
    .local v67, zipCompanyData:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v67 .. v67}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_1f

    .line 787
    const/16 v69, 0x0

    move-object/from16 v0, v67

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 788
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 789
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_1f

    .line 790
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->zipCompanyData:Ljava/lang/String;

    .line 810
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_1f
    const-string v69, "dataDiff"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 811
    .local v20, dataDiff:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_20

    .line 812
    const/16 v69, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 813
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 814
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_20

    .line 815
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dataDiff:Ljava/lang/String;

    .line 823
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_20
    const-string v69, "diskSpace"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 824
    .local v23, diskSpace:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_21

    .line 825
    const/16 v69, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 826
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 827
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_21

    .line 828
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->diskSpace:Ljava/lang/String;

    .line 836
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_21
    const-string v69, "threshold"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v59

    .line 837
    .local v59, threshold:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v59 .. v59}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_22

    .line 838
    const/16 v69, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 839
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 840
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_22

    .line 841
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->threshold:Ljava/lang/String;

    .line 848
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_22
    const-string v69, "ccMode"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 849
    .local v10, ccMode:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_23

    .line 850
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v10, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 851
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 852
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_23

    .line 853
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccMode:Ljava/lang/String;

    .line 861
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_23
    const-string v69, "autoCloseCallIn"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 862
    .local v4, autoCloseCallIn:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_24

    .line 863
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 864
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 865
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_24

    .line 866
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->autoCloseCallIn:Ljava/lang/String;

    .line 874
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_24
    const-string v69, "partTextColor"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v45

    .line 875
    .local v45, partTextColor:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v45 .. v45}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_25

    .line 876
    const/16 v69, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 877
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 878
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_25

    .line 879
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->partTextColor:Ljava/lang/String;

    .line 887
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_25
    const-string v69, "partBgColor"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v43

    .line 888
    .local v43, partBgColor:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v43 .. v43}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_26

    .line 889
    const/16 v69, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 890
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 891
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_26

    .line 892
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->partBgColor:Ljava/lang/String;

    .line 900
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_26
    const-string v69, "partDuration"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v44

    .line 901
    .local v44, partDuration:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v44 .. v44}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_27

    .line 902
    const/16 v69, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 903
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 904
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_27

    .line 905
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->partDuration:Ljava/lang/String;

    .line 913
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_27
    const-string v69, "pushenable"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v50

    .line 914
    .local v50, pushenable:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v50 .. v50}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_28

    .line 915
    const/16 v69, 0x0

    move-object/from16 v0, v50

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 916
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 917
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_28

    .line 918
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushenable:Ljava/lang/String;

    .line 926
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_28
    const-string v69, "pushpreembed"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v52

    .line 927
    .local v52, pushpreembed:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v52 .. v52}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_29

    .line 928
    const/16 v69, 0x0

    move-object/from16 v0, v52

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 929
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 930
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_29

    .line 931
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreembed:Ljava/lang/String;

    .line 939
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_29
    const-string v69, "pushpreurl"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v53

    .line 940
    .local v53, pushpreurl:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v53 .. v53}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2a

    .line 941
    const/16 v69, 0x0

    move-object/from16 v0, v53

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 942
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 943
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2a

    .line 944
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreurl:Ljava/lang/String;

    .line 952
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2a
    const-string v69, "pushdelay"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v49

    .line 953
    .local v49, pushdelay:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v49 .. v49}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2b

    .line 954
    const/16 v69, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 955
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 956
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2b

    .line 957
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushdelay:Ljava/lang/String;

    .line 965
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2b
    const-string v69, "pushinbox"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v51

    .line 966
    .local v51, pushinbox:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v51 .. v51}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2c

    .line 967
    const/16 v69, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 968
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 969
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2c

    .line 970
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushinbox:Ljava/lang/String;

    .line 978
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2c
    const-string v69, "ccoverlay"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 979
    .local v11, ccoverlay:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2d

    .line 980
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v11, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 981
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 982
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2d

    .line 983
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccoverlay:Ljava/lang/String;

    .line 991
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2d
    const-string v69, "chupload"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 992
    .local v13, chupload:Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2e

    .line 993
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 994
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 995
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2e

    .line 996
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->chupload:Ljava/lang/String;

    .line 1004
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2e
    const-string v69, "dottips"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 1005
    .local v30, dottips:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_2f

    .line 1006
    const/16 v69, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1007
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1008
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_2f

    .line 1009
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dottips:Ljava/lang/String;

    .line 1016
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_2f
    const-string v69, "callcenterEnable"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 1017
    .local v7, callcenterEnable:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_30

    .line 1018
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v7, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1019
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1020
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_30

    .line 1021
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenterEnable:Ljava/lang/String;

    .line 1028
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_30
    const-string v69, "callcenternumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1029
    .local v8, callcenternumber:Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_31

    .line 1030
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1031
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1032
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_31

    .line 1033
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenternumber:Ljava/lang/String;

    .line 1040
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_31
    const-string v69, "phonepre"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v46

    .line 1041
    .local v46, phonepre:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v46 .. v46}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_32

    .line 1042
    const/16 v69, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1043
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1044
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_32

    .line 1045
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    .line 1049
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_32
    const-string v69, "mne"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v40

    .line 1050
    .local v40, mne:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v40 .. v40}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_33

    .line 1051
    const/16 v69, 0x0

    move-object/from16 v0, v40

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1052
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1053
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_33

    .line 1054
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->mne:Ljava/lang/String;

    .line 1061
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_33
    const-string v69, "enableLog"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 1062
    .local v33, enableLog:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_34

    .line 1063
    const/16 v69, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1064
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1065
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_34

    .line 1066
    const-string v69, "true"

    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_36

    .line 1067
    const/16 v69, 0x1

    move/from16 v0, v69

    iput-boolean v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    .line 1077
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v58           #t:Lorg/w3c/dom/Text;
    :cond_34
    :goto_0
    const-string v69, "callcentertips"

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 1078
    .local v9, callcentertips:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v69

    if-lez v69, :cond_35

    .line 1079
    const/16 v69, 0x0

    move/from16 v0, v69

    invoke-interface {v9, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    check-cast v31, Lorg/w3c/dom/Element;

    .line 1080
    .restart local v31       #e:Lorg/w3c/dom/Element;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v58

    check-cast v58, Lorg/w3c/dom/Text;

    .line 1081
    .restart local v58       #t:Lorg/w3c/dom/Text;
    if-eqz v58, :cond_35

    .line 1082
    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v69

    iput-object v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcentertips:Ljava/lang/String;

    .line 1093
    .end local v2           #address:Lorg/w3c/dom/NodeList;
    .end local v4           #autoCloseCallIn:Lorg/w3c/dom/NodeList;
    .end local v6           #blackuser:Lorg/w3c/dom/NodeList;
    .end local v7           #callcenterEnable:Lorg/w3c/dom/NodeList;
    .end local v8           #callcenternumber:Lorg/w3c/dom/NodeList;
    .end local v9           #callcentertips:Lorg/w3c/dom/NodeList;
    .end local v10           #ccMode:Lorg/w3c/dom/NodeList;
    .end local v11           #ccoverlay:Lorg/w3c/dom/NodeList;
    .end local v12           #cdperiod:Lorg/w3c/dom/NodeList;
    .end local v13           #chupload:Lorg/w3c/dom/NodeList;
    .end local v14           #clearcacheperiod:Lorg/w3c/dom/NodeList;
    .end local v15           #companyIconUrl:Lorg/w3c/dom/NodeList;
    .end local v16           #companyUrl:Lorg/w3c/dom/NodeList;
    .end local v17           #config:Lorg/w3c/dom/NodeList;
    .end local v18           #configNode:Lorg/w3c/dom/Element;
    .end local v19           #contactUrl:Lorg/w3c/dom/NodeList;
    .end local v20           #dataDiff:Lorg/w3c/dom/NodeList;
    .end local v21           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v22           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v23           #diskSpace:Lorg/w3c/dom/NodeList;
    .end local v24           #doc:Lorg/w3c/dom/Document;
    .end local v25           #dotCommUrl:Lorg/w3c/dom/NodeList;
    .end local v26           #dotEnable:Lorg/w3c/dom/NodeList;
    .end local v27           #dotIconUrl:Lorg/w3c/dom/NodeList;
    .end local v28           #dotMediaUrl:Lorg/w3c/dom/NodeList;
    .end local v29           #dotmatch:Lorg/w3c/dom/NodeList;
    .end local v30           #dottips:Lorg/w3c/dom/NodeList;
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v32           #enableDetailUrl:Lorg/w3c/dom/NodeList;
    .end local v33           #enableLog:Lorg/w3c/dom/NodeList;
    .end local v34           #encodeHistory:Lorg/w3c/dom/NodeList;
    .end local v35           #encodePhone:Lorg/w3c/dom/NodeList;
    .end local v37           #maxLocalHistory:Lorg/w3c/dom/NodeList;
    .end local v38           #maxSingleCall:Lorg/w3c/dom/NodeList;
    .end local v40           #mne:Lorg/w3c/dom/NodeList;
    .end local v41           #needphone:Lorg/w3c/dom/NodeList;
    .end local v43           #partBgColor:Lorg/w3c/dom/NodeList;
    .end local v44           #partDuration:Lorg/w3c/dom/NodeList;
    .end local v45           #partTextColor:Lorg/w3c/dom/NodeList;
    .end local v46           #phonepre:Lorg/w3c/dom/NodeList;
    .end local v49           #pushdelay:Lorg/w3c/dom/NodeList;
    .end local v50           #pushenable:Lorg/w3c/dom/NodeList;
    .end local v51           #pushinbox:Lorg/w3c/dom/NodeList;
    .end local v52           #pushpreembed:Lorg/w3c/dom/NodeList;
    .end local v53           #pushpreurl:Lorg/w3c/dom/NodeList;
    .end local v54           #root:Lorg/w3c/dom/Element;
    .end local v55           #showcc:Lorg/w3c/dom/NodeList;
    .end local v58           #t:Lorg/w3c/dom/Text;
    .end local v59           #threshold:Lorg/w3c/dom/NodeList;
    .end local v61           #updateCallDataPeriod:Lorg/w3c/dom/NodeList;
    .end local v62           #updatePhoneLocPeroid:Lorg/w3c/dom/NodeList;
    .end local v63           #updatePkgPeriod:Lorg/w3c/dom/NodeList;
    .end local v64           #uploadCompangBgPeriod:Lorg/w3c/dom/NodeList;
    .end local v65           #uploadPeriod:Lorg/w3c/dom/NodeList;
    .end local v67           #zipCompanyData:Lorg/w3c/dom/NodeList;
    .end local v68           #zone:Lorg/w3c/dom/NodeList;
    :cond_35
    :goto_1
    return-object v5

    .line 1068
    .restart local v2       #address:Lorg/w3c/dom/NodeList;
    .restart local v4       #autoCloseCallIn:Lorg/w3c/dom/NodeList;
    .restart local v6       #blackuser:Lorg/w3c/dom/NodeList;
    .restart local v7       #callcenterEnable:Lorg/w3c/dom/NodeList;
    .restart local v8       #callcenternumber:Lorg/w3c/dom/NodeList;
    .restart local v10       #ccMode:Lorg/w3c/dom/NodeList;
    .restart local v11       #ccoverlay:Lorg/w3c/dom/NodeList;
    .restart local v12       #cdperiod:Lorg/w3c/dom/NodeList;
    .restart local v13       #chupload:Lorg/w3c/dom/NodeList;
    .restart local v14       #clearcacheperiod:Lorg/w3c/dom/NodeList;
    .restart local v15       #companyIconUrl:Lorg/w3c/dom/NodeList;
    .restart local v16       #companyUrl:Lorg/w3c/dom/NodeList;
    .restart local v17       #config:Lorg/w3c/dom/NodeList;
    .restart local v18       #configNode:Lorg/w3c/dom/Element;
    .restart local v19       #contactUrl:Lorg/w3c/dom/NodeList;
    .restart local v20       #dataDiff:Lorg/w3c/dom/NodeList;
    .restart local v21       #db:Ljavax/xml/parsers/DocumentBuilder;
    .restart local v22       #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v23       #diskSpace:Lorg/w3c/dom/NodeList;
    .restart local v24       #doc:Lorg/w3c/dom/Document;
    .restart local v25       #dotCommUrl:Lorg/w3c/dom/NodeList;
    .restart local v26       #dotEnable:Lorg/w3c/dom/NodeList;
    .restart local v27       #dotIconUrl:Lorg/w3c/dom/NodeList;
    .restart local v28       #dotMediaUrl:Lorg/w3c/dom/NodeList;
    .restart local v29       #dotmatch:Lorg/w3c/dom/NodeList;
    .restart local v30       #dottips:Lorg/w3c/dom/NodeList;
    .restart local v31       #e:Lorg/w3c/dom/Element;
    .restart local v32       #enableDetailUrl:Lorg/w3c/dom/NodeList;
    .restart local v33       #enableLog:Lorg/w3c/dom/NodeList;
    .restart local v34       #encodeHistory:Lorg/w3c/dom/NodeList;
    .restart local v35       #encodePhone:Lorg/w3c/dom/NodeList;
    .restart local v37       #maxLocalHistory:Lorg/w3c/dom/NodeList;
    .restart local v38       #maxSingleCall:Lorg/w3c/dom/NodeList;
    .restart local v40       #mne:Lorg/w3c/dom/NodeList;
    .restart local v41       #needphone:Lorg/w3c/dom/NodeList;
    .restart local v43       #partBgColor:Lorg/w3c/dom/NodeList;
    .restart local v44       #partDuration:Lorg/w3c/dom/NodeList;
    .restart local v45       #partTextColor:Lorg/w3c/dom/NodeList;
    .restart local v46       #phonepre:Lorg/w3c/dom/NodeList;
    .restart local v49       #pushdelay:Lorg/w3c/dom/NodeList;
    .restart local v50       #pushenable:Lorg/w3c/dom/NodeList;
    .restart local v51       #pushinbox:Lorg/w3c/dom/NodeList;
    .restart local v52       #pushpreembed:Lorg/w3c/dom/NodeList;
    .restart local v53       #pushpreurl:Lorg/w3c/dom/NodeList;
    .restart local v54       #root:Lorg/w3c/dom/Element;
    .restart local v55       #showcc:Lorg/w3c/dom/NodeList;
    .restart local v58       #t:Lorg/w3c/dom/Text;
    .restart local v59       #threshold:Lorg/w3c/dom/NodeList;
    .restart local v61       #updateCallDataPeriod:Lorg/w3c/dom/NodeList;
    .restart local v62       #updatePhoneLocPeroid:Lorg/w3c/dom/NodeList;
    .restart local v63       #updatePkgPeriod:Lorg/w3c/dom/NodeList;
    .restart local v64       #uploadCompangBgPeriod:Lorg/w3c/dom/NodeList;
    .restart local v65       #uploadPeriod:Lorg/w3c/dom/NodeList;
    .restart local v67       #zipCompanyData:Lorg/w3c/dom/NodeList;
    .restart local v68       #zone:Lorg/w3c/dom/NodeList;
    :cond_36
    const-string v69, "false"

    invoke-interface/range {v58 .. v58}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v69

    if-eqz v69, :cond_34

    .line 1069
    const/16 v69, 0x0

    move/from16 v0, v69

    iput-boolean v0, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1089
    .end local v2           #address:Lorg/w3c/dom/NodeList;
    .end local v4           #autoCloseCallIn:Lorg/w3c/dom/NodeList;
    .end local v6           #blackuser:Lorg/w3c/dom/NodeList;
    .end local v7           #callcenterEnable:Lorg/w3c/dom/NodeList;
    .end local v8           #callcenternumber:Lorg/w3c/dom/NodeList;
    .end local v10           #ccMode:Lorg/w3c/dom/NodeList;
    .end local v11           #ccoverlay:Lorg/w3c/dom/NodeList;
    .end local v12           #cdperiod:Lorg/w3c/dom/NodeList;
    .end local v13           #chupload:Lorg/w3c/dom/NodeList;
    .end local v14           #clearcacheperiod:Lorg/w3c/dom/NodeList;
    .end local v15           #companyIconUrl:Lorg/w3c/dom/NodeList;
    .end local v16           #companyUrl:Lorg/w3c/dom/NodeList;
    .end local v17           #config:Lorg/w3c/dom/NodeList;
    .end local v18           #configNode:Lorg/w3c/dom/Element;
    .end local v19           #contactUrl:Lorg/w3c/dom/NodeList;
    .end local v20           #dataDiff:Lorg/w3c/dom/NodeList;
    .end local v21           #db:Ljavax/xml/parsers/DocumentBuilder;
    .end local v22           #dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v23           #diskSpace:Lorg/w3c/dom/NodeList;
    .end local v24           #doc:Lorg/w3c/dom/Document;
    .end local v25           #dotCommUrl:Lorg/w3c/dom/NodeList;
    .end local v26           #dotEnable:Lorg/w3c/dom/NodeList;
    .end local v27           #dotIconUrl:Lorg/w3c/dom/NodeList;
    .end local v28           #dotMediaUrl:Lorg/w3c/dom/NodeList;
    .end local v29           #dotmatch:Lorg/w3c/dom/NodeList;
    .end local v30           #dottips:Lorg/w3c/dom/NodeList;
    .end local v31           #e:Lorg/w3c/dom/Element;
    .end local v32           #enableDetailUrl:Lorg/w3c/dom/NodeList;
    .end local v33           #enableLog:Lorg/w3c/dom/NodeList;
    .end local v34           #encodeHistory:Lorg/w3c/dom/NodeList;
    .end local v35           #encodePhone:Lorg/w3c/dom/NodeList;
    .end local v37           #maxLocalHistory:Lorg/w3c/dom/NodeList;
    .end local v38           #maxSingleCall:Lorg/w3c/dom/NodeList;
    .end local v40           #mne:Lorg/w3c/dom/NodeList;
    .end local v41           #needphone:Lorg/w3c/dom/NodeList;
    .end local v43           #partBgColor:Lorg/w3c/dom/NodeList;
    .end local v44           #partDuration:Lorg/w3c/dom/NodeList;
    .end local v45           #partTextColor:Lorg/w3c/dom/NodeList;
    .end local v46           #phonepre:Lorg/w3c/dom/NodeList;
    .end local v49           #pushdelay:Lorg/w3c/dom/NodeList;
    .end local v50           #pushenable:Lorg/w3c/dom/NodeList;
    .end local v51           #pushinbox:Lorg/w3c/dom/NodeList;
    .end local v52           #pushpreembed:Lorg/w3c/dom/NodeList;
    .end local v53           #pushpreurl:Lorg/w3c/dom/NodeList;
    .end local v54           #root:Lorg/w3c/dom/Element;
    .end local v55           #showcc:Lorg/w3c/dom/NodeList;
    .end local v58           #t:Lorg/w3c/dom/Text;
    .end local v59           #threshold:Lorg/w3c/dom/NodeList;
    .end local v61           #updateCallDataPeriod:Lorg/w3c/dom/NodeList;
    .end local v62           #updatePhoneLocPeroid:Lorg/w3c/dom/NodeList;
    .end local v63           #updatePkgPeriod:Lorg/w3c/dom/NodeList;
    .end local v64           #uploadCompangBgPeriod:Lorg/w3c/dom/NodeList;
    .end local v65           #uploadPeriod:Lorg/w3c/dom/NodeList;
    .end local v67           #zipCompanyData:Lorg/w3c/dom/NodeList;
    .end local v68           #zone:Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v36

    .line 1090
    .local v36, ex:Ljava/lang/Exception;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->printStackTrace()V

    .line 1091
    const-string v69, "MiniServiceConfig"

    new-instance v70, Ljava/lang/StringBuilder;

    const-string v71, "ex: "

    invoke-direct/range {v70 .. v71}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    invoke-static/range {v69 .. v70}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static process(Z)V
    .locals 9
    .parameter "bNotify"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    sget-boolean v4, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "MiniServiceConfig"

    const-string v5, "Warning! bConnecting is true!"

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 80
    :cond_0
    :try_start_0
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->mimiEngie:Lcom/isw/android/corp/services/WinksEngine;

    sget-object v5, Lcom/isw/android/corp/util/WinksApplication;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/isw/android/corp/services/WinksEngine;->NetworkAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    const/4 v4, 0x1

    sput-boolean v4, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://d.zqlx.com:8100/winksWS/service/config?imsi="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    sget-object v5, Lcom/isw/android/corp/util/WinksApplication;->imsi:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&pkgname="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 86
    sget-object v5, Lcom/isw/android/corp/util/WinksApplication;->pkgname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, url:Ljava/lang/String;
    if-eqz p0, :cond_1

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "&xnotify=true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    :cond_1
    const-string v2, ""

    .line 114
    .local v2, serviceConfig:Ljava/lang/String;
    invoke-static {v3}, Lcom/isw/android/corp/http/WinksHttp;->sendRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "serviceConfig: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {v2}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    const-string v4, "MiniServiceConfig"

    const-string v5, "Warning! serviceConfig is empty!"

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget v4, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    const/4 v5, 0x3

    if-gt v4, v5, :cond_2

    .line 121
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "reconnectTimes: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v4, "MiniServiceConfig"

    const-string v5, "Try reconnect to get serviceConfig!"

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget v4, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    .line 124
    const/4 v4, 0x0

    sput-boolean v4, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    .line 125
    invoke-static {p0}, Lcom/isw/android/corp/message/MiniServiceConfig;->process(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 322
    .end local v2           #serviceConfig:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :cond_2
    :goto_1
    sput v8, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    .line 323
    sput-boolean v7, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    goto/16 :goto_0

    .line 130
    .restart local v2       #serviceConfig:Ljava/lang/String;
    .restart local v3       #url:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {v2}, Lcom/isw/android/corp/message/MiniServiceConfig;->parser(Ljava/lang/String;)Lcom/isw/android/corp/bean/ServiceConfigBean;

    move-result-object v4

    sput-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    .line 131
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "winks: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "media: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sms_number: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sms_prefix: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_prefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "sms_type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateCompanyDataPeriod: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyDataPeriod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clearCompanyCachePeroid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->clearCompanyCachePeroid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uploadCompanyCallHistoryPeriod: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateCompanyBackgroundPeroid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyBackgroundPeroid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateCallDataPeriod: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCallDataPeriod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updatePkgPeriod: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePkgPeriod:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 148
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "companyUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "enableCompanyDetailUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableCompanyDetailUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 151
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "companyIconUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dotIconUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dotmatch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dotCommUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dotMediaUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dotEnable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contactUrl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->contactUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "zone: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->zone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showcc: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->showcc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blackuser: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->blackuser:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "needphone: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->needphone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updatePhoneLocPeroid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePhoneLocPeroid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "maxLocalHistory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxLocalHistory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 169
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "maxSingleCall: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxSingleCall:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 171
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encodeHistory: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodeHistory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "encodePhone: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodePhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "zipCompanyData: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 177
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->zipCompanyData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataDiff: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dataDiff:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "diskSpace: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->diskSpace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "threshold: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->threshold:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ccMode: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "autoCloseCallIn: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->autoCloseCallIn:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "partTextColor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->partTextColor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 186
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "partBgColor: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->partBgColor:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "partDuration: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->partDuration:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushenable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushenable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushpreembed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreembed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 192
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushpreurl: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreurl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushdelay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushdelay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pushinbox: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushinbox:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ccoverlay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccoverlay:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "chupload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->chupload:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dottips: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->dottips:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callcenterEnable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenterEnable:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callcenternumber: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenternumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "callcentertips: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcentertips:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "enableLog: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mne: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->mne:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "phonepre: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v4, "winks"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->winks:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "media"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->media:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "showcc"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->showcc:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v4, "blackuser"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->blackuser:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v4, "ccoverlay"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccoverlay:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v4, "pushUrl"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v4, "sms_number"

    .line 219
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_number:Ljava/lang/String;

    .line 218
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v4, "sms_prefix"

    .line 221
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_prefix:Ljava/lang/String;

    .line 220
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v4, "sms_type"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->sms_type:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v4, "updateCompanyDataPeriod"

    .line 225
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyDataPeriod:Ljava/lang/String;

    .line 224
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v4, "clearCompanyCachePeroid"

    .line 228
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->clearCompanyCachePeroid:Ljava/lang/String;

    .line 227
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v4, "uploadCompanyCallHistoryPeriod"

    .line 232
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->uploadCompanyCallHistoryPeriod:Ljava/lang/String;

    .line 230
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v4, "updateCompanyBackgroundPeroid"

    .line 236
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCompanyBackgroundPeroid:Ljava/lang/String;

    .line 234
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v4, "updateCallDataPeriod"

    .line 238
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updateCallDataPeriod:Ljava/lang/String;

    .line 237
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v4, "updatePkgPeriod"

    .line 240
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePkgPeriod:Ljava/lang/String;

    .line 239
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v4, "companyUrl"

    .line 243
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyUrl:Ljava/lang/String;

    .line 242
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v4, "enableCompanyDetailUrl"

    .line 245
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableCompanyDetailUrl:Ljava/lang/String;

    .line 244
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v4, "companyIconUrl"

    .line 247
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->companyIconUrl:Ljava/lang/String;

    .line 246
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v4, "dotIconUrl"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotIconUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "dotmatch"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotmatch:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v4, "dotCommUrl"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotCommUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "dotMediaUrl"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotMediaUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "dotEnable"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dotEnable:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, "contactUrl"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->contactUrl:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "zone"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->zone:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v4, "needphone"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->needphone:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v4, "updatePhoneLocPeroid"

    .line 262
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->updatePhoneLocPeroid:Ljava/lang/String;

    .line 261
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v4, "maxLocalHistory"

    .line 264
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxLocalHistory:Ljava/lang/String;

    .line 263
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v4, "maxSingleCall"

    .line 266
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->maxSingleCall:Ljava/lang/String;

    .line 265
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v4, "encodeHistory"

    .line 268
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodeHistory:Ljava/lang/String;

    .line 267
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "encodePhone"

    .line 270
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->encodePhone:Ljava/lang/String;

    .line 269
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v4, "zipCompanyData"

    .line 272
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->zipCompanyData:Ljava/lang/String;

    .line 271
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v4, "dataDiff"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dataDiff:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v4, "diskSpace"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->diskSpace:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v4, "threshold"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->threshold:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v4, "ccMode"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->ccMode:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "autoCloseCallIn"

    .line 279
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->autoCloseCallIn:Ljava/lang/String;

    .line 278
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v4, "partTextColor"

    .line 281
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->partTextColor:Ljava/lang/String;

    .line 280
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v4, "partBgColor"

    .line 283
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->partBgColor:Ljava/lang/String;

    .line 282
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v4, "partDuration"

    .line 285
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->partDuration:Ljava/lang/String;

    .line 284
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "pushenable"

    .line 287
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushenable:Ljava/lang/String;

    .line 286
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v4, "pushpreembed"

    .line 289
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreembed:Ljava/lang/String;

    .line 288
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v4, "pushpreurl"

    .line 291
    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushpreurl:Ljava/lang/String;

    .line 290
    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v4, "pushdelay"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushdelay:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v4, "pushinbox"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->pushinbox:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v4, "chupload"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->chupload:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v4, "dottips"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->dottips:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v4, "callcenterEnable"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenterEnable:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v4, "callcenternumber"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcenternumber:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v4, "callcentertips"

    sget-object v5, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v5, v5, Lcom/isw/android/corp/bean/ServiceConfigBean;->callcentertips:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v4, "enableLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-boolean v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->enableLog:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v4, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v4, v4, Lcom/isw/android/corp/bean/ServiceConfigBean;->mne:Ljava/lang/String;

    invoke-static {v4}, Lcom/isw/android/corp/util/WinksTools;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 301
    const-string v4, "mne"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->mne:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_4
    const-string v4, "phonepre"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/isw/android/corp/message/MiniServiceConfig;->currentConfig:Lcom/isw/android/corp/bean/ServiceConfigBean;

    iget-object v6, v6, Lcom/isw/android/corp/bean/ServiceConfigBean;->phonepre:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LocalConfig;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v4, "lastwifitime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    .line 307
    const-string v4, "timepermonth"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/isw/android/corp/util/LocalConfig;->putLong(Ljava/lang/String;J)V

    .line 311
    invoke-static {}, Lcom/isw/android/corp/util/WinksApplication;->actionAfterServiceConfigAvailable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 315
    .end local v2           #serviceConfig:Ljava/lang/String;
    .end local v3           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 316
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ex: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 322
    sput v8, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    .line 323
    sput-boolean v7, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    goto/16 :goto_0

    .line 318
    .end local v1           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 319
    .local v0, err:Ljava/lang/Error;
    :try_start_3
    const-string v4, "MiniServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "err: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Error;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/isw/android/corp/util/LOG;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 322
    sput v8, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    .line 323
    sput-boolean v7, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    goto/16 :goto_0

    .line 321
    .end local v0           #err:Ljava/lang/Error;
    :catchall_0
    move-exception v4

    .line 322
    sput v8, Lcom/isw/android/corp/message/MiniServiceConfig;->reconnectTimes:I

    .line 323
    sput-boolean v7, Lcom/isw/android/corp/message/MiniServiceConfig;->bConnecting:Z

    .line 324
    throw v4
.end method

.method public static update(Z)V
    .locals 1
    .parameter "bNotify"

    .prologue
    .line 62
    new-instance v0, Lcom/isw/android/corp/message/MiniServiceConfig$1;

    invoke-direct {v0, p0}, Lcom/isw/android/corp/message/MiniServiceConfig$1;-><init>(Z)V

    .line 67
    invoke-virtual {v0}, Lcom/isw/android/corp/message/MiniServiceConfig$1;->start()V

    .line 69
    return-void
.end method
