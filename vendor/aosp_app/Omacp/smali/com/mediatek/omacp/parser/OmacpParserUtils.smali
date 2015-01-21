.class public Lcom/mediatek/omacp/parser/OmacpParserUtils;
.super Ljava/lang/Object;
.source "OmacpParserUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "Omacp/OmacpParserUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleApParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 5
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "application"

    .prologue
    .line 371
    if-nez p3, :cond_1

    .line 372
    const-string v3, "Omacp/OmacpParserUtils"

    const-string v4, "OmacpParserUtils handleApParameters application is null."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    .line 377
    .local v0, appAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;>;"
    iget-object v1, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppauth:Ljava/util/ArrayList;

    .line 378
    .local v1, appAuthList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;>;"
    iget-object v2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mResource:Ljava/util/ArrayList;

    .line 380
    .local v2, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Resource;>;"
    const-string v3, "APPLICATION"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 381
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    goto :goto_0

    .line 382
    :cond_2
    const-string v3, "APPADDR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 383
    invoke-static {p1, p2, v0, p3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleAppAddrParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    goto :goto_0

    .line 384
    :cond_3
    const-string v3, "PORT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 385
    invoke-static {p1, p2, v0}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleApPortParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 386
    :cond_4
    const-string v3, "APPAUTH"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 387
    invoke-static {p1, p2, v1}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleAppAuthParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 388
    :cond_5
    const-string v3, "RESOURCE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-static {p1, p2, v2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleResourceParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static handleApPortParam(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 480
    .local p2, appAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 481
    .local v0, addrSize:I
    if-nez v0, :cond_1

    .line 482
    const-string v2, "Omacp/OmacpParserUtils"

    const-string v3, "OmacpParserUtils handleApParameters APPADDR size is 0."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 486
    .local v1, size:I
    if-nez v1, :cond_2

    .line 487
    const-string v2, "Omacp/OmacpParserUtils"

    const-string v3, "OmacpParserUtils handleApParameters PORT size is 0."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_2
    const-string v2, "PORTNBR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 492
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iput-object p1, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    goto :goto_0

    .line 493
    :cond_3
    const-string v2, "SERVICE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mPort:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v2, v2, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static handleAppAddrParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .parameter "application"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;",
            ">;",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 465
    .local p2, appAddrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 466
    .local v0, size:I
    if-nez v0, :cond_1

    .line 467
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handleApParameters APPADDR size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    const-string v1, "ADDR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 471
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddr:Ljava/lang/String;

    goto :goto_0

    .line 472
    :cond_2
    const-string v1, "ADDRTYPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppaddr:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 474
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAddr;->mAddrtype:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handleAppAuthParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p2, appAuthList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 501
    .local v0, size:I
    if-nez v0, :cond_1

    .line 502
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handleApParameters APPAUTH size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    const-string v1, "AAUTHLEVEL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 507
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthlevel:Ljava/lang/String;

    goto :goto_0

    .line 508
    :cond_2
    const-string v1, "AAUTHTYPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 510
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthtype:Ljava/lang/String;

    goto :goto_0

    .line 511
    :cond_3
    const-string v1, "AAUTHNAME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 513
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthname:Ljava/lang/String;

    goto :goto_0

    .line 514
    :cond_4
    const-string v1, "AAUTHSECRET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 516
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthsecret:Ljava/lang/String;

    goto :goto_0

    .line 517
    :cond_5
    const-string v1, "AAUTHDATA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 519
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$AppAuth;->mAauthdata:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static handleApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 1
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "application"

    .prologue
    .line 395
    const-string v0, "APPID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 396
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    .line 408
    :goto_0
    return-void

    .line 397
    :cond_0
    const-string v0, "PROVIDER-ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 398
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mProviderId:Ljava/lang/String;

    goto :goto_0

    .line 399
    :cond_1
    const-string v0, "NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 400
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mName:Ljava/lang/String;

    goto :goto_0

    .line 401
    :cond_2
    const-string v0, "AACCEPT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAaccept:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 402
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAaccept:Ljava/lang/String;

    goto :goto_0

    .line 403
    :cond_3
    const-string v0, "APROTOCOL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAprotocol:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 404
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAprotocol:Ljava/lang/String;

    goto :goto_0

    .line 406
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleOtherApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    goto :goto_0
.end method

.method private static handleLowUseApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 1
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "application"

    .prologue
    .line 448
    const-string v0, "MAX-BANDWIDTH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxBandwidth:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 449
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxBandwidth:Ljava/lang/String;

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    const-string v0, "NETINFO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mNetinfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_2
    const-string v0, "MIN-UDP-PORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMinUdpPort:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 453
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMinUdpPort:Ljava/lang/String;

    goto :goto_0

    .line 454
    :cond_3
    const-string v0, "MAX-UDP-PORT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxUdpPort:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 455
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMaxUdpPort:Ljava/lang/String;

    goto :goto_0

    .line 456
    :cond_4
    const-string v0, "SERVICES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mServices:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 457
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mServices:Ljava/lang/String;

    goto :goto_0

    .line 458
    :cond_5
    const-string v0, "CIDPREFIX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mCidprefix:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 459
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mCidprefix:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handleLowUseNapDefParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "nap"

    .prologue
    .line 303
    const-string v0, "TRANSFER-DELAY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTransferdelay:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 304
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTransferdelay:Ljava/lang/String;

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const-string v0, "GUARANTEED-BITRATE-UPLINK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mGuaranteedbitrateuplink:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 307
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mGuaranteedbitrateuplink:Ljava/lang/String;

    goto :goto_0

    .line 308
    :cond_2
    const-string v0, "GUARANTEED-BITRATE-DNLINK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mGuaranteedbitratednlink:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 310
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mGuaranteedbitratednlink:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_3
    const-string v0, "MAX-NUM-RETRY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxnumretry:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 312
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxnumretry:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_4
    const-string v0, "FIRST-RETRY-TIMEOUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mFirstretrytimeout:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 315
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mFirstretrytimeout:Ljava/lang/String;

    goto :goto_0

    .line 316
    :cond_5
    const-string v0, "REREG-THRESHOLD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mReregthreshold:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 317
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mReregthreshold:Ljava/lang/String;

    goto :goto_0

    .line 318
    :cond_6
    const-string v0, "T-BIT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTbit:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 319
    const-string v0, "1"

    iput-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTbit:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handleLowUsePxLogicalParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ProxyClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "px"

    .prologue
    .line 102
    const-string v0, "MASTER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mMaster:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    const-string v0, "1"

    iput-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mMaster:Ljava/lang/String;

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const-string v0, "STARTPAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mStartpage:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 105
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mStartpage:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_2
    const-string v0, "BASAUTH-ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mBasauthId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 107
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mBasauthId:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_3
    const-string v0, "BASAUTH-PW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mBasauthPw:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 109
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mBasauthPw:Ljava/lang/String;

    goto :goto_0

    .line 110
    :cond_4
    const-string v0, "WSP-VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mWspVersion:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 111
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mWspVersion:Ljava/lang/String;

    goto :goto_0

    .line 112
    :cond_5
    const-string v0, "PUSHENABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPushenabled:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 113
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPushenabled:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_6
    const-string v0, "PULLENBALED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPullenbaled:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 115
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPullenbaled:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handleLowUsePxPhysicalParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p2, physicalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;>;"
    const-string v0, "PXADDR-FQDN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddrFqdn:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 199
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddrFqdn:Ljava/lang/String;

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    const-string v0, "WSP-VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mWspVersion:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 202
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mWspVersion:Ljava/lang/String;

    goto :goto_0

    .line 203
    :cond_2
    const-string v0, "PUSHENABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPushenabled:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 205
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPushenabled:Ljava/lang/String;

    goto :goto_0

    .line 206
    :cond_3
    const-string v0, "PULLENABLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPullenabled:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 208
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPullenabled:Ljava/lang/String;

    goto :goto_0

    .line 209
    :cond_4
    const-string v0, "TO-NAPID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mToNapid:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static handleNapAuthInfoParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, napAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 326
    .local v0, size:I
    if-nez v0, :cond_1

    .line 327
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handleNapParameters NAPAUTHINFO size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v1, "AUTHTYPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthtype:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 332
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthtype:Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_2
    const-string v1, "AUTHNAME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthname:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 335
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthname:Ljava/lang/String;

    goto :goto_0

    .line 336
    :cond_3
    const-string v1, "AUTHSECRET"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthsecret:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 338
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthsecret:Ljava/lang/String;

    goto :goto_0

    .line 339
    :cond_4
    const-string v1, "AUTH_ENTITY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 340
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mAuthentity:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_5
    const-string v1, "SPI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mSpi:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 342
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;->mSpi:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private static handleNapDefAddrParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "nap"

    .prologue
    .line 249
    const-string v0, "NAP-ADDRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddress:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 250
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddress:Ljava/lang/String;

    .line 264
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v0, "NAP-ADDRTYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddrtype:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 252
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapaddrtype:Ljava/lang/String;

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, "DNS-ADDR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDnsaddr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_2
    const-string v0, "CALLTYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mCalltype:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 256
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mCalltype:Ljava/lang/String;

    goto :goto_0

    .line 257
    :cond_3
    const-string v0, "LOCAL_ADDR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLocaladdr:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 258
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLocaladdr:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_4
    const-string v0, "LOCAL_ADDRTYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLocaladdrtype:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 260
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLocaladdrtype:Ljava/lang/String;

    goto :goto_0

    .line 262
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleNapDefLinkParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V

    goto :goto_0
.end method

.method private static handleNapDefLinkParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "nap"

    .prologue
    .line 267
    const-string v0, "LINKSPEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLinkspeed:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 268
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLinkspeed:Ljava/lang/String;

    .line 282
    :goto_0
    return-void

    .line 269
    :cond_0
    const-string v0, "DNLINKSPEED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDnlinkspeed:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 270
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDnlinkspeed:Ljava/lang/String;

    goto :goto_0

    .line 271
    :cond_1
    const-string v0, "LINGER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLinger:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 272
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mLinger:Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_2
    const-string v0, "DELIVERY-ERR-SDU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDeliveryerrsdu:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 274
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDeliveryerrsdu:Ljava/lang/String;

    goto :goto_0

    .line 275
    :cond_3
    const-string v0, "DELIVERY-ORDER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDeliveryorder:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 276
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mDeliveryorder:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_4
    const-string v0, "TRAFFIC-CLASS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTrafficclass:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 278
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTrafficclass:Ljava/lang/String;

    goto :goto_0

    .line 280
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleNapDefMaxParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V

    goto :goto_0
.end method

.method private static handleNapDefMaxParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "nap"

    .prologue
    .line 285
    const-string v0, "MAX-SDU-SIZE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxsdusize:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 286
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxsdusize:Ljava/lang/String;

    .line 300
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v0, "MAX-BITRATE-UPLINK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxbitrateuplink:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 288
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxbitrateuplink:Ljava/lang/String;

    goto :goto_0

    .line 289
    :cond_1
    const-string v0, "MAX-BITRATE-DNLINK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxbitratednlink:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 290
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mMaxbitratednlink:Ljava/lang/String;

    goto :goto_0

    .line 291
    :cond_2
    const-string v0, "RESIDUAL-BER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mResidualber:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 292
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mResidualber:Ljava/lang/String;

    goto :goto_0

    .line 293
    :cond_3
    const-string v0, "SDU-ERROR-RATIO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mSduerrorratio:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 294
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mSduerrorratio:Ljava/lang/String;

    goto :goto_0

    .line 295
    :cond_4
    const-string v0, "TRAFFIC-HANDL-PROI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTraffichandlproi:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 296
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mTraffichandlproi:Ljava/lang/String;

    goto :goto_0

    .line 298
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleLowUseNapDefParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V

    goto :goto_0
.end method

.method private static handleNapDefParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "nap"

    .prologue
    .line 235
    const-string v0, "NAPID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 236
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mNapid:Ljava/lang/String;

    .line 246
    :goto_0
    return-void

    .line 237
    :cond_0
    const-string v0, "BEARER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mBearer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 239
    :cond_1
    const-string v0, "NAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 240
    iput-object p1, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mName:Ljava/lang/String;

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "INTERNET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mInternet:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 242
    const-string v0, "1"

    iput-object v0, p2, Lcom/mediatek/omacp/parser/NapdefClass;->mInternet:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleNapDefAddrParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V

    goto :goto_0
.end method

.method public static handleNapParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V
    .locals 4
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "nap"

    .prologue
    .line 217
    if-nez p3, :cond_1

    .line 218
    const-string v2, "Omacp/OmacpParserUtils"

    const-string v3, "OmacpParserUtils handleNapParameters nap is null."

    invoke-static {v2, v3}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p3, Lcom/mediatek/omacp/parser/NapdefClass;->mNapauthinfo:Ljava/util/ArrayList;

    .line 223
    .local v0, napAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass$NapAuthInfo;>;"
    iget-object v1, p3, Lcom/mediatek/omacp/parser/NapdefClass;->mValidity:Ljava/util/ArrayList;

    .line 225
    .local v1, validityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass$Validity;>;"
    const-string v2, "NAPDEF"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    invoke-static {p1, p2, p3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleNapDefParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/NapdefClass;)V

    goto :goto_0

    .line 227
    :cond_2
    const-string v2, "NAPAUTHINFO"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 228
    invoke-static {p1, p2, v0}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleNapAuthInfoParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 229
    :cond_3
    const-string v2, "VALIDITY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    invoke-static {p1, p2, v1}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleValidityParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static handleOtherAddrApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 1
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "application"

    .prologue
    .line 431
    const-string v0, "PC-ADDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 432
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mPcAddr:Ljava/lang/String;

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    const-string v0, "Ma"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 434
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMa:Ljava/lang/String;

    goto :goto_0

    .line 435
    :cond_1
    const-string v0, "INIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mInit:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 436
    const-string v0, "1"

    iput-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mInit:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_2
    const-string v0, "FROM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mFrom:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 438
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mFrom:Ljava/lang/String;

    goto :goto_0

    .line 439
    :cond_3
    const-string v0, "RT-ADDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mRtAddr:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 440
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mRtAddr:Ljava/lang/String;

    goto :goto_0

    .line 442
    :cond_4
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleLowUseApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    goto :goto_0
.end method

.method private static handleOtherApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V
    .locals 1
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "application"

    .prologue
    .line 412
    const-string v0, "TO-PROXY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mToProxy:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :goto_0
    return-void

    .line 414
    :cond_0
    const-string v0, "TO-NAPID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mToNapid:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    :cond_1
    const-string v0, "ADDR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "APPLICATION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAddr:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    :cond_2
    const-string v0, "CM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 419
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mCm:Ljava/lang/String;

    goto :goto_0

    .line 420
    :cond_3
    const-string v0, "RM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 421
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mRm:Ljava/lang/String;

    goto :goto_0

    .line 422
    :cond_4
    const-string v0, "MS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    if-nez v0, :cond_5

    .line 423
    iput-object p2, p3, Lcom/mediatek/omacp/parser/ApplicationClass;->mMs:Ljava/lang/String;

    goto :goto_0

    .line 425
    :cond_5
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleOtherAddrApplicationParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ApplicationClass;)V

    goto :goto_0
.end method

.method private static handleOtherResourceParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 2
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass$Resource;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Resource;>;"
    const-string v0, "AAUTHSECRET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 552
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthsecret:Ljava/lang/String;

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    const-string v0, "AAUTHDATA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthdata:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 555
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthdata:Ljava/lang/String;

    goto :goto_0

    .line 556
    :cond_2
    const-string v0, "STARTPAGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mStartpage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 559
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    const-string v1, "1"

    iput-object v1, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mStartpage:Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_3
    const-string v0, "CLIURI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mCliuri:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 563
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mCliuri:Ljava/lang/String;

    goto :goto_0

    .line 564
    :cond_4
    const-string v0, "SYNCTYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mSynctype:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 567
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p0, v0, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mSynctype:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handlePortParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/ProxyClass;)V
    .locals 5
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "listType"
    .parameter
    .parameter "px"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass$Port;",
            ">;",
            "Lcom/mediatek/omacp/parser/ProxyClass;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p3, portList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Port;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 141
    .local v2, size:I
    const-string v3, "PXLOGICAL"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    if-nez v2, :cond_1

    .line 143
    const-string v3, "Omacp/OmacpParserUtils"

    const-string v4, "OmacpParserUtils handlePxParameters PORT size is 0."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const-string v3, "PORTNBR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 147
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iput-object p1, v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_2
    const-string v3, "SERVICE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 151
    :cond_3
    const-string v3, "PXPHYSICAL"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 153
    .local v1, pxPhysicalSize:I
    if-nez v1, :cond_4

    .line 154
    const-string v3, "Omacp/OmacpParserUtils"

    const-string v4, "OmacpParserUtils handlePxParameters PXPHYSICAL size is 0."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_4
    iget-object v3, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 158
    .local v0, portSize:I
    if-nez v0, :cond_5

    .line 159
    const-string v3, "Omacp/OmacpParserUtils"

    const-string v4, "OmacpParserUtils handlePxParameters PXPHYSICAL PORT size is 0."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_5
    const-string v3, "PORTNBR"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 164
    iget-object v3, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iput-object p1, v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mPortnbr:Ljava/lang/String;

    goto/16 :goto_0

    .line 165
    :cond_6
    const-string v3, "SERVICE"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 166
    iget-object v3, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPort:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ApplicationClass$Port;->mService:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private static handlePxAuthInfoParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, pxAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 122
    :cond_0
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handlePxParameters PXAUTHINFO size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 126
    .local v0, size:I
    const-string v1, "PXAUTH-TYPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthType:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 128
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthType:Ljava/lang/String;

    goto :goto_0

    .line 129
    :cond_3
    const-string v1, "PXAUTH-ID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 131
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthId:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_4
    const-string v1, "PXAUTH-PW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthPw:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 134
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;->mPxauthPw:Ljava/lang/String;

    goto :goto_0
.end method

.method private static handlePxLogicalParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ProxyClass;)V
    .locals 1
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "px"

    .prologue
    .line 82
    const-string v0, "PROXY-ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyId:Ljava/lang/String;

    .line 99
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v0, "PROXY-PW"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyPw:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 85
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyPw:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "PPGAUTH-TYPE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPpgauthType:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 87
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mPpgauthType:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_2
    const-string v0, "PROXY-PROVIDER-ID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyProviderId:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 89
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mProxyProviderId:Ljava/lang/String;

    goto :goto_0

    .line 90
    :cond_3
    const-string v0, "NAME"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mName:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 91
    iput-object p1, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mName:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_4
    const-string v0, "DOMAIN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mDomain:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    :cond_5
    const-string v0, "TRUST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mTrust:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 95
    const-string v0, "1"

    iput-object v0, p2, Lcom/mediatek/omacp/parser/ProxyClass;->mTrust:Ljava/lang/String;

    goto :goto_0

    .line 97
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleLowUsePxLogicalParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ProxyClass;)V

    goto :goto_0
.end method

.method public static handlePxParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ProxyClass;)V
    .locals 5
    .parameter "listType"
    .parameter "type"
    .parameter "parmName"
    .parameter "parmValue"
    .parameter "px"

    .prologue
    .line 61
    if-nez p4, :cond_1

    .line 62
    const-string v3, "Omacp/OmacpParserUtils"

    const-string v4, "OmacpParserUtils handlePxParameters px is null."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxauthinfo:Ljava/util/ArrayList;

    .line 67
    .local v2, pxAuthInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass$PxAuthInfo;>;"
    iget-object v1, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPort:Ljava/util/ArrayList;

    .line 68
    .local v1, portList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Port;>;"
    iget-object v0, p4, Lcom/mediatek/omacp/parser/ProxyClass;->mPxphysical:Ljava/util/ArrayList;

    .line 70
    .local v0, physicalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;>;"
    const-string v3, "PXLOGICAL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 71
    invoke-static {p2, p3, p4}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handlePxLogicalParams(Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/omacp/parser/ProxyClass;)V

    goto :goto_0

    .line 72
    :cond_2
    const-string v3, "PXAUTHINFO"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-static {p2, p3, v2}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handlePxAuthInfoParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v3, "PORT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 75
    invoke-static {p2, p3, p0, v1, p4}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handlePortParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/mediatek/omacp/parser/ProxyClass;)V

    goto :goto_0

    .line 76
    :cond_4
    const-string v3, "PXPHYSICAL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-static {p2, p3, v0}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handlePxPhysicalParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static handlePxPhysicalParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, physicalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    .local v0, size:I
    if-nez v0, :cond_0

    .line 176
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handlePxParameters PXPHYSICAL size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v1, "PHYSICAL-PROXY-ID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPhysicalProxyId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 181
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPhysicalProxyId:Ljava/lang/String;

    goto :goto_0

    .line 182
    :cond_1
    const-string v1, "DOMAIN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mDomain:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_2
    const-string v1, "PXADDR"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 186
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddr:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_3
    const-string v1, "PXADDRTYPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddrtype:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 189
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ProxyClass$PxPhysical;->mPxaddrtype:Ljava/lang/String;

    goto :goto_0

    .line 191
    :cond_4
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleLowUsePxPhysicalParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method private static handleResourceParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass$Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p2, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass$Resource;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 526
    .local v0, size:I
    if-nez v0, :cond_0

    .line 527
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handleApParameters RESOURCE size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :goto_0
    return-void

    .line 530
    :cond_0
    const-string v1, "URI"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 531
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mUri:Ljava/lang/String;

    goto :goto_0

    .line 532
    :cond_1
    const-string v1, "NAME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 533
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mName:Ljava/lang/String;

    goto :goto_0

    .line 534
    :cond_2
    const-string v1, "AACCEPT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAaccept:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 536
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAaccept:Ljava/lang/String;

    goto :goto_0

    .line 537
    :cond_3
    const-string v1, "AAUTHTYPE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthtype:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 539
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthtype:Ljava/lang/String;

    goto :goto_0

    .line 540
    :cond_4
    const-string v1, "AAUTHNAME"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 542
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/ApplicationClass$Resource;->mAauthname:Ljava/lang/String;

    goto/16 :goto_0

    .line 544
    :cond_5
    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/omacp/parser/OmacpParserUtils;->handleOtherResourceParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    goto/16 :goto_0
.end method

.method private static handleValidityParams(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "parmName"
    .parameter "parmValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/NapdefClass$Validity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, validityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/NapdefClass$Validity;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 349
    .local v0, size:I
    if-nez v0, :cond_1

    .line 350
    const-string v1, "Omacp/OmacpParserUtils"

    const-string v2, "OmacpParserUtils handleNapParameters VALIDITY size is 0."

    invoke-static {v1, v2}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    const-string v1, "COUNTRY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mCountry:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 354
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mCountry:Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_2
    const-string v1, "NETWORK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mNetwork:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 357
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mNetwork:Ljava/lang/String;

    goto :goto_0

    .line 358
    :cond_3
    const-string v1, "SID"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mSid:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 359
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mSid:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_4
    const-string v1, "SOC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mSoc:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 361
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mSoc:Ljava/lang/String;

    goto :goto_0

    .line 362
    :cond_5
    const-string v1, "VALIDUNTIL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iget-object v1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mValiduntil:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 364
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;

    iput-object p1, v1, Lcom/mediatek/omacp/parser/NapdefClass$Validity;->mValiduntil:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static removeInvalidApSettings(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/omacp/parser/ApplicationClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, apList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/omacp/parser/ApplicationClass;>;"
    if-nez p0, :cond_1

    .line 574
    const-string v3, "Omacp/OmacpParserUtils"

    const-string v4, "OmacpParserUtils removeDuplicateApSettings apList is null."

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const/4 p0, 0x0

    .line 600
    .local v1, i:I
    :cond_0
    return-object p0

    .line 579
    .end local v1           #i:I
    :cond_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 580
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v0, v3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    .line 581
    .local v0, appId:Ljava/lang/String;
    if-nez v0, :cond_3

    .line 582
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 579
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 586
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .local v2, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 587
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/omacp/parser/ApplicationClass;

    iget-object v3, v3, Lcom/mediatek/omacp/parser/ApplicationClass;->mAppid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 589
    const-string v3, "Omacp/OmacpParserUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OmacpParserUtils removeDuplicateApSettings duplicate application settings, will remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "element"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/omacp/utils/MTKlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 595
    add-int/lit8 v2, v2, -0x1

    .line 586
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
