.class public final Ltmsdkobf/he;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ph:Ltmsdkobf/gz;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "str"
    .parameter "strs"

    .prologue
    .line 526
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 537
    .local v1, type:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 541
    :cond_1
    const/4 v2, 0x3

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.provider.Telephony.SMS_RECEIVED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.provider.Telephony.SMS_RECEIVED2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "android.provider.Telephony.GSM_SMS_RECEIVED"

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Ltmsdkobf/he;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 542
    new-instance v2, Ltmsdkobf/hh;

    invoke-direct {v2, p1}, Ltmsdkobf/hh;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 534
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #type:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 543
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #type:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 544
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;

    goto :goto_0

    .line 545
    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "android.provider.Telephony.WAP_PUSH_GSM_RECEIVED"

    aput-object v4, v2, v3

    invoke-direct {p0, v0, v2}, Ltmsdkobf/he;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 547
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "application/vnd.wap.sic"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "application/vnd.wap.slc"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "application/vnd.wap.coc"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltmsdkobf/he;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 548
    new-instance v2, Ltmsdkobf/hj;

    invoke-direct {v2, p1}, Ltmsdkobf/hj;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;

    goto :goto_0

    .line 549
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "application/vnd.wap.mms-message"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Ltmsdkobf/he;->b(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 550
    new-instance v2, Ltmsdkobf/hd;

    invoke-direct {v2, p1}, Ltmsdkobf/hd;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;

    goto :goto_0

    .line 554
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized ca()Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 2

    .prologue
    .line 569
    monitor-enter p0

    const/4 v0, 0x0

    .line 571
    .local v0, entity:Ltmsdk/common/module/aresengine/SmsEntity;
    :try_start_0
    iget-object v1, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;

    if-eqz v1, :cond_0

    .line 572
    iget-object v1, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;

    invoke-interface {v1}, Ltmsdkobf/gz;->ca()Ltmsdk/common/module/aresengine/SmsEntity;

    move-result-object v0

    .line 573
    const/4 v1, 0x0

    iput-object v1, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    monitor-exit p0

    return-object v0

    .line 569
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cc()Z
    .locals 1

    .prologue
    .line 562
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ltmsdkobf/he;->ph:Ltmsdkobf/gz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
