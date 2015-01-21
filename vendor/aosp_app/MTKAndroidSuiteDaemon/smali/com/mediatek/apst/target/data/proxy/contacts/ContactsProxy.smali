.class public final Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
.super Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;
.source "ContactsProxy.java"


# static fields
.field private static sInstance:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;


# instance fields
.field private final mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;-><init>(Landroid/content/Context;)V

    .line 128
    const-string v0, "ContactsProxy"

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setProxyName(Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;-><init>(Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .line 130
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    .locals 2
    .parameter "context"

    .prologue
    .line 138
    const-class v1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    .line 143
    :goto_0
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 141
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->sInstance:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;

    invoke-virtual {v0, p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->setContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getRealSlotId(I)I
    .locals 3
    .parameter "sourceLocation"

    .prologue
    .line 255
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-le p0, v0, :cond_1

    .line 256
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for SIM."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    const/4 v0, -0x1

    .line 261
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v0, p0, -0x1

    goto :goto_0
.end method

.method public static getSimUri(I)Landroid/net/Uri;
    .locals 4
    .parameter "sourceLocation"

    .prologue
    .line 175
    invoke-static {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimUsimType(I)Z

    move-result v0

    .line 176
    .local v0, isUsim:Z
    packed-switch p0, :pswitch_data_0

    .line 198
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Slot id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    const-string v1, ""

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    .line 178
    :pswitch_0
    if-eqz v0, :cond_0

    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIMURI:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 182
    :pswitch_1
    if-eqz v0, :cond_1

    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM1URI:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM1:Landroid/net/Uri;

    goto :goto_0

    .line 186
    :pswitch_2
    if-eqz v0, :cond_2

    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM2URI:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM2:Landroid/net/Uri;

    goto :goto_0

    .line 190
    :pswitch_3
    if-eqz v0, :cond_3

    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM3URI:Landroid/net/Uri;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM3:Landroid/net/Uri;

    goto :goto_0

    .line 194
    :pswitch_4
    if-eqz v0, :cond_4

    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->ICCUSIM4URI:Landroid/net/Uri;

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/mediatek/apst/target/data/provider/contacts/SimContactsContent;->CONTENT_URI_SIM4:Landroid/net/Uri;

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getSlotId(I)I
    .locals 3
    .parameter "sourceLocation"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 226
    packed-switch p0, :pswitch_data_0

    .line 243
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source location "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for SIM."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    const/16 v0, -0xff

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 231
    goto :goto_0

    .line 234
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 237
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 240
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private insertGroupInUSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "accountType"
    .parameter "accountName"
    .parameter "groupTitle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3587
    if-nez p3, :cond_0

    .line 3588
    const-string p3, ""

    .line 3590
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 3624
    :cond_1
    :goto_0
    return v2

    .line 3594
    :cond_2
    :try_start_0
    const-string v4, "USIM0"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3595
    const/4 v4, 0x0

    invoke-static {v4, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3596
    .local v1, idInUSIM:I
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account name is USIM0Group id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    move v2, v3

    .line 3618
    goto :goto_0

    .line 3599
    .end local v1           #idInUSIM:I
    :cond_3
    const-string v4, "USIM1"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3600
    const/4 v4, 0x1

    invoke-static {v4, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3601
    .restart local v1       #idInUSIM:I
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account name is USIM1Group id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3619
    .end local v1           #idInUSIM:I
    :catch_0
    move-exception v0

    .line 3620
    .local v0, e:Landroid/os/RemoteException;
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Catch RemoteException!!"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3604
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    const-string v4, "USIM2"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3605
    const/4 v4, 0x2

    invoke-static {v4, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3606
    .restart local v1       #idInUSIM:I
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account name is USIM2Group id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3622
    .end local v1           #idInUSIM:I
    :catch_1
    move-exception v0

    .line 3623
    .local v0, e:Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Catch USIMGroupException!!"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3609
    .end local v0           #e:Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
    :cond_5
    :try_start_2
    const-string v4, "USIM3"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3610
    const/4 v4, 0x3

    invoke-static {v4, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3611
    .restart local v1       #idInUSIM:I
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Account name is USIM3Group id is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3615
    .end local v1           #idInUSIM:I
    :cond_6
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Account name is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter
    .parameter "consumer"
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, requiredMimeTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 3442
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3444
    return-void
.end method

.method public asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 12
    .parameter
    .parameter "consumer"
    .parameter "buffer"
    .parameter "idFrom"
    .parameter "idTo"
    .parameter "contactIdFrom"
    .parameter "contactIdTo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3271
    .local p1, requiredMimeTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 3273
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 3275
    .local v3, selection:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 3277
    .local v11, strBuf:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 3278
    const/16 v0, 0x28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3279
    const/4 v8, 0x0

    .line 3280
    .local v8, mimeAppended:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 3281
    .local v9, mimeType:I
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 3306
    :pswitch_0
    const-string v0, "mimetype=\'vnd.android.cursor.item/email_v2\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3310
    const/4 v8, 0x1

    .line 3311
    goto :goto_0

    .line 3283
    :pswitch_1
    const-string v0, "mimetype=\'vnd.android.cursor.item/name\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3286
    const/4 v8, 0x1

    .line 3287
    goto :goto_0

    .line 3290
    :pswitch_2
    const-string v0, "mimetype=\'vnd.android.cursor.item/phone_v2\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3294
    const/4 v8, 0x1

    .line 3295
    goto :goto_0

    .line 3298
    :pswitch_3
    const-string v0, "mimetype=\'vnd.android.cursor.item/photo\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3302
    const/4 v8, 0x1

    .line 3303
    goto :goto_0

    .line 3314
    :pswitch_4
    const-string v0, "mimetype=\'vnd.android.cursor.item/im\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3316
    const/4 v8, 0x1

    .line 3317
    goto :goto_0

    .line 3320
    :pswitch_5
    const-string v0, "mimetype=\'vnd.android.cursor.item/postal-address_v2\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3324
    const/4 v8, 0x1

    .line 3325
    goto :goto_0

    .line 3328
    :pswitch_6
    const-string v0, "mimetype=\'vnd.android.cursor.item/organization\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3331
    const/4 v8, 0x1

    .line 3332
    goto :goto_0

    .line 3335
    :pswitch_7
    const-string v0, "mimetype=\'vnd.android.cursor.item/nickname\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3338
    const/4 v8, 0x1

    .line 3339
    goto :goto_0

    .line 3342
    :pswitch_8
    const-string v0, "mimetype=\'vnd.android.cursor.item/note\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3344
    const/4 v8, 0x1

    .line 3345
    goto :goto_0

    .line 3348
    :pswitch_9
    const-string v0, "mimetype=\'vnd.android.cursor.item/website\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3351
    const/4 v8, 0x1

    .line 3352
    goto :goto_0

    .line 3355
    :pswitch_a
    const-string v0, "mimetype=\'vnd.android.cursor.item/group_membership\' OR "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3358
    const/4 v8, 0x1

    .line 3359
    goto :goto_0

    .line 3365
    .end local v9           #mimeType:I
    :cond_0
    if-eqz v8, :cond_c

    .line 3367
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 3368
    const/16 v0, 0x29

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3375
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #mimeAppended:Z
    :cond_1
    :goto_1
    if-eqz p4, :cond_3

    .line 3376
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 3377
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3379
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3381
    :cond_3
    if-eqz p5, :cond_5

    .line 3382
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 3383
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3385
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3387
    :cond_5
    if-eqz p6, :cond_7

    .line 3388
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 3389
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3391
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3394
    :cond_7
    if-eqz p7, :cond_9

    .line 3395
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 3396
    const-string v0, " AND "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3398
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3401
    :cond_9
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 3402
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3406
    :cond_a
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "mimetype"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "data2"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "data3"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "data4"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "data5"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "data6"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "data7"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "data8"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "data9"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "data10"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "data15"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "sim_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "raw_contact_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3420
    new-instance v10, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;

    invoke-direct {v10, v6, p2, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 3422
    .local v10, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;
    invoke-virtual {v10}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3425
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3427
    const/4 v6, 0x0

    .line 3430
    :cond_b
    return-void

    .line 3371
    .end local v10           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v8       #mimeAppended:Z
    :cond_c
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 3425
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #mimeAppended:Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_d

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 3426
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3427
    const/4 v6, 0x0

    .line 3425
    :cond_d
    throw v0

    .line 3281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_a
    .end packed-switch
.end method

.method public asyncGetAllGroups(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 3028
    const/4 v6, 0x0

    .line 3032
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "deleted<>1"

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3040
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastGroupCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/FastGroupCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 3042
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastGroupCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3045
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3046
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3047
    const/4 v6, 0x0

    .line 3050
    :cond_0
    return-void

    .line 3045
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastGroupCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3046
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3047
    const/4 v6, 0x0

    .line 3045
    :cond_1
    throw v0
.end method

.method public asyncGetAllRawContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x0

    .line 3246
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllRawContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3247
    return-void
.end method

.method public asyncGetAllRawContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 10
    .parameter "consumer"
    .parameter "buffer"
    .parameter "idFrom"
    .parameter "idTo"

    .prologue
    .line 3131
    const/4 v6, 0x0

    .line 3133
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 3135
    .local v8, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 3136
    .local v9, strBuf:Ljava/lang/StringBuffer;
    if-eqz p3, :cond_0

    .line 3137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3141
    :cond_0
    if-eqz p4, :cond_1

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3144
    :cond_1
    const-string v0, "deleted<>1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3145
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3148
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "send_to_voicemail"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "indicate_phone_or_sim_contact"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "index_in_sim"

    aput-object v4, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3166
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 3168
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3171
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3173
    const/4 v6, 0x0

    .line 3176
    :cond_2
    return-void

    .line 3171
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3172
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3173
    const/4 v6, 0x0

    .line 3171
    :cond_3
    throw v0
.end method

.method public asyncGetAllRawContactsForBackup(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 10
    .parameter "consumer"
    .parameter "buffer"
    .parameter "idFrom"
    .parameter "idTo"

    .prologue
    .line 3191
    const/4 v6, 0x0

    .line 3193
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 3195
    .local v8, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 3196
    .local v9, strBuf:Ljava/lang/StringBuffer;
    if-eqz p3, :cond_0

    .line 3197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3201
    :cond_0
    if-eqz p4, :cond_1

    .line 3202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3204
    :cond_1
    const-string v0, "deleted<>1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3205
    const-string v0, " AND indicate_phone_or_sim_contact=-1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3207
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3210
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "send_to_voicemail"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "indicate_phone_or_sim_contact"

    aput-object v4, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3226
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 3228
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3231
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3233
    const/4 v6, 0x0

    .line 3236
    :cond_2
    return-void

    .line 3231
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3232
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3233
    const/4 v6, 0x0

    .line 3231
    :cond_3
    throw v0
.end method

.method public asyncGetAllSimContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    .line 3098
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllSimContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;I)V

    .line 3100
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllSimContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;I)V

    .line 3114
    return-void
.end method

.method public asyncGetAllSimContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;I)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"
    .parameter "sourceLocation"

    .prologue
    .line 3064
    const/4 v6, 0x0

    .line 3068
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3075
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;

    invoke-direct {v7, v6, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;I)V

    .line 3077
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3080
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3081
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3082
    const/4 v6, 0x0

    .line 3085
    :cond_0
    return-void

    .line 3080
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastSimContactsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3081
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3082
    const/4 v6, 0x0

    .line 3080
    :cond_1
    throw v0
.end method

.method public deleteAllContacts(Z)I
    .locals 5
    .parameter "permanently"

    .prologue
    .line 2036
    const/4 v0, 0x0

    .line 2038
    .local v0, deleteCount:I
    if-eqz p1, :cond_0

    .line 2039
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "caller_is_syncadapter"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2047
    .local v1, deleteUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    const-string v3, "indicate_phone_or_sim_contact = -1"

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2052
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteCount >>:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2053
    return v0

    .line 2045
    .end local v1           #deleteUri:Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #deleteUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public deleteAllGroups()I
    .locals 5

    .prologue
    .line 3955
    const/4 v0, 0x0

    .line 3967
    .local v0, deleteCount:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id > 5"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3972
    return v0
.end method

.method public deleteContact(JZILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "id"
    .parameter "permanently"
    .parameter "sourceLocation"
    .parameter "simName"
    .parameter "simNumber"

    .prologue
    .line 1631
    const/4 v0, 0x0

    .line 1635
    .local v0, deleteCount:I
    packed-switch p4, :pswitch_data_0

    .line 1665
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    aput-object p6, v4, v5

    const-string v5, "Invalid source location."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1667
    const/4 v4, 0x0

    .line 1683
    :goto_0
    return v4

    .line 1642
    :pswitch_0
    const/4 v3, 0x0

    .line 1644
    .local v3, simDeletionResult:I
    :try_start_0
    invoke-virtual {p0, p5, p6, p4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteSimContact(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1654
    :goto_1
    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 1656
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    aput-object p6, v4, v5

    const-string v5, "Failed to delete contact in SIM."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1659
    const/4 v4, 0x0

    goto :goto_0

    .line 1650
    :catch_0
    move-exception v2

    .line 1651
    .local v2, e:Ljava/lang/NullPointerException;
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    aput-object p5, v4, v5

    const/4 v5, 0x4

    aput-object p6, v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1670
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v3           #simDeletionResult:I
    :cond_0
    :pswitch_1
    if-eqz p3, :cond_1

    .line 1671
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "caller_is_syncadapter"

    const-string v6, "true"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1680
    .local v1, deleteUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v4, v0

    .line 1683
    goto/16 :goto_0

    .line 1677
    .end local v1           #deleteUri:Landroid/net/Uri;
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #deleteUri:Landroid/net/Uri;
    goto :goto_2

    .line 1635
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteContactData([J)[Z
    .locals 3
    .parameter "ids"

    .prologue
    .line 4137
    if-nez p1, :cond_0

    .line 4138
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "List is null."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4139
    const/4 v1, 0x0

    .line 4168
    :goto_0
    return-object v1

    .line 4142
    :cond_0
    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4143
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$18;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$18;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[J)V

    .line 4166
    .local v0, batchHelper:Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->run(I)V

    .line 4168
    invoke-virtual {v0}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getResults()[Z

    move-result-object v1

    goto :goto_0
.end method

.method public deleteContactData([JJLcom/mediatek/apst/util/entity/contacts/Group;[I)[Z
    .locals 13
    .parameter "ids"
    .parameter "groupId"
    .parameter "group"
    .parameter "simIndexes"

    .prologue
    .line 4186
    if-nez p1, :cond_0

    .line 4187
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const-string v11, "List is null."

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4188
    const/4 v10, 0x0

    .line 4253
    :goto_0
    return-object v10

    .line 4191
    :cond_0
    iget-object v10, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v10}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4192
    new-instance v3, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$19;

    iget-object v10, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-direct {v3, p0, v10, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$19;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[J)V

    .line 4215
    .local v3, batchHelper:Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
    array-length v10, p1

    invoke-virtual {v3, v10}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->run(I)V

    .line 4220
    if-eqz p4, :cond_1

    if-nez p5, :cond_2

    .line 4221
    :cond_1
    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getResults()[Z

    move-result-object v10

    goto :goto_0

    .line 4224
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v1

    .line 4225
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v0

    .line 4227
    .local v0, accountName:Ljava/lang/String;
    if-eqz v1, :cond_7

    const-string v10, "USIM Account"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 4230
    const/4 v7, -0x1

    .line 4233
    .local v7, simGroupId:I
    :try_start_0
    invoke-static {v0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSlotIdByAccountName(Ljava/lang/String;)I

    move-result v9

    .line 4234
    .local v9, slotId:I
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->hasExistGroup(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 4238
    .end local v9           #slotId:I
    :goto_1
    move-object/from16 v2, p5

    .local v2, arr$:[I
    array-length v6, v2

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v6, :cond_7

    aget v8, v2, v5

    .line 4239
    .local v8, simIndex:I
    const-string v10, "USIM0"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4240
    const/4 v10, 0x0

    invoke-static {v10, v8, v7}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroupMember(III)Z

    .line 4238
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 4235
    .end local v2           #arr$:[I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v8           #simIndex:I
    :catch_0
    move-exception v4

    .line 4236
    .local v4, e1:Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 4241
    .end local v4           #e1:Landroid/os/RemoteException;
    .restart local v2       #arr$:[I
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    .restart local v8       #simIndex:I
    :cond_3
    const-string v10, "USIM1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 4242
    const/4 v10, 0x1

    invoke-static {v10, v8, v7}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroupMember(III)Z

    goto :goto_3

    .line 4243
    :cond_4
    const-string v10, "USIM2"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4244
    const/4 v10, 0x2

    invoke-static {v10, v8, v7}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroupMember(III)Z

    goto :goto_3

    .line 4245
    :cond_5
    const-string v10, "USIM3"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 4246
    const/4 v10, 0x3

    invoke-static {v10, v8, v7}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroupMember(III)Z

    goto :goto_3

    .line 4248
    :cond_6
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Account name is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 4253
    .end local v2           #arr$:[I
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #simGroupId:I
    .end local v8           #simIndex:I
    :cond_7
    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getResults()[Z

    move-result-object v10

    goto/16 :goto_0
.end method

.method public deleteContactForBackup()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 2081
    const/4 v8, 0x0

    .line 2082
    .local v8, temp:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "indicate_phone_or_sim_contact = -1 AND deleted = 0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2088
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 2089
    .local v7, ids:[J
    if-eqz v6, :cond_1

    .line 2090
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v7, v0, [J

    .line 2091
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v7, v8

    .line 2096
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2098
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2101
    :cond_1
    invoke-virtual {p0, v7, v9}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnPhone([JZ)[Z

    .line 2103
    return v8
.end method

.method public deleteContacts([JZI[Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 3
    .parameter "ids"
    .parameter "permanently"
    .parameter "sourceLocation"
    .parameter "simNames"
    .parameter "simNumbers"

    .prologue
    .line 1703
    packed-switch p3, :pswitch_data_0

    .line 1714
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid source location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1717
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1709
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnSim([JZI[Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v0

    goto :goto_0

    .line 1712
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnPhone([JZ)[Z

    move-result-object v0

    goto :goto_0

    .line 1703
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteContacts([JZI[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 4
    .parameter "ids"
    .parameter "permanently"
    .parameter "sourceLocation"
    .parameter "simNames"
    .parameter "simNumbers"
    .parameter "emails"

    .prologue
    .line 1741
    packed-switch p3, :pswitch_data_0

    .line 1759
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid source location "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1762
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1748
    :pswitch_0
    invoke-static {p3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimUsimType(I)Z

    move-result v0

    .line 1749
    .local v0, isUSIM:Z
    if-eqz p6, :cond_0

    array-length v1, p6

    if-lez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1750
    invoke-virtual/range {p0 .. p6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnSim([JZI[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v1

    goto :goto_0

    .line 1753
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnSim([JZI[Ljava/lang/String;[Ljava/lang/String;)[Z

    move-result-object v1

    goto :goto_0

    .line 1757
    .end local v0           #isUSIM:Z
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnPhone([JZ)[Z

    move-result-object v1

    goto :goto_0

    .line 1741
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public deleteContactsSourcedOnPhone([JZ)[Z
    .locals 4
    .parameter "ids"
    .parameter "permanently"

    .prologue
    .line 1934
    if-nez p1, :cond_0

    .line 1935
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "List is null."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1936
    const/4 v1, 0x0

    .line 1965
    :goto_0
    return-object v1

    .line 1939
    :cond_0
    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1940
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$1;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[JZ)V

    .line 1963
    .local v0, batchHelper:Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->run(I)V

    .line 1965
    invoke-virtual {v0}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getResults()[Z

    move-result-object v1

    goto :goto_0
.end method

.method public deleteContactsSourcedOnSim([JZI[Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 14
    .parameter "ids"
    .parameter "permanently"
    .parameter "sourceLocation"
    .parameter "simNames"
    .parameter "simNumbers"

    .prologue
    .line 1783
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_2

    .line 1784
    :cond_0
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p4, v11, v12

    const/4 v12, 0x4

    aput-object p5, v11, v12

    const-string v12, "List is null."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1786
    const/4 v8, 0x0

    .line 1837
    :cond_1
    :goto_0
    return-object v8

    .line 1788
    :cond_2
    array-length v11, p1

    move-object/from16 v0, p4

    array-length v12, v0

    if-ne v11, v12, :cond_3

    array-length v11, p1

    move-object/from16 v0, p5

    array-length v12, v0

    if-eq v11, v12, :cond_4

    .line 1790
    :cond_3
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p4, v11, v12

    const/4 v12, 0x4

    aput-object p5, v11, v12

    const-string v12, "List size does not match each other."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1793
    const/4 v8, 0x0

    goto :goto_0

    .line 1795
    :cond_4
    array-length v11, p1

    if-gtz v11, :cond_5

    .line 1796
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p4, v11, v12

    const/4 v12, 0x4

    aput-object p5, v11, v12

    const-string v12, "List is empty."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1798
    const/4 v8, 0x0

    goto :goto_0

    .line 1801
    :cond_5
    array-length v11, p1

    new-array v8, v11, [Z

    .line 1802
    .local v8, results:[Z
    new-instance v9, Ljava/util/ArrayList;

    array-length v11, p1

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1803
    .local v9, simOKIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, p1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1806
    .local v10, simOKPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v11, p1

    if-ge v2, v11, :cond_7

    .line 1807
    aget-object v11, p4, v2

    aget-object v12, p5, v2

    move/from16 v0, p3

    invoke-virtual {p0, v11, v12, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteSimContact(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1812
    .local v1, count:I
    const/4 v11, 0x1

    if-lt v1, v11, :cond_6

    .line 1814
    aget-wide v11, p1, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1816
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1806
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1820
    .end local v1           #count:I
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1821
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [J

    .line 1822
    .local v6, phoneDeletionIds:[J
    const/4 v2, -0x1

    .line 1823
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1824
    .local v4, id:Ljava/lang/Long;
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v6, v2

    goto :goto_2

    .line 1827
    .end local v4           #id:Ljava/lang/Long;
    :cond_8
    move/from16 v0, p2

    invoke-virtual {p0, v6, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnPhone([JZ)[Z

    move-result-object v7

    .line 1829
    .local v7, phoneResults:[Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    array-length v11, v7

    if-ge v5, v11, :cond_1

    .line 1830
    aget-boolean v11, v7, v5

    if-eqz v11, :cond_9

    .line 1832
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 1829
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public deleteContactsSourcedOnSim([JZI[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Z
    .locals 14
    .parameter "ids"
    .parameter "permanently"
    .parameter "sourceLocation"
    .parameter "simNames"
    .parameter "simNumbers"
    .parameter "emails"

    .prologue
    .line 1861
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-nez p6, :cond_2

    .line 1863
    :cond_0
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p4, v11, v12

    const/4 v12, 0x4

    aput-object p5, v11, v12

    const/4 v12, 0x5

    aput-object p6, v11, v12

    const-string v12, "List is null."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1865
    const/4 v8, 0x0

    .line 1918
    :cond_1
    :goto_0
    return-object v8

    .line 1867
    :cond_2
    array-length v11, p1

    move-object/from16 v0, p4

    array-length v12, v0

    if-ne v11, v12, :cond_3

    array-length v11, p1

    move-object/from16 v0, p5

    array-length v12, v0

    if-ne v11, v12, :cond_3

    array-length v11, p1

    move-object/from16 v0, p6

    array-length v12, v0

    if-eq v11, v12, :cond_4

    .line 1870
    :cond_3
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p4, v11, v12

    const/4 v12, 0x4

    aput-object p5, v11, v12

    const/4 v12, 0x5

    aput-object p6, v11, v12

    const-string v12, "List size does not match each other."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1873
    const/4 v8, 0x0

    goto :goto_0

    .line 1875
    :cond_4
    array-length v11, p1

    if-gtz v11, :cond_5

    .line 1876
    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p1, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    aput-object p4, v11, v12

    const/4 v12, 0x4

    aput-object p5, v11, v12

    const/4 v12, 0x5

    aput-object p6, v11, v12

    const-string v12, "List is empty."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1878
    const/4 v8, 0x0

    goto :goto_0

    .line 1881
    :cond_5
    array-length v11, p1

    new-array v8, v11, [Z

    .line 1882
    .local v8, results:[Z
    new-instance v9, Ljava/util/ArrayList;

    array-length v11, p1

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1883
    .local v9, simOKIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v10, Ljava/util/ArrayList;

    array-length v11, p1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 1886
    .local v10, simOKPositions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v11, p1

    if-ge v2, v11, :cond_7

    .line 1887
    aget-object v11, p4, v2

    aget-object v12, p5, v2

    aget-object v13, p6, v2

    move/from16 v0, p3

    invoke-virtual {p0, v11, v12, v13, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 1893
    .local v1, count:I
    const/4 v11, 0x1

    if-lt v1, v11, :cond_6

    .line 1895
    aget-wide v11, p1, v2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1897
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1886
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1901
    .end local v1           #count:I
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 1902
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v6, v11, [J

    .line 1903
    .local v6, phoneDeletionIds:[J
    const/4 v2, -0x1

    .line 1904
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1905
    .local v4, id:Ljava/lang/Long;
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v6, v2

    goto :goto_2

    .line 1908
    .end local v4           #id:Ljava/lang/Long;
    :cond_8
    move/from16 v0, p2

    invoke-virtual {p0, v6, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContactsSourcedOnPhone([JZ)[Z

    move-result-object v7

    .line 1910
    .local v7, phoneResults:[Z
    const/4 v5, 0x0

    .local v5, j:I
    :goto_3
    array-length v11, v7

    if-ge v5, v11, :cond_1

    .line 1911
    aget-boolean v11, v7, v5

    if-eqz v11, :cond_9

    .line 1913
    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    aput-boolean v12, v8, v11

    .line 1910
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public deleteGroup(J)I
    .locals 5
    .parameter "id"

    .prologue
    .line 3775
    const/4 v0, 0x0

    .line 3776
    .local v0, deleteCount:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3783
    return v0
.end method

.method public deleteGroup(JLcom/mediatek/apst/util/entity/contacts/Group;)I
    .locals 6
    .parameter "id"
    .parameter "group"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3795
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM Account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3797
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3800
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3802
    .local v1, idInUSIM:I
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account name is USIM0Group id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3834
    .end local v1           #idInUSIM:I
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 3835
    .local v0, deleteCount:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3842
    return v0

    .line 3805
    .end local v0           #deleteCount:I
    :cond_1
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3808
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3810
    .restart local v1       #idInUSIM:I
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account name is USIM1Group id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 3813
    .end local v1           #idInUSIM:I
    :cond_2
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3816
    const/4 v2, 0x2

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3818
    .restart local v1       #idInUSIM:I
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account name is USIM2Group id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3821
    .end local v1           #idInUSIM:I
    :cond_3
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "USIM3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3824
    const/4 v2, 0x3

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->deleteUSIMGroup(ILjava/lang/String;)I

    move-result v1

    .line 3826
    .restart local v1       #idInUSIM:I
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account name is USIM3Group id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3830
    .end local v1           #idInUSIM:I
    :cond_4
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deleteGroup([J)[Z
    .locals 3
    .parameter "ids"

    .prologue
    .line 3854
    if-nez p1, :cond_0

    .line 3855
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "List is null."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3856
    const/4 v1, 0x0

    .line 3885
    :goto_0
    return-object v1

    .line 3859
    :cond_0
    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 3860
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$16;

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$16;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[J)V

    .line 3883
    .local v0, batchHelper:Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->run(I)V

    .line 3885
    invoke-virtual {v0}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getResults()[Z

    move-result-object v1

    goto :goto_0
.end method

.method public deleteGroup([JLjava/util/ArrayList;)[Z
    .locals 8
    .parameter "ids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;)[Z"
        }
    .end annotation

    .prologue
    .local p2, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    const/4 v7, 0x0

    .line 3899
    if-nez p1, :cond_0

    .line 3900
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const-string v5, "List is null."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3901
    const/4 v4, 0x0

    .line 3945
    :goto_0
    return-object v4

    .line 3904
    :cond_0
    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v4}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 3905
    new-instance v1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$17;

    iget-object v4, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-direct {v1, p0, v4, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$17;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[J)V

    .line 3928
    .local v1, batchHelper:Lcom/mediatek/android/content/DefaultDeleteBatchHelper;
    array-length v4, p1

    invoke-virtual {v1, v4}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->run(I)V

    .line 3932
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 3934
    .local v2, group:Lcom/mediatek/apst/util/entity/contacts/Group;
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v0

    .line 3935
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v4, "USIM Account"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3937
    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "group name is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->syncUSIMGroupDeleteDualSim(Ljava/lang/String;)[I

    goto :goto_1

    .line 3945
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    :cond_2
    invoke-virtual {v1}, Lcom/mediatek/android/content/DefaultDeleteBatchHelper;->getResults()[Z

    move-result-object v4

    goto :goto_0
.end method

.method public deleteSimContact(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .parameter "name"
    .parameter "deleteNumber"
    .parameter "sourceLocation"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 601
    move-object v0, p2

    .line 602
    .local v0, number:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 603
    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "Name and number should be specified but not null."

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    .line 631
    :cond_0
    :goto_0
    return v1

    .line 607
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 608
    .local v2, selection:Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tag=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    if-eqz v0, :cond_2

    .line 610
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANDnumber=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteSimCOntact:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    invoke-static {p3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 621
    .local v1, result:I
    if-gez v1, :cond_3

    .line 622
    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete SIM contact, result is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    .end local v1           #result:I
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeleteSimCOntact:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  number is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto :goto_1

    .line 624
    .restart local v1       #result:I
    :cond_3
    if-le v1, v8, :cond_0

    .line 626
    new-array v4, v10, [Ljava/lang/Object;

    aput-object p1, v4, v3

    aput-object v0, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    const-string v3, "Deleted several SIM contacts in one time, please check if it is normal."

    invoke-static {v4, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deleteSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 7
    .parameter "name"
    .parameter "deleteNumber"
    .parameter "email"
    .parameter "sourceLocation"

    .prologue
    .line 651
    move-object v0, p2

    .line 653
    .local v0, number:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 654
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Name and number should be specified but not null."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 656
    const/4 v1, 0x0

    .line 690
    :cond_0
    :goto_0
    return v1

    .line 659
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 660
    .local v2, selection:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tag=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    if-eqz v0, :cond_2

    .line 662
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDnumber=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 669
    :goto_1
    if-eqz p3, :cond_3

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANDemails=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeleteSimCOntact:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v3

    invoke-static {p4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 680
    .local v1, result:I
    if-gez v1, :cond_4

    .line 681
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete SIM contact, result is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 666
    .end local v1           #result:I
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeleteSimCOntact:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  number is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 673
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeleteSimCOntact:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  email is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 683
    .restart local v1       #result:I
    :cond_4
    const/4 v3, 0x1

    if-le v1, v3, :cond_0

    .line 685
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Deleted several SIM contacts in one time, please check if it is normal."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public deleteSimContacts([Ljava/lang/String;[Ljava/lang/String;I)[Z
    .locals 9
    .parameter "names"
    .parameter "numbers"
    .parameter "sourceLocation"

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 708
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 709
    :cond_0
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "List is null."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    :cond_1
    :goto_0
    return-object v2

    .line 713
    :cond_2
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    .line 714
    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    aput-object p2, v3, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const-string v4, "Size of name list does not match size of number list."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_3
    array-length v3, p1

    new-array v2, v3, [Z

    .line 720
    .local v2, results:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 721
    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {p0, v3, v4, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteSimContact(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 722
    .local v0, count:I
    if-lt v0, v5, :cond_4

    .line 723
    aput-boolean v5, v2, v1

    .line 720
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public fastDeleteContactsSourcedOnPhone([JZ)I
    .locals 8
    .parameter "ids"
    .parameter "permanently"

    .prologue
    const/4 v0, 0x0

    .line 1985
    if-nez p1, :cond_0

    .line 1986
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v0

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2024
    :goto_0
    return v0

    .line 1990
    :cond_0
    const/4 v0, 0x0

    .line 1991
    .local v0, deleteCount:I
    const/4 v3, 0x0

    .line 1992
    .local v3, selection:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2001
    .local v4, strBuf:Ljava/lang/StringBuffer;
    const-string v5, "_id IN("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2002
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 2003
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, p1, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2002
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2006
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2007
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2008
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2011
    if-eqz p2, :cond_2

    .line 2012
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "caller_is_syncadapter"

    const-string v7, "true"

    invoke-virtual {v5, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 2021
    .local v1, deleteUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v3, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2024
    goto :goto_0

    .line 2018
    .end local v1           #deleteUri:Landroid/net/Uri;
    :cond_2
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #deleteUri:Landroid/net/Uri;
    goto :goto_2
.end method

.method public fastImportDetailedContacts([BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 44
    .parameter "raw"
    .parameter "rawContactsConsumer"
    .parameter "contactDataConsumer"
    .parameter "outBuffer"

    .prologue
    .line 2121
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2122
    :cond_0
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    const-string v13, "Block consumer should not be null."

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2600
    :goto_0
    return-void

    .line 2127
    :cond_1
    if-nez p1, :cond_2

    .line 2128
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    const-string v13, "Raw data is null."

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2130
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2131
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto :goto_0

    .line 2135
    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 2141
    .local v31, inBuffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    .line 2151
    .local v26, count:I
    if-gez v26, :cond_3

    .line 2152
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid contacts count "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2155
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2156
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto :goto_0

    .line 2142
    .end local v26           #count:I
    :catch_0
    move-exception v28

    .line 2143
    .local v28, e:Ljava/nio/BufferUnderflowException;
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    const-string v13, "Can not get the contacts count in raw data"

    move-object/from16 v0, v28

    invoke-static {v12, v13, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2146
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2147
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2161
    .end local v28           #e:Ljava/nio/BufferUnderflowException;
    .restart local v26       #count:I
    :cond_3
    new-instance v5, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$2;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$2;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2183
    .local v5, contactDataInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v6, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$3;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$3;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2206
    .local v6, rawContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$4;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$4;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2228
    .local v7, simContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$5;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$5;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2250
    .local v8, sim1ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v9, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$6;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$6;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2272
    .local v9, sim2ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v10, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$7;

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$7;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2295
    .local v10, sim3ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v11, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$8;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    invoke-direct/range {v11 .. v16}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$8;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2317
    .local v11, sim4ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    const/16 v37, 0x0

    .line 2319
    .local v37, shouldExit:Z
    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 2320
    .local v24, contactsSimId:[I
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getMaxRawContactsIdByQuery()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    add-long v22, v12, v14

    .line 2322
    .local v22, beginId:J
    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v25, v0

    .line 2324
    .local v25, contactsSimIndex:[J
    const/16 v29, 0x0

    .local v29, i:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v26

    if-ge v0, v1, :cond_10

    .line 2326
    new-instance v33, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 2328
    .local v33, newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    const/16 v12, 0x51a

    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1, v12}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 2329
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "``````````````````newContact.getSourceLocation()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2331
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    .line 2332
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v12

    aput v12, v24, v29

    .line 2339
    :goto_2
    const/16 v40, 0x0

    .line 2340
    .local v40, simName:Ljava/lang/String;
    const/16 v41, 0x0

    .line 2341
    .local v41, simNumber:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_6

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 2344
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v40

    .line 2350
    :goto_3
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_7

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_7

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 2353
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v41

    .line 2354
    invoke-static/range {v41 .. v41}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 2359
    :goto_4
    new-instance v43, Lcom/mediatek/android/content/MeasuredContentValues;

    const/4 v12, 0x2

    move-object/from16 v0, v43

    invoke-direct {v0, v12}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 2360
    .local v43, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v12, "tag"

    move-object/from16 v0, v43

    move-object/from16 v1, v40

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2361
    const-string v12, "number"

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    .line 2376
    const-string v12, "source location -1"

    invoke-static {v12}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2432
    :goto_5
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getAllContactData()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 2433
    .local v27, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move/from16 v0, v29

    int-to-long v12, v0

    add-long v12, v12, v22

    move-object/from16 v0, v27

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 2434
    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v12}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->createMeasuredContentValues(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)Lcom/mediatek/android/content/MeasuredContentValues;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v12

    if-nez v12, :cond_e

    const/16 v37, 0x1

    .line 2436
    :goto_6
    if-eqz v37, :cond_4

    .line 2437
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting contact data, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2442
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2443
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2334
    .end local v27           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v40           #simName:Ljava/lang/String;
    .end local v41           #simNumber:Ljava/lang/String;
    .end local v43           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_5
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getRealSlotId(I)I

    move-result v12

    invoke-static {v12}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSimId()I

    move-result v12

    aput v12, v24, v29

    goto/16 :goto_2

    .line 2346
    .restart local v40       #simName:Ljava/lang/String;
    .restart local v41       #simNumber:Ljava/lang/String;
    :cond_6
    const-string v40, ""

    .line 2347
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "No SIM contact name"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2356
    :cond_7
    const-string v41, ""

    .line 2357
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "No SIM contact number"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2378
    .restart local v43       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_8
    const-wide/16 v38, 0x0

    .line 2379
    .local v38, simInsertionResult:J
    const-string v35, ""

    .line 2380
    .local v35, newSimName:Ljava/lang/String;
    const-string v36, ""

    .line 2381
    .local v36, newSimNumber:Ljava/lang/String;
    const-string v34, ""

    .line 2382
    .local v34, newSimEmail:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_9

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_9

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 2385
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v35

    .line 2390
    :goto_7
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_a

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 2393
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v36

    .line 2398
    :goto_8
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_b

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 2401
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v34

    .line 2406
    :goto_9
    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v42

    .line 2407
    .local v42, sourceLocation:I
    invoke-static/range {v42 .. v42}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimUsimType(I)Z

    move-result v32

    .line 2408
    .local v32, isUSIM:Z
    if-eqz v32, :cond_c

    .line 2409
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v34

    move/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v38

    .line 2416
    :goto_a
    const-wide/16 v12, 0x0

    cmp-long v12, v38, v12

    if-gez v12, :cond_d

    .line 2418
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v33, v12, v13

    const-string v13, "Failed to insert contact into SIM."

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2420
    const-wide/16 v12, -0x1

    move-object/from16 v0, v33

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    goto/16 :goto_0

    .line 2387
    .end local v32           #isUSIM:Z
    .end local v42           #sourceLocation:I
    :cond_9
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v35, v12, v13

    const-string v13, "No new SIM name"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 2395
    :cond_a
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v35, v12, v13

    const-string v13, "No new SIM number"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_8

    .line 2403
    :cond_b
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v35, v12, v13

    const-string v13, "No new SIM email"

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 2412
    .restart local v32       #isUSIM:Z
    .restart local v42       #sourceLocation:I
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertSimContact(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v38

    goto :goto_a

    .line 2426
    :cond_d
    aput-wide v38, v25, v29

    .line 2428
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SourceLocation is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2434
    .end local v32           #isUSIM:Z
    .end local v34           #newSimEmail:Ljava/lang/String;
    .end local v35           #newSimName:Ljava/lang/String;
    .end local v36           #newSimNumber:Ljava/lang/String;
    .end local v38           #simInsertionResult:J
    .end local v42           #sourceLocation:I
    .restart local v27       #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .restart local v30       #i$:Ljava/util/Iterator;
    :cond_e
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 2324
    .end local v27           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    :cond_f
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 2450
    .end local v30           #i$:Ljava/util/Iterator;
    .end local v33           #newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v40           #simName:Ljava/lang/String;
    .end local v41           #simNumber:Ljava/lang/String;
    .end local v43           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_10
    invoke-virtual {v7}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_11

    const/16 v37, 0x1

    .line 2451
    :goto_b
    if-eqz v37, :cond_12

    .line 2452
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting sim contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2456
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2457
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2450
    :cond_11
    const/16 v37, 0x0

    goto :goto_b

    .line 2462
    :cond_12
    invoke-virtual {v8}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_13

    const/16 v37, 0x1

    .line 2463
    :goto_c
    if-eqz v37, :cond_14

    .line 2464
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting sim1 contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2468
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2469
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2462
    :cond_13
    const/16 v37, 0x0

    goto :goto_c

    .line 2474
    :cond_14
    invoke-virtual {v9}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_15

    const/16 v37, 0x1

    .line 2475
    :goto_d
    if-eqz v37, :cond_16

    .line 2476
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting sim2 contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2480
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2481
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2474
    :cond_15
    const/16 v37, 0x0

    goto :goto_d

    .line 2485
    :cond_16
    invoke-virtual {v10}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_17

    const/16 v37, 0x1

    .line 2486
    :goto_e
    if-eqz v37, :cond_18

    .line 2487
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting sim3 contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2491
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2492
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2485
    :cond_17
    const/16 v37, 0x0

    goto :goto_e

    .line 2497
    :cond_18
    invoke-virtual {v11}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_19

    const/16 v37, 0x1

    .line 2498
    :goto_f
    if-eqz v37, :cond_1a

    .line 2499
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting sim4 contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2503
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2504
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2497
    :cond_19
    const/16 v37, 0x0

    goto :goto_f

    .line 2509
    :cond_1a
    const/16 v29, 0x0

    :goto_10
    move/from16 v0, v29

    move/from16 v1, v26

    if-ge v0, v1, :cond_23

    .line 2512
    new-instance v43, Lcom/mediatek/android/content/MeasuredContentValues;

    const/4 v12, 0x6

    move-object/from16 v0, v43

    invoke-direct {v0, v12}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 2513
    .restart local v43       #values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v12, "_id"

    move/from16 v0, v29

    int-to-long v13, v0

    add-long v13, v13, v22

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2515
    const-string v12, "aggregation_mode"

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2518
    aget v42, v24, v29

    .line 2520
    .restart local v42       #sourceLocation:I
    const-string v12, "indicate_phone_or_sim_contact"

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2523
    const-string v20, "Phone"

    .line 2524
    .local v20, accountName:Ljava/lang/String;
    const-string v21, "Local Phone Account"

    .line 2525
    .local v21, accountType:Ljava/lang/String;
    const/4 v12, -0x1

    move/from16 v0, v42

    if-ne v0, v12, :cond_1b

    .line 2526
    const-string v20, "Phone"

    .line 2527
    const-string v21, "Local Phone Account"

    .line 2556
    :goto_11
    const-string v12, "account_name"

    move-object/from16 v0, v43

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    const-string v12, "account_type"

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v12, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    const-string v12, "index_in_sim"

    aget-wide v13, v25, v29

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, v43

    invoke-virtual {v0, v12, v13}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2560
    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v12

    if-nez v12, :cond_21

    const/16 v37, 0x1

    .line 2561
    :goto_12
    if-eqz v37, :cond_22

    .line 2562
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting raw contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2567
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2568
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2528
    :cond_1b
    if-nez v42, :cond_1c

    .line 2529
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimAccountNameBySlot(I)Ljava/lang/String;

    move-result-object v20

    .line 2531
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_11

    .line 2533
    :cond_1c
    const/4 v12, 0x1

    move/from16 v0, v42

    if-ne v0, v12, :cond_1d

    .line 2534
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimAccountNameBySlot(I)Ljava/lang/String;

    move-result-object v20

    .line 2536
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_11

    .line 2538
    :cond_1d
    const/4 v12, 0x2

    move/from16 v0, v42

    if-ne v0, v12, :cond_1e

    .line 2539
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimAccountNameBySlot(I)Ljava/lang/String;

    move-result-object v20

    .line 2541
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_11

    .line 2543
    :cond_1e
    const/4 v12, 0x3

    move/from16 v0, v42

    if-ne v0, v12, :cond_1f

    .line 2544
    const/4 v12, 0x2

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimAccountNameBySlot(I)Ljava/lang/String;

    move-result-object v20

    .line 2546
    const/4 v12, 0x2

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_11

    .line 2548
    :cond_1f
    const/4 v12, 0x4

    move/from16 v0, v42

    if-ne v0, v12, :cond_20

    .line 2549
    const/4 v12, 0x3

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimAccountNameBySlot(I)Ljava/lang/String;

    move-result-object v20

    .line 2551
    const/4 v12, 0x3

    invoke-static {v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_11

    .line 2554
    :cond_20
    const-string v12, "source location is unkown"

    invoke-static {v12}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 2560
    :cond_21
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 2509
    :cond_22
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_10

    .line 2573
    .end local v20           #accountName:Ljava/lang/String;
    .end local v21           #accountType:Ljava/lang/String;
    .end local v42           #sourceLocation:I
    .end local v43           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_23
    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_24

    const/16 v37, 0x1

    .line 2574
    :goto_13
    if-eqz v37, :cond_25

    .line 2575
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting raw contacts, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2579
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2580
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2573
    :cond_24
    const/16 v37, 0x0

    goto :goto_13

    .line 2585
    :cond_25
    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v12

    if-nez v12, :cond_26

    const/16 v37, 0x1

    .line 2586
    :goto_14
    if-eqz v37, :cond_27

    .line 2587
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    aput-object p2, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object p4, v12, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error in bulk inserting contact data, statusCode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2591
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2592
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12, v13, v14}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2585
    :cond_26
    const/16 v37, 0x0

    goto :goto_14

    .line 2596
    :cond_27
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move/from16 v0, v26

    int-to-long v13, v0

    add-long v13, v13, v22

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v12, v13}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllRawContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 2598
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move/from16 v0, v26

    int-to-long v14, v0

    add-long v14, v14, v22

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v12, p0

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v12 .. v19}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public fastSyncAddDetailedContacts([B)[B
    .locals 1
    .parameter "raw"

    .prologue
    .line 5155
    invoke-virtual {p0, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->slowSyncAddDetailedContacts([B)[B

    move-result-object v0

    return-object v0
.end method

.method public fastSyncDeleteContacts([J)I
    .locals 1
    .parameter "ids"

    .prologue
    .line 5271
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->fastDeleteContactsSourcedOnPhone([JZ)I

    move-result v0

    return v0
.end method

.method public fastSyncGetAllSyncFlags(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4982
    if-nez p1, :cond_1

    .line 4983
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5012
    :cond_0
    :goto_0
    return-void

    .line 4987
    :cond_1
    const/4 v6, 0x0

    .line 4990
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const-string v3, "deleted<>1 AND indicate_phone_or_sim_contact=-1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5002
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactsSyncFlagsCursorParser;

    invoke-direct {v7, v6, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactsSyncFlagsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 5004
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactsSyncFlagsCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5007
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5009
    const/4 v6, 0x0

    goto :goto_0

    .line 5007
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactsSyncFlagsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5008
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5009
    const/4 v6, 0x0

    .line 5007
    :cond_2
    throw v0
.end method

.method public fastSyncGetContactData([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 12
    .parameter "requestedContactIds"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 5089
    if-nez p2, :cond_1

    .line 5090
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5147
    :cond_0
    :goto_0
    return-void

    .line 5095
    :cond_1
    if-nez p1, :cond_2

    .line 5096
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested contacts id list should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5099
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 5101
    :cond_2
    array-length v0, p1

    if-gtz v0, :cond_3

    .line 5102
    new-array v0, v10, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v4

    aput-object p3, v0, v5

    const-string v1, "Requested contacts id list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    invoke-interface {p2, v11, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 5108
    :cond_3
    const/4 v6, 0x0

    .line 5109
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 5110
    .local v3, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 5112
    .local v9, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "(raw_contact_id IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5113
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 5114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5113
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 5117
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 5118
    const-string v0, ")) AND mimetype<>\'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5120
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5123
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "mimetype"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "data1"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "data2"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "data3"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "data4"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "data5"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "data6"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "data7"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "data8"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "data9"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "data10"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "data15"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "sim_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "raw_contact_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5137
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;

    invoke-direct {v8, v6, p2, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 5139
    .local v8, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;
    invoke-virtual {v8}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5142
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5144
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 5142
    .end local v8           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5143
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5144
    const/4 v6, 0x0

    .line 5142
    :cond_5
    throw v0
.end method

.method public fastSyncGetRawContacts([JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 11
    .parameter "requestedContactIds"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5024
    if-nez p2, :cond_1

    .line 5025
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    aput-object p3, v0, v4

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5077
    :cond_0
    :goto_0
    return-void

    .line 5030
    :cond_1
    if-nez p1, :cond_3

    .line 5031
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    aput-object p3, v0, v4

    const-string v1, "Requested contacts id list should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5034
    invoke-interface {p2, v10, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 5042
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 5043
    .local v6, c:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 5044
    .local v3, selection:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 5046
    .local v9, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "(_id IN("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5047
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    array-length v0, p1

    if-ge v7, v0, :cond_4

    .line 5048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5047
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5035
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #i:I
    .end local v9           #strBuf:Ljava/lang/StringBuffer;
    :cond_3
    array-length v0, p1

    if-gtz v0, :cond_2

    .line 5036
    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    aput-object p3, v0, v4

    const-string v1, "Requested contacts id list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5039
    invoke-interface {p2, v10, v2, v2}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto :goto_1

    .line 5051
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #i:I
    .restart local v9       #strBuf:Ljava/lang/StringBuffer;
    :cond_4
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 5052
    const-string v0, ")) AND deleted<>1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5055
    const-string v0, " AND indicate_phone_or_sim_contact=-1"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5057
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5060
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "timestamp"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "version"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5067
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;

    invoke-direct {v8, v6, p2, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 5069
    .local v8, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    invoke-virtual {v8}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5072
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5073
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5074
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 5072
    .end local v8           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5073
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5074
    const/4 v6, 0x0

    .line 5072
    :cond_5
    throw v0
.end method

.method public fastSyncUpdateDetailedContacts([B)[B
    .locals 21
    .parameter "raw"

    .prologue
    .line 5164
    if-nez p1, :cond_0

    .line 5165
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Raw data is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5166
    const/4 v2, 0x0

    .line 5262
    :goto_0
    return-object v2

    .line 5169
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 5175
    .local v9, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 5182
    .local v12, count:I
    if-gez v12, :cond_1

    .line 5183
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid contacts count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5185
    const/4 v2, 0x0

    goto :goto_0

    .line 5176
    .end local v12           #count:I
    :catch_0
    move-exception v13

    .line 5177
    .local v13, e:Ljava/nio/BufferUnderflowException;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Can not get the contacts count in raw data "

    invoke-static {v2, v3, v13}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5179
    const/4 v2, 0x0

    goto :goto_0

    .line 5188
    .end local v13           #e:Ljava/nio/BufferUnderflowException;
    .restart local v12       #count:I
    :cond_1
    new-array v0, v12, [J

    move-object/from16 v20, v0

    .line 5189
    .local v20, updatedIds:[J
    new-instance v17, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 5195
    .local v17, rawContactsValues:Landroid/content/ContentValues;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    if-ge v14, v12, :cond_6

    .line 5197
    new-instance v16, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 5199
    .local v16, newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    const/16 v2, 0x51a

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v2}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 5201
    invoke-virtual/range {v16 .. v16}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v18

    .line 5203
    .local v18, updateId:J
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "deleted"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 5206
    .local v10, c:Landroid/database/Cursor;
    if-nez v10, :cond_2

    .line 5207
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "Cursor is null. Failed to find the raw contact to update."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 5210
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 5212
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_4

    .line 5214
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 5215
    const-string v2, "_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5216
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 5232
    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5236
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5244
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->createContentValuesArray(Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)[Landroid/content/ContentValues;

    move-result-object v11

    .line 5246
    .local v11, contactDataValues:[Landroid/content/ContentValues;
    if-eqz v11, :cond_5

    array-length v2, v11

    if-lez v2, :cond_5

    .line 5248
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v11}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v15

    .line 5250
    .local v15, insertedCount:I
    array-length v2, v11

    if-eq v15, v2, :cond_5

    .line 5252
    const/4 v9, 0x0

    .line 5254
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 5219
    .end local v11           #contactDataValues:[Landroid/content/ContentValues;
    .end local v15           #insertedCount:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5220
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 5223
    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, v18

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContact(JZILjava/lang/String;Ljava/lang/String;)I

    .line 5226
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 5227
    const-string v2, "_id"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5228
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 5258
    .restart local v11       #contactDataValues:[Landroid/content/ContentValues;
    :cond_5
    aput-wide v18, v20, v14

    .line 5195
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 5262
    .end local v10           #c:Landroid/database/Cursor;
    .end local v11           #contactDataValues:[Landroid/content/ContentValues;
    .end local v16           #newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v18           #updateId:J
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSyncFlags([J)[B

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getAvailableContactsCount()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 5418
    const/4 v7, 0x0

    .line 5420
    .local v7, count:I
    const/4 v3, 0x0

    .line 5429
    .local v3, selection:Ljava/lang/String;
    const-string v3, "indicate_phone_or_sim_contact = -1 AND deleted<>1"

    .line 5432
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v9, "_id"

    aput-object v9, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5434
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5435
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 5436
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5440
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimContactsCount()I

    move-result v8

    .line 5441
    .local v8, simCount:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableContactsCount from phone : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 5442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableContactsCount from SIM : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 5443
    add-int v0, v7, v8

    return v0

    .line 5438
    .end local v8           #simCount:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getAvailableContactsCount2()I
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    .line 5356
    const/4 v7, 0x0

    .line 5358
    .local v7, count:I
    const/4 v3, 0x0

    .line 5359
    .local v3, selection:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 5361
    .local v8, sourceLocationIn:Ljava/lang/StringBuffer;
    const/16 v0, 0x28

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5362
    const/4 v0, -0x1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5365
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim1Accessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/mediatek/apst/target/util/Global;->getSimIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5371
    :cond_0
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim2Accessible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/mediatek/apst/target/util/Global;->getSimIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5377
    :cond_1
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim3Accessible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Global;->getSimIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5382
    :cond_2
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim4Accessible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Global;->getSimIdBySlot(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5396
    :cond_3
    const/16 v0, 0x29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 5398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "indicate_phone_or_sim_contact IN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5401
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v9

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5403
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 5404
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 5405
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5409
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvailableContactsCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logD(Ljava/lang/String;)V

    .line 5411
    return v7

    .line 5407
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getContact(JZ)Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .locals 12
    .parameter "id"
    .parameter "withData"

    .prologue
    .line 802
    const/4 v8, 0x0

    .line 808
    .local v8, contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "times_contacted"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "last_time_contacted"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "starred"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "custom_ringtone"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "send_to_voicemail"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "indicate_phone_or_sim_contact"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "index_in_sim"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 823
    .local v6, cContact:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 824
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 826
    invoke-static {v6}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsContent;->cursorToRawContact(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/RawContact;

    move-result-object v8

    .line 828
    invoke-virtual {v8, p1, p2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 829
    if-nez p3, :cond_0

    move-object v9, v8

    .line 892
    .end local v8           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .local v9, contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    :goto_0
    return-object v9

    .line 834
    .end local v9           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .restart local v8       #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data4"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data5"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "data6"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "data7"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "data8"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "data9"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "data10"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "sim_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 860
    .local v7, cData:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 862
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 863
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 881
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 885
    .end local v7           #cData:Landroid/database/Cursor;
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v9, v8

    .line 892
    .end local v8           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .restart local v9       #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    goto/16 :goto_0

    .line 869
    .end local v9           #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .restart local v7       #cData:Landroid/database/Cursor;
    .restart local v8       #contact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    :cond_5
    invoke-static {v7}, Lcom/mediatek/apst/target/data/provider/contacts/RawContactsEntityContent;->cursorToContactData(Landroid/database/Cursor;)Lcom/mediatek/apst/util/entity/contacts/ContactData;

    move-result-object v10

    .line 872
    .local v10, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    if-eqz v10, :cond_1

    .line 873
    :try_start_0
    invoke-virtual {v8, v10}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->addContactData(Lcom/mediatek/apst/util/entity/contacts/ContactData;)V
    :try_end_0
    .catch Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 875
    :catch_0
    move-exception v11

    .line 876
    .local v11, e:Lcom/mediatek/apst/util/entity/contacts/RawContact$UnknownContactDataTypeException;
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public getContactSourceLocation(J)I
    .locals 10
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 902
    const/16 v7, -0xff

    .line 903
    .local v7, sourceLocation:I
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "indicate_phone_or_sim_contact"

    aput-object v3, v2, v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 907
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 908
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/Global;->getSourceLocationById(I)I

    move-result v7

    .line 916
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 922
    :goto_1
    return v7

    .line 913
    :cond_0
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Fail to find the raw contact."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    :cond_1
    new-array v0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "Cursor is null. Fail to find the raw contact."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getLastCallTime()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 4476
    const-wide/16 v7, 0x0

    .line 4485
    .local v7, lastCallTime:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "last_time_contacted"

    aput-object v4, v2, v9

    const-string v5, "last_time_contacted DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4489
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4490
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4491
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4493
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4496
    :cond_1
    return-wide v7
.end method

.method public getLastSyncDate()J
    .locals 7

    .prologue
    .line 4518
    const-wide/16 v1, 0x0

    .line 4520
    .local v1, lastSyncDate:J
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "LAST_SYNC_DATE"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4525
    :goto_0
    return-wide v1

    .line 4522
    :catch_0
    move-exception v0

    .line 4523
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMaxRawContactsId()J
    .locals 9

    .prologue
    const/4 v5, 0x1

    .line 4544
    const-wide/16 v1, 0x0

    .line 4545
    .local v1, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v0

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 4549
    .local v8, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 4551
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->deleteContact(JZILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4558
    :goto_0
    return-wide v1

    .line 4552
    :catch_0
    move-exception v7

    .line 4553
    .local v7, e:Ljava/lang/NumberFormatException;
    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4554
    .end local v7           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .line 4555
    .local v7, e:Ljava/lang/NullPointerException;
    invoke-static {v7}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getMaxRawContactsIdByQuery()J
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 4567
    const-wide/16 v7, 0x0

    .line 4570
    .local v7, maxId:J
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4573
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 4574
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4575
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4577
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4579
    :cond_1
    new-array v0, v9, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MaxRawContactsId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4580
    return-wide v7
.end method

.method public getRawContactsCount()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 5284
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "deleted<>1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5288
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5289
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 5290
    .local v7, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5294
    :goto_0
    return v7

    .line 5292
    .end local v7           #count:I
    :cond_0
    const/4 v7, 0x0

    .restart local v7       #count:I
    goto :goto_0
.end method

.method public getSimContactsCount()I
    .locals 2

    .prologue
    .line 5329
    const/4 v0, 0x0

    .line 5331
    .local v0, count:I
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim1Accessible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5332
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimContactsCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5334
    :cond_0
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim2Accessible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5335
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimContactsCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5337
    :cond_1
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim3Accessible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5338
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimContactsCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5340
    :cond_2
    invoke-static {}, Lcom/mediatek/apst/target/data/proxy/sysinfo/SystemInfoProxy;->isSim4Accessible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5341
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimContactsCount(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 5349
    :cond_3
    return v0
.end method

.method public getSimContactsCount(I)I
    .locals 8
    .parameter "sourceLocation"

    .prologue
    const/4 v3, 0x0

    .line 5310
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5314
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 5315
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 5316
    .local v7, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5320
    :goto_0
    return v7

    .line 5318
    .end local v7           #count:I
    :cond_0
    const/4 v7, 0x0

    .restart local v7       #count:I
    goto :goto_0
.end method

.method public getSyncFlags(JJ)[B
    .locals 9
    .parameter "idFrom"
    .parameter "idTo"

    .prologue
    .line 4700
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 4702
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/4 v0, 0x4

    new-array v8, v0, [B

    .line 4705
    .local v8, syncResultsRaw:[B
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "version"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id>="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "indicate_phone_or_sim_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4719
    .local v7, c:Landroid/database/Cursor;
    invoke-virtual {v6}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 4720
    if-eqz v7, :cond_1

    .line 4721
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4722
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4724
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4726
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4728
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4730
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 4732
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4736
    :goto_1
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 4737
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v8, v0, [B

    .line 4738
    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4740
    return-object v8

    .line 4734
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public getSyncFlags([J)[B
    .locals 14
    .parameter "idSet"

    .prologue
    .line 4590
    if-nez p1, :cond_0

    .line 4591
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Target ID list is null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4593
    const/4 v0, 0x4

    new-array v13, v0, [B

    .line 4688
    :goto_0
    return-object v13

    .line 4595
    :cond_0
    array-length v0, p1

    if-gtz v0, :cond_1

    .line 4596
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Target ID list is empty."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4598
    const/4 v0, 0x4

    new-array v13, v0, [B

    goto :goto_0

    .line 4602
    :cond_1
    const/4 v3, 0x0

    .line 4603
    .local v3, selection:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    .line 4604
    .local v12, strBuf:Ljava/lang/StringBuffer;
    const-string v0, "("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4613
    const-string v0, "_id IN("

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4614
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v0, p1

    if-ge v8, v0, :cond_2

    .line 4615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v1, p1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4614
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4618
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 4619
    const-string v0, ")) AND deleted<>1 AND indicate_phone_or_sim_contact=-1"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4624
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4626
    invoke-static {}, Lcom/mediatek/apst/target/util/Global;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 4628
    .local v6, buffer:Ljava/nio/ByteBuffer;
    const/4 v0, 0x4

    new-array v13, v0, [B

    .line 4631
    .local v13, syncResultsRaw:[B
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "version"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "display_name"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "timestamp"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4639
    .local v7, c:Landroid/database/Cursor;
    invoke-virtual {v6}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 4640
    array-length v0, p1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4641
    const/4 v11, 0x0

    .line 4642
    .local v11, index:I
    if-eqz v7, :cond_5

    .line 4643
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4644
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4645
    .local v9, id:J
    :goto_3
    array-length v0, p1

    if-gt v11, v0, :cond_3

    .line 4646
    array-length v0, p1

    if-ne v11, v0, :cond_6

    .line 4675
    .end local v9           #id:J
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4677
    :cond_5
    :goto_4
    array-length v0, p1

    if-ge v11, v0, :cond_b

    .line 4678
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4679
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4680
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4682
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4677
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 4650
    .restart local v9       #id:J
    :cond_6
    const-wide/16 v0, 0x0

    aget-wide v4, p1, v11

    cmp-long v0, v0, v4

    if-ltz v0, :cond_8

    .line 4651
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4652
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4653
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4655
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4645
    :cond_7
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 4657
    :cond_8
    aget-wide v0, p1, v11

    cmp-long v0, v9, v0

    if-nez v0, :cond_9

    .line 4658
    invoke-virtual {v6, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4659
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4660
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4662
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 4663
    :cond_9
    aget-wide v0, p1, v11

    cmp-long v0, v9, v0

    if-lez v0, :cond_a

    .line 4664
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 4665
    const/4 v0, -0x1

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 4666
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 4668
    const-wide/16 v0, -0x1

    invoke-virtual {v6, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 4670
    :cond_a
    aget-wide v0, p1, v11

    cmp-long v0, v9, v0

    if-gez v0, :cond_7

    goto/16 :goto_2

    .line 4684
    .end local v9           #id:J
    :cond_b
    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 4685
    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v0

    new-array v13, v0, [B

    .line 4686
    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_0
.end method

.method public insertContact(Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)J
    .locals 35
    .parameter "newContact"
    .parameter "withData"

    .prologue
    .line 939
    if-nez p1, :cond_1

    .line 940
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const-string v33, "Contact passed in is null."

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    const-wide/16 v7, -0x3e9

    .line 1153
    :cond_0
    :goto_0
    return-wide v7

    .line 945
    :cond_1
    const-wide/16 v7, -0x3e9

    .line 947
    .local v7, cId:J
    new-instance v31, Landroid/content/ContentValues;

    const/16 v32, 0x7

    invoke-direct/range {v31 .. v32}, Landroid/content/ContentValues;-><init>(I)V

    .line 951
    .local v31, values:Landroid/content/ContentValues;
    const-string v32, "aggregation_mode"

    const/16 v33, 0x3

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 953
    const-string v33, "starred"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isStarred()Z

    move-result v32

    if-eqz v32, :cond_2

    const/16 v32, 0x1

    :goto_1
    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 962
    const-string v32, "send_to_voicemail"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 966
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v32

    invoke-static/range {v32 .. v32}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getRealSlotId(I)I

    move-result v25

    .line 967
    .local v25, realSlotId:I
    const/16 v32, -0x1

    move/from16 v0, v25

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 968
    const-string v32, "indicate_phone_or_sim_contact"

    const/16 v33, -0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 970
    const-string v32, "account_name"

    const-string v33, "Phone"

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const-string v32, "account_type"

    const-string v33, "Local Phone Account"

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :goto_2
    const-string v32, "send_to_voicemail"

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 986
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 1046
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Invalid source location "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "."

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    const-wide/16 v7, -0x3e9

    goto/16 :goto_0

    .line 953
    .end local v25           #realSlotId:I
    :cond_2
    const/16 v32, 0x0

    goto/16 :goto_1

    .line 975
    .restart local v25       #realSlotId:I
    :cond_3
    invoke-static/range {v25 .. v25}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v19

    .line 976
    .local v19, info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    const-string v32, "indicate_phone_or_sim_contact"

    invoke-virtual/range {v19 .. v19}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSimId()I

    move-result v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 979
    const-string v32, "account_name"

    invoke-static/range {v25 .. v25}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSimAccountNameBySlot(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string v32, "account_type"

    invoke-static/range {v25 .. v25}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 993
    .end local v19           #info:Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;
    :pswitch_0
    const-wide/16 v27, 0x0

    .line 994
    .local v27, simInsertionResult:J
    const-string v23, ""

    .line 995
    .local v23, newSimName:Ljava/lang/String;
    const-string v24, ""

    .line 996
    .local v24, newSimNumber:Ljava/lang/String;
    const-string v22, ""

    .line 997
    .local v22, newSimEmail:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v32

    if-eqz v32, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_4

    .line 1000
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v23

    .line 1005
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v32

    if-eqz v32, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_5

    .line 1008
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v24

    .line 1013
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v32

    if-eqz v32, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v32

    if-lez v32, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_6

    .line 1016
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v32

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v22

    .line 1021
    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v29

    .line 1022
    .local v29, sourceLocation:I
    invoke-static/range {v29 .. v29}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimUsimType(I)Z

    move-result v20

    .line 1023
    .local v20, isUSIM:Z
    if-eqz v20, :cond_7

    .line 1024
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v22

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v27

    .line 1031
    :goto_6
    const-wide/16 v32, 0x0

    cmp-long v32, v27, v32

    if-gez v32, :cond_8

    .line 1033
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const-string v33, "Failed to insert contact into SIM."

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    const-wide/16 v32, -0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    move-wide/from16 v7, v27

    .line 1037
    goto/16 :goto_0

    .line 1002
    .end local v20           #isUSIM:Z
    .end local v29           #sourceLocation:I
    :cond_4
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v23, v32, v33

    const-string v33, "No new SIM name"

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1010
    :cond_5
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v23, v32, v33

    const-string v33, "No new SIM number"

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1018
    :cond_6
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v23, v32, v33

    const-string v33, "No new SIM email"

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1027
    .restart local v20       #isUSIM:Z
    .restart local v29       #sourceLocation:I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertSimContact(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v27

    goto :goto_6

    .line 1040
    :cond_8
    const-string v32, "index_in_sim"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    invoke-virtual/range {v31 .. v33}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1054
    .end local v20           #isUSIM:Z
    .end local v22           #newSimEmail:Ljava/lang/String;
    .end local v23           #newSimName:Ljava/lang/String;
    .end local v24           #newSimNumber:Ljava/lang/String;
    .end local v27           #simInsertionResult:J
    .end local v29           #sourceLocation:I
    :pswitch_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v32

    sget-object v33, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v30

    .line 1056
    .local v30, uri:Landroid/net/Uri;
    if-eqz v30, :cond_9

    .line 1057
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1058
    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "insert raw_contacts id :"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1068
    .end local v30           #uri:Landroid/net/Uri;
    :cond_9
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1070
    if-eqz p2, :cond_0

    .line 1074
    const-wide/16 v32, 0x0

    cmp-long v32, v7, v32

    if-gtz v32, :cond_a

    .line 1076
    const-wide/16 v7, -0x3e9

    goto/16 :goto_0

    .line 1061
    :catch_0
    move-exception v15

    .line 1062
    .local v15, e:Ljava/lang/NumberFormatException;
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1063
    .end local v15           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v15

    .line 1064
    .local v15, e:Ljava/lang/IllegalArgumentException;
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1080
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1081
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getAllContactData()Ljava/util/List;

    move-result-object v5

    .line 1082
    .local v5, allData:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/ContactData;>;"
    const/4 v9, -0x1

    .line 1084
    .local v9, contactDataIndex:I
    if-eqz v5, :cond_0

    .line 1088
    const/16 v16, 0x0

    .line 1089
    .local v16, i:I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 1090
    .local v11, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    add-int/lit8 v16, v16, 0x1

    .line 1092
    invoke-virtual {v11, v7, v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->isFull()Z

    move-result v32

    if-nez v32, :cond_c

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v16

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    .line 1098
    :cond_c
    const/4 v14, 0x0

    .line 1100
    .local v14, dataResults:[Landroid/content/ContentProviderResult;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v14

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1114
    if-eqz v14, :cond_b

    .line 1115
    move-object v6, v14

    .local v6, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v6

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    aget-object v26, v6, v18

    .line 1117
    .local v26, result:Landroid/content/ContentProviderResult;
    add-int/lit8 v9, v9, 0x1

    .line 1118
    if-nez v26, :cond_e

    .line 1115
    :cond_d
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 1101
    .end local v6           #arr$:[Landroid/content/ContentProviderResult;
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v26           #result:Landroid/content/ContentProviderResult;
    :catch_2
    move-exception v15

    .line 1102
    .local v15, e:Landroid/os/RemoteException;
    const/16 v32, 0x2

    :try_start_2
    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    .end local v15           #e:Landroid/os/RemoteException;
    :goto_a
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    goto/16 :goto_0

    .line 1105
    :catch_3
    move-exception v15

    .line 1106
    .local v15, e:Landroid/content/OperationApplicationException;
    const/16 v32, 0x2

    :try_start_3
    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v32, v0

    goto :goto_a

    .end local v15           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    throw v32

    .line 1122
    .restart local v6       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v18       #i$:I
    .restart local v21       #len$:I
    .restart local v26       #result:Landroid/content/ContentProviderResult;
    :cond_e
    :try_start_4
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1124
    .local v12, dataId:J
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 1126
    .local v10, currentData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    if-eqz v10, :cond_d

    .line 1129
    invoke-virtual {v10, v12, v13}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_9

    .line 1131
    .end local v10           #currentData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v12           #dataId:J
    :catch_4
    move-exception v15

    .line 1132
    .local v15, e:Ljava/lang/NumberFormatException;
    const/16 v32, 0x2

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object p1, v32, v33

    const/16 v33, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    aput-object v34, v32, v33

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v15}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 986
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public insertContactData(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)J
    .locals 13
    .parameter "data"
    .parameter "validateContactId"

    .prologue
    .line 3991
    if-nez p1, :cond_0

    .line 3992
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Contact data passed in is null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3994
    const-wide/16 v10, -0x1

    .line 4056
    :goto_0
    return-wide v10

    .line 3997
    :cond_0
    const-wide/16 v10, -0x1

    .line 3998
    .local v10, insertedId:J
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v7

    .line 4000
    .local v7, cId:J
    if-eqz p2, :cond_3

    .line 4001
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4004
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 4005
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor is null. Failed to find raw contact with id of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4008
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 4009
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 4010
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw contact id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4012
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4013
    const-wide/16 v10, -0x1

    goto/16 :goto_0

    .line 4015
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4018
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v0}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4019
    invoke-virtual {p1, v7, v8}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 4020
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v0, p1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4023
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;

    move-result-object v12

    .line 4024
    .local v12, results:[Landroid/content/ContentProviderResult;
    if-eqz v12, :cond_4

    .line 4025
    const/4 v0, 0x0

    aget-object v0, v12, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-wide v10

    .line 4047
    :goto_1
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local v12           #results:[Landroid/content/ContentProviderResult;
    :goto_2
    invoke-virtual {v0}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4054
    :goto_3
    invoke-virtual {p1, v10, v11}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    goto/16 :goto_0

    .line 4028
    .restart local v12       #results:[Landroid/content/ContentProviderResult;
    :cond_4
    const-wide/16 v10, -0x1

    goto :goto_1

    .line 4030
    .end local v12           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v9

    .line 4031
    .local v9, e:Ljava/lang/NumberFormatException;
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4033
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4047
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_2

    .line 4034
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 4035
    .local v9, e:Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4037
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4047
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_2

    .line 4038
    .end local v9           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 4039
    .local v9, e:Landroid/os/RemoteException;
    const/4 v0, 0x2

    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4041
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4047
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_2

    .line 4042
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v9

    .line 4043
    .local v9, e:Landroid/content/OperationApplicationException;
    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4045
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4047
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_2

    .end local v9           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    throw v0

    .line 4050
    :cond_5
    const-wide/16 v10, -0x1

    goto :goto_3
.end method

.method public insertGroup(Lcom/mediatek/apst/util/entity/contacts/Group;)J
    .locals 13
    .parameter "group"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3483
    if-nez p1, :cond_0

    .line 3484
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    const-string v8, "Group passed in is null."

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3485
    const-wide/16 v3, -0x1

    .line 3557
    :goto_0
    return-wide v3

    .line 3488
    :cond_0
    const-wide/16 v3, -0x1

    .line 3490
    .local v3, insertedId:J
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v1

    .line 3491
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v0

    .line 3493
    .local v0, accountName:Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 3494
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "title"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3495
    const-string v7, "notes"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getSystemId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 3501
    const-string v7, "system_id"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3505
    :goto_1
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDeleted()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 3506
    const-string v7, "deleted"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDeleted()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3512
    :cond_1
    if-eqz v0, :cond_2

    .line 3513
    const-string v7, "account_name"

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3514
    new-array v7, v10, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "accountName :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3516
    :cond_2
    if-eqz v1, :cond_3

    .line 3517
    const-string v7, "account_type"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    :cond_3
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getVersion()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 3520
    const-string v7, "version"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3522
    :cond_4
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDirty()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 3523
    const-string v7, "dirty"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getDirty()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3525
    :cond_5
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getGroup_visible()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 3526
    const-string v7, "group_visible"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getGroup_visible()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3528
    :cond_6
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getShould_sync()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3529
    const-string v7, "should_sync"

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getShould_sync()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    :cond_7
    sget v7, Lcom/mediatek/apst/util/FeatureOptionControl;->CONTACT_N_USIMGROUP:I

    if-eqz v7, :cond_9

    if-eqz v1, :cond_9

    const-string v7, "USIM Account"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3535
    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v0, v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->insertGroupInUSIM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3537
    new-array v7, v10, [Ljava/lang/Object;

    const-string v8, "insertGroupInUSIM failed!!!!"

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3503
    :cond_8
    const-string v7, "system_id"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 3543
    :cond_9
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    .line 3545
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_a

    .line 3546
    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .line 3555
    .end local v5           #uri:Landroid/net/Uri;
    :cond_a
    :goto_2
    invoke-virtual {p1, v3, v4}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    goto/16 :goto_0

    .line 3548
    :catch_0
    move-exception v2

    .line 3549
    .local v2, e:Ljava/lang/NumberFormatException;
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v7, v12, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3550
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 3551
    .local v2, e:Ljava/lang/IllegalArgumentException;
    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v7, v12, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public insertGroupMembership([JJ)[J
    .locals 6
    .parameter "contactIds"
    .parameter "groupId"

    .prologue
    .line 4265
    if-nez p1, :cond_0

    .line 4266
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "List is null."

    invoke-static {v1, v2}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4268
    const/4 v1, 0x0

    .line 4297
    :goto_0
    return-object v1

    .line 4271
    :cond_0
    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4272
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$20;

    iget-object v2, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object v1, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$20;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[JJ)V

    .line 4295
    .local v0, batchHelper:Lcom/mediatek/android/content/DefaultInsertBatchHelper;
    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->run(I)V

    .line 4297
    invoke-virtual {v0}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getResults()[J

    move-result-object v1

    goto :goto_0
.end method

.method public insertGroupMembership([JJLcom/mediatek/apst/util/entity/contacts/Group;[I)[J
    .locals 16
    .parameter "contactIds"
    .parameter "groupId"
    .parameter "group"
    .parameter "simIndexes"

    .prologue
    .line 4313
    if-nez p1, :cond_0

    .line 4314
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "List is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4316
    const/4 v2, 0x0

    .line 4381
    :goto_0
    return-object v2

    .line 4319
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4320
    new-instance v1, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$21;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$21;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[JJ)V

    .line 4343
    .local v1, batchHelper:Lcom/mediatek/android/content/DefaultInsertBatchHelper;
    move-object/from16 v0, p1

    array-length v2, v0

    invoke-virtual {v1, v2}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->run(I)V

    .line 4347
    if-eqz p4, :cond_1

    if-nez p5, :cond_2

    .line 4348
    :cond_1
    invoke-virtual {v1}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getResults()[J

    move-result-object v2

    goto :goto_0

    .line 4351
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v8

    .line 4352
    .local v8, accountType:Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v7

    .line 4354
    .local v7, accountName:Ljava/lang/String;
    if-eqz v8, :cond_7

    const-string v2, "USIM Account"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4357
    const/4 v13, -0x1

    .line 4359
    .local v13, simGroupId:I
    :try_start_0
    invoke-static {v7}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSlotIdByAccountName(Ljava/lang/String;)I

    move-result v15

    .line 4360
    .local v15, slotId:I
    invoke-virtual/range {p4 .. p4}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->hasExistGroup(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 4364
    .end local v15           #slotId:I
    :goto_1
    move-object/from16 v9, p5

    .local v9, arr$:[I
    array-length v12, v9

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_2
    if-ge v11, v12, :cond_7

    aget v14, v9, v11

    .line 4365
    .local v14, simIndex:I
    const-string v2, "USIM0"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4366
    const/4 v2, 0x0

    invoke-static {v2, v14, v13}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->addUSIMGroupMember(III)Z

    .line 4364
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 4361
    .end local v9           #arr$:[I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v14           #simIndex:I
    :catch_0
    move-exception v10

    .line 4362
    .local v10, e1:Landroid/os/RemoteException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 4367
    .end local v10           #e1:Landroid/os/RemoteException;
    .restart local v9       #arr$:[I
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v14       #simIndex:I
    :cond_3
    const-string v2, "USIM1"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4368
    const/4 v2, 0x1

    invoke-static {v2, v14, v13}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->addUSIMGroupMember(III)Z

    goto :goto_3

    .line 4369
    :cond_4
    const-string v2, "USIM2"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4370
    const/4 v2, 0x2

    invoke-static {v2, v14, v13}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->addUSIMGroupMember(III)Z

    goto :goto_3

    .line 4371
    :cond_5
    const-string v2, "USIM3"

    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4372
    const/4 v2, 0x3

    invoke-static {v2, v14, v13}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->addUSIMGroupMember(III)Z

    goto :goto_3

    .line 4374
    :cond_6
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Account name is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 4381
    .end local v9           #arr$:[I
    .end local v11           #i$:I
    .end local v12           #len$:I
    .end local v13           #simGroupId:I
    .end local v14           #simIndex:I
    :cond_7
    invoke-virtual {v1}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getResults()[J

    move-result-object v2

    goto/16 :goto_0
.end method

.method public insertGroupMembership([JLcom/mediatek/apst/util/entity/contacts/Group;)[J
    .locals 8
    .parameter "contactIds"
    .parameter "group"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4393
    if-nez p1, :cond_0

    .line 4394
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    const-string v6, "List is null."

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4395
    const/4 v5, 0x0

    .line 4466
    :goto_0
    return-object v5

    .line 4398
    :cond_0
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USIM Account"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4401
    :try_start_0
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USIM0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4403
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSlotIdByAccountName(Ljava/lang/String;)I

    move-result v4

    .line 4404
    .local v4, slotId:I
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->hasExistGroup(ILjava/lang/String;)I

    move-result v2

    .line 4406
    .local v2, groupId:I
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->addUSIMGroupMember(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4440
    .end local v2           #groupId:I
    .end local v4           #slotId:I
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v5}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4441
    new-instance v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;

    iget-object v5, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-direct {v0, p0, v5, p1, p2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$22;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;Lcom/mediatek/android/content/ContentProviderOperationBatch;[JLcom/mediatek/apst/util/entity/contacts/Group;)V

    .line 4464
    .local v0, batchHelper:Lcom/mediatek/android/content/DefaultInsertBatchHelper;
    array-length v5, p1

    invoke-virtual {v0, v5}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->run(I)V

    .line 4466
    invoke-virtual {v0}, Lcom/mediatek/android/content/DefaultInsertBatchHelper;->getResults()[J

    move-result-object v5

    goto :goto_0

    .line 4407
    .end local v0           #batchHelper:Lcom/mediatek/android/content/DefaultInsertBatchHelper;
    :cond_2
    :try_start_1
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USIM1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4409
    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v3

    .line 4411
    .local v3, idInUSIM:I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account name is USIM1Group id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 4432
    .end local v3           #idInUSIM:I
    :catch_0
    move-exception v1

    .line 4433
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 4414
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USIM2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4416
    const/4 v5, 0x2

    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v3

    .line 4418
    .restart local v3       #idInUSIM:I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account name is USIM2Group id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4434
    .end local v3           #idInUSIM:I
    :catch_1
    move-exception v1

    .line 4435
    .local v1, e:Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 4421
    .end local v1           #e:Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "USIM3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4423
    const/4 v5, 0x3

    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->createUSIMGroup(ILjava/lang/String;)I

    move-result v3

    .line 4425
    .restart local v3       #idInUSIM:I
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account name is USIM3Group id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4429
    .end local v3           #idInUSIM:I
    :cond_5
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Account name is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method public insertGroups(Ljava/util/List;)I
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3566
    const/4 v0, 0x0

    .line 3568
    .local v0, count:I
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/mediatek/apst/target/data/provider/contacts/GroupContent;->groupsToValues(Ljava/util/List;)[Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 3575
    :goto_0
    return v0

    .line 3570
    :catch_0
    move-exception v1

    .line 3571
    .local v1, e:Ljava/lang/NumberFormatException;
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v2, v7, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3572
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 3573
    .local v1, e:Ljava/lang/IllegalArgumentException;
    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v2, v7, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public insertSimContact(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 9
    .parameter "name"
    .parameter "num"
    .parameter "sourceLocation"

    .prologue
    .line 287
    move-object v1, p2

    .line 288
    .local v1, number:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    .line 289
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Name and number should be specified but not null."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 291
    const-wide/16 v2, -0x1

    .line 335
    :cond_1
    :goto_0
    return-wide v2

    .line 294
    :cond_2
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertSimContact,name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    if-eqz v1, :cond_3

    .line 298
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 301
    :cond_3
    const-wide/16 v2, 0x0

    .line 303
    .local v2, result:J
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 304
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "tag"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v6, "number"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v6

    invoke-static {p3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 314
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 316
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 317
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted SIM contact, result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_4

    .line 320
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert SIM contact, result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 329
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 324
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_4
    :try_start_1
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 325
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successed to insert SIM contact, index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 331
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 332
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public insertSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 9
    .parameter "name"
    .parameter "num"
    .parameter "email"
    .parameter "sourceLocation"

    .prologue
    .line 357
    move-object v1, p2

    .line 358
    .local v1, number:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-nez v1, :cond_2

    .line 359
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Name and number should be specified but not null."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    const-wide/16 v2, -0x1

    .line 413
    :cond_1
    :goto_0
    return-wide v2

    .line 364
    :cond_2
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertSimContact,name"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "number"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 367
    if-eqz v1, :cond_3

    .line 368
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 371
    :cond_3
    const-wide/16 v2, 0x0

    .line 373
    .local v2, result:J
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 374
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "tag"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v6, "number"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    if-eqz p3, :cond_4

    .line 377
    const-string v6, "emails"

    invoke-virtual {v5, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insertSimContact,email"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v6

    invoke-static {p4}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 390
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_1

    .line 392
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 393
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Inserted SIM contact, result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_5

    .line 396
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to insert SIM contact, result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 407
    .end local v4           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 380
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "insertSimContact , email is null"

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 402
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_5
    :try_start_1
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 403
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Successed to insert SIM contact, index is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 409
    .end local v4           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public isSyncNeedReinit()Z
    .locals 5

    .prologue
    .line 4504
    const/4 v1, 0x1

    .line 4506
    .local v1, syncNeedReinit:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "SYNC_NEED_REINIT"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4511
    :goto_0
    return v1

    .line 4508
    :catch_0
    move-exception v0

    .line 4509
    .local v0, e:Ljava/lang/ClassCastException;
    invoke-static {v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public restoreDetailedContacts([BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 33
    .parameter "raw"
    .parameter "rawContactsConsumer"
    .parameter "contactDataConsumer"
    .parameter "outBuffer"

    .prologue
    .line 2616
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 2617
    :cond_0
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    const-string v11, "Block consumer should not be null."

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3016
    :goto_0
    return-void

    .line 2622
    :cond_1
    if-nez p1, :cond_2

    .line 2623
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    const-string v11, "Raw data is null."

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2625
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2626
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto :goto_0

    .line 2630
    :cond_2
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    .line 2636
    .local v26, inBuffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v21

    .line 2646
    .local v21, count:I
    if-gez v21, :cond_3

    .line 2647
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid contacts count "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2650
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2651
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto :goto_0

    .line 2637
    .end local v21           #count:I
    :catch_0
    move-exception v23

    .line 2638
    .local v23, e:Ljava/nio/BufferUnderflowException;
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    const-string v11, "Can not get the contacts count in raw data"

    move-object/from16 v0, v23

    invoke-static {v10, v11, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2641
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2642
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2655
    .end local v23           #e:Ljava/nio/BufferUnderflowException;
    .restart local v21       #count:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getMaxRawContactsId()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    add-long v18, v10, v12

    .line 2656
    .local v18, beginId:J
    new-instance v3, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$9;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2678
    .local v3, contactDataInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v4, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$10;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$10;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2700
    .local v4, rawContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v5, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$11;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$11;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2722
    .local v5, simContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v6, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$12;

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v11}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$12;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2744
    .local v6, sim1ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$13;

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$13;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2766
    .local v7, sim2ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v8, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$14;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-direct/range {v8 .. v13}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$14;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2789
    .local v8, sim3ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v9, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$15;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-direct/range {v9 .. v14}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$15;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[BLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 2811
    .local v9, sim4ContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    const/16 v28, 0x0

    .line 2813
    .local v28, shouldExit:Z
    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 2816
    .local v20, contactsSimId:[I
    const/16 v24, 0x0

    .local v24, i:I
    :goto_1
    move/from16 v0, v24

    move/from16 v1, v21

    if-ge v0, v1, :cond_19

    .line 2818
    new-instance v27, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 2820
    .local v27, newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    const/16 v10, 0x51a

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v10}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 2821
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restore contact sourceLocation :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 2823
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 2824
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    aput v10, v20, v24

    .line 2831
    :goto_2
    const/16 v29, 0x0

    .line 2832
    .local v29, simName:Ljava/lang/String;
    const/16 v30, 0x0

    .line 2833
    .local v30, simNumber:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_6

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 2836
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v29

    .line 2842
    :goto_3
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 2845
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v10}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v30

    .line 2846
    invoke-static/range {v30 .. v30}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2851
    :goto_4
    new-instance v31, Lcom/mediatek/android/content/MeasuredContentValues;

    const/4 v10, 0x2

    move-object/from16 v0, v31

    invoke-direct {v0, v10}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 2852
    .local v31, simValues:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v10, "tag"

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v10, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2853
    const-string v10, "number"

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v10, v1}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    if-nez v10, :cond_9

    .line 2856
    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_8

    const/16 v28, 0x1

    .line 2873
    :goto_5
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getAllContactData()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 2874
    .local v22, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    move/from16 v0, v24

    int-to-long v10, v0

    add-long v10, v10, v18

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 2875
    const/4 v10, 0x0

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->createMeasuredContentValues(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)Lcom/mediatek/android/content/MeasuredContentValues;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_13

    const/16 v28, 0x1

    .line 2877
    :goto_6
    if-eqz v28, :cond_4

    .line 2878
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting contact data, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2883
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2884
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2826
    .end local v22           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v29           #simName:Ljava/lang/String;
    .end local v30           #simNumber:Ljava/lang/String;
    .end local v31           #simValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_5
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    invoke-static {v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getRealSlotId(I)I

    move-result v10

    invoke-static {v10}, Lcom/mediatek/apst/target/util/Global;->getSimInfoBySlot(I)Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/apst/util/command/sysinfo/SimDetailInfo;->getSimId()I

    move-result v10

    aput v10, v20, v24

    goto/16 :goto_2

    .line 2838
    .restart local v29       #simName:Ljava/lang/String;
    .restart local v30       #simNumber:Ljava/lang/String;
    :cond_6
    const-string v29, ""

    .line 2839
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "No SIM contact name"

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2848
    :cond_7
    const-string v30, ""

    .line 2849
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "No SIM contact number"

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2856
    .restart local v31       #simValues:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_8
    const/16 v28, 0x0

    goto/16 :goto_5

    .line 2857
    :cond_9
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 2858
    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_a

    const/16 v28, 0x1

    :goto_7
    goto/16 :goto_5

    :cond_a
    const/16 v28, 0x0

    goto :goto_7

    .line 2859
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    .line 2860
    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_c

    const/16 v28, 0x1

    :goto_8
    goto/16 :goto_5

    :cond_c
    const/16 v28, 0x0

    goto :goto_8

    .line 2861
    :cond_d
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_f

    .line 2862
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_e

    const/16 v28, 0x1

    :goto_9
    goto/16 :goto_5

    :cond_e
    const/16 v28, 0x0

    goto :goto_9

    .line 2863
    :cond_f
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_11

    .line 2864
    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_10

    const/16 v28, 0x1

    :goto_a
    goto/16 :goto_5

    :cond_10
    const/16 v28, 0x0

    goto :goto_a

    .line 2865
    :cond_11
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_12

    .line 2867
    const-string v10, "source location -1"

    invoke-static {v10}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2869
    :cond_12
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SourceLocation is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getSourceLocation()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2875
    .restart local v22       #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .restart local v25       #i$:Ljava/util/Iterator;
    :cond_13
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 2890
    .end local v22           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    :cond_14
    new-instance v32, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v10, 0xa

    move-object/from16 v0, v32

    invoke-direct {v0, v10}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 2891
    .local v32, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v10, "_id"

    move/from16 v0, v24

    int-to-long v11, v0

    add-long v11, v11, v18

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2893
    const-string v10, "aggregation_mode"

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2896
    const-string v10, "indicate_phone_or_sim_contact"

    aget v11, v20, v24

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2899
    const-string v11, "starred"

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isStarred()Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x1

    :goto_b
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v11, v10}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2901
    const-string v11, "send_to_voicemail"

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v10

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    :goto_c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v11, v10}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2903
    const-string v10, "last_time_contacted"

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getLastTimeContacted()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2905
    const-string v10, "times_contacted"

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getTimesContacted()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2907
    const-string v10, "custom_ringtone"

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getCustomRingtone()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2913
    const-string v10, "account_name"

    const-string v11, "Phone"

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2915
    const-string v10, "account_type"

    const-string v11, "Local Phone Account"

    move-object/from16 v0, v32

    invoke-virtual {v0, v10, v11}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2918
    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v10

    if-nez v10, :cond_17

    const/16 v28, 0x1

    .line 2919
    :goto_d
    if-eqz v28, :cond_18

    .line 2920
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting raw contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2925
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2926
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2899
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_b

    .line 2901
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 2918
    :cond_17
    const/16 v28, 0x0

    goto :goto_d

    .line 2816
    :cond_18
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 2931
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v27           #newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    .end local v29           #simName:Ljava/lang/String;
    .end local v30           #simNumber:Ljava/lang/String;
    .end local v31           #simValues:Lcom/mediatek/android/content/MeasuredContentValues;
    .end local v32           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_19
    invoke-virtual {v5}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_1a

    const/16 v28, 0x1

    .line 2932
    :goto_e
    if-eqz v28, :cond_1b

    .line 2933
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting sim contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2937
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2938
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2931
    :cond_1a
    const/16 v28, 0x0

    goto :goto_e

    .line 2943
    :cond_1b
    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_1c

    const/16 v28, 0x1

    .line 2944
    :goto_f
    if-eqz v28, :cond_1d

    .line 2945
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting sim1 contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2949
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2950
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2943
    :cond_1c
    const/16 v28, 0x0

    goto :goto_f

    .line 2955
    :cond_1d
    invoke-virtual {v7}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_1e

    const/16 v28, 0x1

    .line 2956
    :goto_10
    if-eqz v28, :cond_1f

    .line 2957
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting sim2 contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2961
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2962
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2955
    :cond_1e
    const/16 v28, 0x0

    goto :goto_10

    .line 2966
    :cond_1f
    invoke-virtual {v8}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_20

    const/16 v28, 0x1

    .line 2967
    :goto_11
    if-eqz v28, :cond_21

    .line 2968
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting sim3 contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2972
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2973
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2966
    :cond_20
    const/16 v28, 0x0

    goto :goto_11

    .line 2978
    :cond_21
    invoke-virtual {v9}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_22

    const/16 v28, 0x1

    .line 2979
    :goto_12
    if-eqz v28, :cond_23

    .line 2980
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting sim4 contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2984
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2985
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2978
    :cond_22
    const/16 v28, 0x0

    goto :goto_12

    .line 2990
    :cond_23
    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_24

    const/16 v28, 0x1

    .line 2991
    :goto_13
    if-eqz v28, :cond_25

    .line 2992
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting contact data, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2996
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 2997
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 2990
    :cond_24
    const/16 v28, 0x0

    goto :goto_13

    .line 3001
    :cond_25
    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v10

    if-nez v10, :cond_26

    const/16 v28, 0x1

    .line 3002
    :goto_14
    if-eqz v28, :cond_27

    .line 3003
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    const/4 v11, 0x2

    aput-object p3, v10, v11

    const/4 v11, 0x3

    aput-object p4, v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error in bulk inserting raw contacts, statusCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3007
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    .line 3008
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v10, v11, v12}, Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;->consume([BII)V

    goto/16 :goto_0

    .line 3001
    :cond_26
    const/16 v28, 0x0

    goto :goto_14

    .line 3012
    :cond_27
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move/from16 v0, v21

    int-to-long v11, v0

    add-long v11, v11, v18

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllRawContacts(Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 3014
    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move/from16 v0, v21

    int-to-long v12, v0

    add-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v10, p0

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    invoke-virtual/range {v10 .. v17}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->asyncGetAllContactData(Ljava/util/List;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0
.end method

.method public slowSyncAddDetailedContacts([B)[B
    .locals 20
    .parameter "raw"

    .prologue
    .line 4750
    if-nez p1, :cond_0

    .line 4751
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const-string v17, "Raw data is null."

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4752
    const/16 v16, 0x0

    .line 4879
    :goto_0
    return-object v16

    .line 4755
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 4761
    .local v5, buffer:Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 4768
    .local v7, count:I
    if-gez v7, :cond_1

    .line 4769
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Invalid contacts count "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4771
    const/16 v16, 0x0

    goto :goto_0

    .line 4762
    .end local v7           #count:I
    :catch_0
    move-exception v9

    .line 4763
    .local v9, e:Ljava/nio/BufferUnderflowException;
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    const-string v17, "Can not get the contacts count in raw data "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4765
    const/16 v16, 0x0

    goto :goto_0

    .line 4774
    .end local v9           #e:Ljava/nio/BufferUnderflowException;
    .restart local v7       #count:I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getMaxRawContactsId()J

    move-result-wide v16

    const-wide/16 v18, 0x1

    add-long v3, v16, v18

    .line 4775
    .local v3, beginId:J
    new-instance v6, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v6, v0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$23;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[B)V

    .line 4797
    .local v6, contactDataInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    new-instance v13, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$24;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy$24;-><init>(Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;[B)V

    .line 4820
    .local v13, rawContactsInserter:Lcom/mediatek/android/content/DefaultBulkInsertHelper;
    const/4 v14, 0x0

    .line 4822
    .local v14, shouldExit:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v7, :cond_5

    .line 4824
    new-instance v12, Lcom/mediatek/apst/util/entity/contacts/RawContact;

    invoke-direct {v12}, Lcom/mediatek/apst/util/entity/contacts/RawContact;-><init>()V

    .line 4826
    .local v12, newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    const/16 v16, 0x51a

    move/from16 v0, v16

    invoke-virtual {v12, v5, v0}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->readRawWithVersion(Ljava/nio/ByteBuffer;I)V

    .line 4829
    invoke-virtual {v12}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getAllContactData()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 4830
    .local v8, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    int-to-long v0, v10

    move-wide/from16 v16, v0

    add-long v16, v16, v3

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 4831
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v0}, Lcom/mediatek/apst/target/data/provider/contacts/ContactDataContent;->createMeasuredContentValues(Lcom/mediatek/apst/util/entity/contacts/ContactData;Z)Lcom/mediatek/android/content/MeasuredContentValues;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v16

    if-nez v16, :cond_3

    const/4 v14, 0x1

    .line 4833
    :goto_2
    if-eqz v14, :cond_2

    .line 4834
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in bulk inserting contact data, statusCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4838
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4831
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 4822
    .end local v8           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 4843
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #newContact:Lcom/mediatek/apst/util/entity/contacts/RawContact;
    :cond_5
    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v16

    if-nez v16, :cond_6

    const/4 v14, 0x1

    .line 4844
    :goto_3
    if-eqz v14, :cond_7

    .line 4845
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in bulk inserting contact data, statusCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4848
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4843
    :cond_6
    const/4 v14, 0x0

    goto :goto_3

    .line 4852
    :cond_7
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v7, :cond_a

    .line 4854
    new-instance v15, Lcom/mediatek/android/content/MeasuredContentValues;

    const/16 v16, 0x2

    invoke-direct/range {v15 .. v16}, Lcom/mediatek/android/content/MeasuredContentValues;-><init>(I)V

    .line 4855
    .local v15, values:Lcom/mediatek/android/content/MeasuredContentValues;
    const-string v16, "_id"

    int-to-long v0, v10

    move-wide/from16 v17, v0

    add-long v17, v17, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4857
    const-string v16, "aggregation_mode"

    const/16 v17, 0x3

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/mediatek/android/content/MeasuredContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4860
    invoke-virtual {v13, v15}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->append(Lcom/mediatek/android/content/MeasuredContentValues;)Z

    move-result v16

    if-nez v16, :cond_8

    const/4 v14, 0x1

    .line 4861
    :goto_5
    if-eqz v14, :cond_9

    .line 4862
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in bulk inserting raw contacts, statusCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4866
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4860
    :cond_8
    const/4 v14, 0x0

    goto :goto_5

    .line 4852
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 4870
    .end local v15           #values:Lcom/mediatek/android/content/MeasuredContentValues;
    :cond_a
    invoke-virtual {v13}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->execute()Z

    move-result v16

    if-nez v16, :cond_b

    const/4 v14, 0x1

    .line 4871
    :goto_6
    if-eqz v14, :cond_c

    .line 4872
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p1, v16, v17

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Error in bulk inserting raw contacts, statusCode: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13}, Lcom/mediatek/android/content/DefaultBulkInsertHelper;->getStatusCode()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4875
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 4870
    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    .line 4879
    :cond_c
    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v16, v16, v3

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSyncFlags(JJ)[B

    move-result-object v16

    goto/16 :goto_0
.end method

.method public slowSyncGetAllContactData(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "contactIdTo"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4937
    if-nez p3, :cond_1

    .line 4938
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    aput-object p3, v0, v3

    aput-object p4, v0, v4

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4972
    :cond_0
    :goto_0
    return-void

    .line 4942
    :cond_1
    const/4 v6, 0x0

    .line 4945
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "mimetype"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "data2"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "data3"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "data4"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "data5"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "data6"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "data7"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "data8"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "data9"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "data10"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "data15"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "sim_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mimetype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "raw_contact_id ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4962
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;

    invoke-direct {v7, v6, p3, p4}, Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 4964
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4967
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4968
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4969
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 4967
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastContactDataCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4968
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4969
    const/4 v6, 0x0

    .line 4967
    :cond_2
    throw v0
.end method

.method public slowSyncGetAllRawContacts(JLcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V
    .locals 8
    .parameter "contactIdTo"
    .parameter "consumer"
    .parameter "buffer"

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4892
    if-nez p3, :cond_1

    .line 4893
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p3, v0, v2

    aput-object p4, v0, v4

    const-string v1, "Block consumer should not be null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4925
    :cond_0
    :goto_0
    return-void

    .line 4897
    :cond_1
    const/4 v6, 0x0

    .line 4900
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "version"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id<="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "indicate_phone_or_sim_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4915
    new-instance v7, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;

    invoke-direct {v7, v6, p3, p4}, Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;-><init>(Landroid/database/Cursor;Lcom/mediatek/apst/target/data/proxy/IRawBlockConsumer;Ljava/nio/ByteBuffer;)V

    .line 4917
    .local v7, parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    invoke-virtual {v7}, Lcom/mediatek/android/content/AsyncCursorParser;->parse()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4920
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4922
    const/4 v6, 0x0

    goto :goto_0

    .line 4920
    .end local v7           #parser:Lcom/mediatek/apst/target/data/proxy/contacts/FastRawContactsCursorParser;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 4921
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4922
    const/4 v6, 0x0

    .line 4920
    :cond_2
    throw v0
.end method

.method public updateAllContactForBackup()I
    .locals 6

    .prologue
    .line 2062
    const/4 v0, 0x0

    .line 2063
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2064
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2065
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "indicate_phone_or_sim_contact = -1 AND deleted = 0"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2071
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCount >>:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 2072
    return v0
.end method

.method public updateContact(JILjava/lang/String;Ljava/lang/String;Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)I
    .locals 28
    .parameter "id"
    .parameter "sourceLocation"
    .parameter "simName"
    .parameter "simNumber"
    .parameter "newContact"
    .parameter "updatePIMData"

    .prologue
    .line 1184
    if-nez p6, :cond_1

    .line 1185
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "New contact passed in is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1188
    const/16 v26, 0x0

    .line 1372
    :cond_0
    :goto_0
    return v26

    .line 1191
    :cond_1
    const/16 v26, 0x0

    .line 1193
    .local v26, updateCount:I
    new-instance v27, Landroid/content/ContentValues;

    const/4 v2, 0x2

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1197
    .local v27, values:Landroid/content/ContentValues;
    const-string v3, "starred"

    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isStarred()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1201
    const-string v2, "send_to_voicemail"

    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1208
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "deleted"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "<>"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v2, v3, v0, v4, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 1215
    if-eqz p7, :cond_0

    const/4 v2, 0x1

    move/from16 v0, v26

    if-lt v0, v2, :cond_0

    .line 1221
    packed-switch p3, :pswitch_data_0

    .line 1266
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Contact source location can not be changed currently."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1269
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1197
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1228
    :pswitch_0
    const/16 v25, 0x0

    .line 1230
    .local v25, simUpdateResult:I
    const-string v5, ""

    .line 1231
    .local v5, newSimName:Ljava/lang/String;
    const-string v6, ""

    .line 1232
    .local v6, newSimNumber:Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1237
    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 1242
    :goto_2
    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1245
    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v2}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v6

    :goto_3
    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v7, p3

    .line 1250
    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v25

    .line 1254
    const/4 v2, 0x1

    move/from16 v0, v25

    if-ge v0, v2, :cond_5

    .line 1256
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Failed to update contact in SIM."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    const-wide/16 v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1260
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 1239
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const-string v3, "No new SIM name"

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1247
    :cond_4
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const-string v3, "No new SIM number"

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1273
    .end local v5           #newSimName:Ljava/lang/String;
    .end local v6           #newSimNumber:Ljava/lang/String;
    .end local v25           #simUpdateResult:I
    :cond_5
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1274
    invoke-virtual/range {p6 .. p6}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getAllContactData()Ljava/util/List;

    move-result-object v8

    .line 1275
    .local v8, allData:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/ContactData;>;"
    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    .line 1276
    .local v22, newIdSet:Ljava/lang/StringBuffer;
    const/4 v10, -0x1

    .line 1278
    .local v10, contactDataIndex:I
    if-eqz v8, :cond_0

    .line 1282
    const/16 v18, 0x0

    .line 1283
    .local v18, i:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 1284
    .local v12, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    add-int/lit8 v18, v18, 0x1

    .line 1286
    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 1289
    packed-switch p3, :pswitch_data_1

    .line 1302
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Contact source location can not be changed currently."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1309
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->isFull()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ne v0, v2, :cond_6

    .line 1310
    :cond_7
    const/4 v15, 0x0

    .line 1312
    .local v15, dataResults:[Landroid/content/ContentProviderResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v15

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1326
    if-eqz v15, :cond_6

    .line 1327
    move-object v9, v15

    .local v9, arr$:[Landroid/content/ContentProviderResult;
    array-length v0, v9

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v20, 0x0

    .local v20, i$:I
    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    aget-object v23, v9, v20

    .line 1329
    .local v23, result:Landroid/content/ContentProviderResult;
    add-int/lit8 v10, v10, 0x1

    .line 1330
    if-nez v23, :cond_9

    .line 1327
    :cond_8
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1295
    .end local v9           #arr$:[Landroid/content/ContentProviderResult;
    .end local v15           #dataResults:[Landroid/content/ContentProviderResult;
    .end local v20           #i$:I
    .end local v21           #len$:I
    .end local v23           #result:Landroid/content/ContentProviderResult;
    :pswitch_2
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const-string v3, "update SIM contact data"

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2, v12}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendSimContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    goto :goto_4

    .line 1299
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v2, v12}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    goto :goto_4

    .line 1313
    .restart local v15       #dataResults:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v17

    .line 1314
    .local v17, e:Landroid/os/RemoteException;
    const/4 v2, 0x6

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local v17           #e:Landroid/os/RemoteException;
    :goto_7
    invoke-virtual {v2}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    goto/16 :goto_0

    .line 1317
    :catch_1
    move-exception v17

    .line 1318
    .local v17, e:Landroid/content/OperationApplicationException;
    const/4 v2, 0x6

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_7

    .end local v17           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v3}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    throw v2

    .line 1334
    .restart local v9       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v20       #i$:I
    .restart local v21       #len$:I
    .restart local v23       #result:Landroid/content/ContentProviderResult;
    :cond_9
    :try_start_3
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 1336
    .local v13, dataId:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1337
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 1339
    .local v11, currentData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    if-eqz v11, :cond_8

    .line 1342
    invoke-virtual {v11, v13, v14}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    .line 1344
    .end local v11           #currentData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v13           #dataId:J
    :catch_2
    move-exception v17

    .line 1345
    .local v17, e:Ljava/lang/NumberFormatException;
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Exception occurs when trying to get inserted id of contact data"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1358
    .end local v9           #arr$:[Landroid/content/ContentProviderResult;
    .end local v12           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v15           #dataResults:[Landroid/content/ContentProviderResult;
    .end local v17           #e:Ljava/lang/NumberFormatException;
    .end local v20           #i$:I
    .end local v21           #len$:I
    .end local v23           #result:Landroid/content/ContentProviderResult;
    :cond_a
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 1359
    .local v24, selection:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1360
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1361
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_b

    .line 1362
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND _id NOT IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1364
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 1370
    .local v16, deleteCount:I
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    const/4 v3, 0x4

    aput-object p6, v2, v3

    const/4 v3, 0x5

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delete data count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1221
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1289
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateContact(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mediatek/apst/util/entity/contacts/RawContact;Z)I
    .locals 37
    .parameter "id"
    .parameter "sourceLocation"
    .parameter "simName"
    .parameter "simNumber"
    .parameter "simEmail"
    .parameter "newContact"
    .parameter "updatePIMData"

    .prologue
    .line 1406
    if-nez p7, :cond_1

    .line 1407
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p6, v3, v4

    const/4 v4, 0x5

    aput-object p7, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "New contact passed in is null."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1410
    const/16 v35, 0x0

    .line 1609
    :cond_0
    :goto_0
    return v35

    .line 1413
    :cond_1
    const/16 v35, 0x0

    .line 1415
    .local v35, updateCount:I
    new-instance v36, Landroid/content/ContentValues;

    const/4 v3, 0x2

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 1419
    .local v36, values:Landroid/content/ContentValues;
    const-string v4, "starred"

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isStarred()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1423
    const-string v3, "send_to_voicemail"

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->isSendToVoicemail()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1430
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v35

    .line 1437
    if-eqz p8, :cond_0

    const/4 v3, 0x1

    move/from16 v0, v35

    if-lt v0, v3, :cond_0

    .line 1443
    packed-switch p3, :pswitch_data_0

    .line 1503
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Contact source location can not be changed currently."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1506
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 1419
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1450
    :pswitch_0
    const/16 v34, 0x0

    .line 1452
    .local v34, simUpdateResult:I
    const-string v7, ""

    .line 1453
    .local v7, newSimName:Ljava/lang/String;
    const-string v8, ""

    .line 1454
    .local v8, newSimNumber:Ljava/lang/String;
    const-string v9, ""

    .line 1455
    .local v9, newSimEmail:Ljava/lang/String;
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1460
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getNames()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/StructuredName;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/StructuredName;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    .line 1465
    :goto_2
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1468
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getPhones()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Phone;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Phone;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 1473
    :goto_3
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1476
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/apst/util/entity/contacts/Email;

    invoke-virtual {v3}, Lcom/mediatek/apst/util/entity/contacts/Email;->getData()Ljava/lang/String;

    move-result-object v9

    .line 1482
    :goto_4
    invoke-static/range {p3 .. p3}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->isSimUsimType(I)Z

    move-result v29

    .line 1483
    .local v29, isUSIM:Z
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getEmails()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    if-eqz v29, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v10, p3

    .line 1484
    invoke-virtual/range {v3 .. v10}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34

    .line 1491
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v34

    if-ge v0, v3, :cond_7

    .line 1493
    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object v7, v3, v4

    const/4 v4, 0x5

    aput-object v8, v3, v4

    const/4 v4, 0x6

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Failed to update contact in SIM."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1496
    const-wide/16 v3, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v3, v4}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V

    .line 1497
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 1462
    .end local v29           #isUSIM:Z
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const-string v4, "No new SIM name"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1470
    :cond_4
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const-string v4, "No new SIM number"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1478
    :cond_5
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    const-string v4, "No new SIM email"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .restart local v29       #isUSIM:Z
    :cond_6
    move-object/from16 v10, p0

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object v13, v7

    move-object v14, v8

    move/from16 v15, p3

    .line 1487
    invoke-virtual/range {v10 .. v15}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->updateSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34

    goto :goto_5

    .line 1510
    .end local v7           #newSimName:Ljava/lang/String;
    .end local v8           #newSimNumber:Ljava/lang/String;
    .end local v9           #newSimEmail:Ljava/lang/String;
    .end local v29           #isUSIM:Z
    .end local v34           #simUpdateResult:I
    :cond_7
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v3}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1511
    invoke-virtual/range {p7 .. p7}, Lcom/mediatek/apst/util/entity/contacts/RawContact;->getAllContactData()Ljava/util/List;

    move-result-object v16

    .line 1512
    .local v16, allData:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/ContactData;>;"
    new-instance v31, Ljava/lang/StringBuffer;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuffer;-><init>()V

    .line 1513
    .local v31, newIdSet:Ljava/lang/StringBuffer;
    const/16 v18, -0x1

    .line 1515
    .local v18, contactDataIndex:I
    if-eqz v16, :cond_0

    .line 1519
    const/16 v26, 0x0

    .line 1520
    .local v26, i:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 1521
    .local v20, data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    add-int/lit8 v26, v26, 0x1

    .line 1523
    move-object/from16 v0, v20

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->setRawContactId(J)V

    .line 1526
    packed-switch p3, :pswitch_data_1

    .line 1539
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Contact source location can not be changed currently."

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v3}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->isFull()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v26

    if-ne v0, v3, :cond_8

    .line 1547
    :cond_9
    const/16 v23, 0x0

    .line 1549
    .local v23, dataResults:[Landroid/content/ContentProviderResult;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v23

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v3}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 1563
    if-eqz v23, :cond_8

    .line 1564
    move-object/from16 v17, v23

    .local v17, arr$:[Landroid/content/ContentProviderResult;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v30, v0

    .local v30, len$:I
    const/16 v28, 0x0

    .local v28, i$:I
    :goto_7
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_8

    aget-object v32, v17, v28

    .line 1566
    .local v32, result:Landroid/content/ContentProviderResult;
    add-int/lit8 v18, v18, 0x1

    .line 1567
    if-nez v32, :cond_b

    .line 1564
    :cond_a
    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 1532
    .end local v17           #arr$:[Landroid/content/ContentProviderResult;
    .end local v23           #dataResults:[Landroid/content/ContentProviderResult;
    .end local v28           #i$:I
    .end local v30           #len$:I
    .end local v32           #result:Landroid/content/ContentProviderResult;
    :pswitch_2
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const-string v4, "update SIM contact data"

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendSimContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    goto :goto_6

    .line 1536
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendContactDataInsert(Lcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    goto :goto_6

    .line 1550
    .restart local v23       #dataResults:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v25

    .line 1551
    .local v25, e:Landroid/os/RemoteException;
    const/4 v3, 0x6

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local v25           #e:Landroid/os/RemoteException;
    :goto_9
    invoke-virtual {v3}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    goto/16 :goto_0

    .line 1554
    :catch_1
    move-exception v25

    .line 1555
    .local v25, e:Landroid/content/OperationApplicationException;
    const/4 v3, 0x6

    :try_start_2
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x0

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_9

    .end local v25           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v4}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    throw v3

    .line 1571
    .restart local v17       #arr$:[Landroid/content/ContentProviderResult;
    .restart local v28       #i$:I
    .restart local v30       #len$:I
    .restart local v32       #result:Landroid/content/ContentProviderResult;
    :cond_b
    :try_start_3
    move-object/from16 v0, v32

    iget-object v3, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v21

    .line 1573
    .local v21, dataId:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1574
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/mediatek/apst/util/entity/contacts/ContactData;

    .line 1576
    .local v19, currentData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    if-eqz v19, :cond_a

    .line 1579
    move-object/from16 v0, v19

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->setId(J)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8

    .line 1581
    .end local v19           #currentData:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v21           #dataId:J
    :catch_2
    move-exception v25

    .line 1582
    .local v25, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Exception occurs when trying to get inserted id of contact data"

    move-object/from16 v0, v25

    invoke-static {v3, v4, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1595
    .end local v17           #arr$:[Landroid/content/ContentProviderResult;
    .end local v20           #data:Lcom/mediatek/apst/util/entity/contacts/ContactData;
    .end local v23           #dataResults:[Landroid/content/ContentProviderResult;
    .end local v25           #e:Ljava/lang/NumberFormatException;
    .end local v28           #i$:I
    .end local v30           #len$:I
    .end local v32           #result:Landroid/content/ContentProviderResult;
    :cond_c
    new-instance v33, Ljava/lang/StringBuffer;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuffer;-><init>()V

    .line 1596
    .local v33, selection:Ljava/lang/StringBuffer;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw_contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1597
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 1598
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 1599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _id NOT IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1601
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v24

    .line 1607
    .local v24, deleteCount:I
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p4, v3, v4

    const/4 v4, 0x3

    aput-object p5, v3, v4

    const/4 v4, 0x4

    aput-object p7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete old data count"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1443
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 1526
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateContactData(JLcom/mediatek/apst/util/entity/contacts/ContactData;Z)I
    .locals 12
    .parameter "dataId"
    .parameter "newData"
    .parameter "validateContactId"

    .prologue
    .line 4074
    if-nez p3, :cond_0

    .line 4075
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "New contact data passed in is null."

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4077
    const/4 v11, 0x0

    .line 4126
    :goto_0
    return v11

    .line 4080
    :cond_0
    const/4 v11, 0x0

    .line 4082
    .local v11, updateCount:I
    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/ContactData;->getRawContactId()J

    move-result-wide v7

    .line 4083
    .local v7, cId:J
    if-eqz p4, :cond_3

    .line 4084
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 4087
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 4088
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cursor is null. Failed to find raw contact with id of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4092
    const/4 v11, 0x0

    goto :goto_0

    .line 4093
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 4094
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw contact id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 4097
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4098
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 4100
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 4103
    .end local v6           #c:Landroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v0}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    .line 4104
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->appendContactDataUpdate(JLcom/mediatek/apst/util/entity/contacts/ContactData;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4107
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;->apply()[Landroid/content/ContentProviderResult;

    move-result-object v10

    .line 4108
    .local v10, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    aget-object v0, v10, v0

    iget-object v0, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    .line 4120
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    .end local v10           #results:[Landroid/content/ContentProviderResult;
    :goto_1
    invoke-virtual {v0}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    goto/16 :goto_0

    .line 4109
    :catch_0
    move-exception v9

    .line 4110
    .local v9, e:Landroid/os/RemoteException;
    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4113
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4120
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_1

    .line 4114
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v9

    .line 4115
    .local v9, e:Landroid/content/OperationApplicationException;
    const/4 v0, 0x3

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 v1, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1, v9}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4118
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4120
    iget-object v0, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    goto :goto_1

    .end local v9           #e:Landroid/content/OperationApplicationException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->mOpBatch:Lcom/mediatek/apst/target/data/proxy/contacts/ContactsOperationBatch;

    invoke-virtual {v1}, Lcom/mediatek/android/content/ContentProviderOperationBatch;->clear()V

    throw v0

    .line 4123
    :cond_4
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public updateGroup(JLcom/mediatek/apst/util/entity/contacts/Group;)I
    .locals 7
    .parameter "id"
    .parameter "newGroup"

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 3639
    if-nez p3, :cond_0

    .line 3640
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    aput-object p3, v2, v6

    const-string v3, "New group passed in is null."

    invoke-static {v2, v3}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3657
    :goto_0
    return v0

    .line 3645
    :cond_0
    const/4 v0, 0x0

    .line 3647
    .local v0, updateCount:I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3648
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "title"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    const-string v2, "notes"

    invoke-virtual {p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3651
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "deleted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "<>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3657
    goto :goto_0
.end method

.method public updateGroup(JLcom/mediatek/apst/util/entity/contacts/Group;Ljava/lang/String;)I
    .locals 15
    .parameter "id"
    .parameter "newGroup"
    .parameter "oldName"

    .prologue
    .line 3674
    if-nez p3, :cond_0

    .line 3675
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object p3, v11, v12

    const-string v12, "New group passed in is null."

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3677
    const/4 v9, 0x0

    .line 3741
    :goto_0
    return v9

    .line 3680
    :cond_0
    const/4 v9, 0x0

    .line 3682
    .local v9, updateCount:I
    new-instance v10, Landroid/content/ContentValues;

    const/4 v11, 0x2

    invoke-direct {v10, v11}, Landroid/content/ContentValues;-><init>(I)V

    .line 3683
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "title"

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3684
    const-string v11, "notes"

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getNotes()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3687
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_type()Ljava/lang/String;

    move-result-object v3

    .line 3688
    .local v3, accountType:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getAccount_name()Ljava/lang/String;

    move-result-object v2

    .line 3690
    .local v2, accountName:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v11, "USIM Account"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3692
    const/4 v7, -0x1

    .line 3694
    .local v7, simGroupId:I
    :try_start_0
    invoke-static {v2}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->getSlotIdByAccountName(Ljava/lang/String;)I

    move-result v8

    .line 3695
    .local v8, slotId:I
    move-object/from16 v0, p4

    invoke-static {v8, v0}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->hasExistGroup(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 3700
    .end local v8           #slotId:I
    :goto_1
    :try_start_1
    const-string v11, "USIM0"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3701
    const/4 v11, 0x0

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v7, v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->updateUSIMGroup(IILjava/lang/String;)I

    move-result v6

    .line 3703
    .local v6, idInUSIM:I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Account name is USIM0; Group id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3735
    .end local v6           #idInUSIM:I
    .end local v7           #simGroupId:I
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "deleted"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "<>"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v10, v13, v14}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 3741
    goto/16 :goto_0

    .line 3696
    .restart local v7       #simGroupId:I
    :catch_0
    move-exception v5

    .line 3697
    .local v5, e1:Landroid/os/RemoteException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3706
    .end local v5           #e1:Landroid/os/RemoteException;
    :cond_2
    :try_start_2
    const-string v11, "USIM1"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3707
    const/4 v11, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v7, v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->updateUSIMGroup(IILjava/lang/String;)I

    move-result v6

    .line 3709
    .restart local v6       #idInUSIM:I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Account name is USIM1Group id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 3728
    .end local v6           #idInUSIM:I
    :catch_1
    move-exception v4

    .line 3729
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 3712
    .end local v4           #e:Landroid/os/RemoteException;
    :cond_3
    :try_start_3
    const-string v11, "USIM2"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3713
    const/4 v11, 0x2

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v7, v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->updateUSIMGroup(IILjava/lang/String;)I

    move-result v6

    .line 3715
    .restart local v6       #idInUSIM:I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Account name is USIM2Group id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_2

    .line 3730
    .end local v6           #idInUSIM:I
    :catch_2
    move-exception v4

    .line 3731
    .local v4, e:Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 3718
    .end local v4           #e:Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException;
    :cond_4
    :try_start_4
    const-string v11, "USIM3"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3719
    const/4 v11, 0x3

    invoke-virtual/range {p3 .. p3}, Lcom/mediatek/apst/util/entity/contacts/Group;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v7, v12}, Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils;->updateUSIMGroup(IILjava/lang/String;)I

    move-result v6

    .line 3721
    .restart local v6       #idInUSIM:I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Account name is USIM2Group id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logI([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3725
    .end local v6           #idInUSIM:I
    :cond_5
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p3, v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Account name is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/mediatek/apst/target/data/proxy/contacts/USIMUtils$USIMGroupException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2
.end method

.method public updateGroupForRestore(Ljava/util/List;)I
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/apst/util/entity/contacts/Group;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3750
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/apst/util/entity/contacts/Group;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/apst/util/entity/contacts/Group;

    .line 3751
    .local v1, group:Lcom/mediatek/apst/util/entity/contacts/Group;
    invoke-static {v1}, Lcom/mediatek/apst/target/data/provider/contacts/GroupContent;->groupToValues(Lcom/mediatek/apst/util/entity/contacts/Group;)Landroid/content/ContentValues;

    move-result-object v3

    .line 3752
    .local v3, values:Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 3753
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mediatek/apst/util/entity/DatabaseRecordEntity;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 3756
    .local v0, count:I
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update count :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    .line 3757
    if-nez v0, :cond_0

    .line 3758
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Lcom/mediatek/apst/target/data/provider/contacts/GroupContent;->groupToValues(Lcom/mediatek/apst/util/entity/contacts/Group;)Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 3763
    .end local v0           #count:I
    .end local v1           #group:Lcom/mediatek/apst/util/entity/contacts/Group;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    return v4
.end method

.method public updateSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "sourceLocation"

    .prologue
    .line 436
    move-object v2, p1

    .line 437
    .local v2, oName:Ljava/lang/String;
    move-object v3, p2

    .line 438
    .local v3, oNumber:Ljava/lang/String;
    move-object v0, p3

    .line 439
    .local v0, nName:Ljava/lang/String;
    move-object v1, p4

    .line 440
    .local v1, nNumber:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-nez v3, :cond_2

    .line 444
    :cond_0
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "\'oldName\' and \'oldNumber\' must not be null."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    const/4 v4, 0x0

    .line 496
    :cond_1
    :goto_0
    return v4

    .line 450
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 455
    :cond_4
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "must not be equal."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    const/4 v4, 0x0

    goto :goto_0

    .line 459
    :cond_5
    if-nez v0, :cond_9

    .line 461
    move-object v0, v2

    .line 467
    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 468
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 471
    :cond_7
    if-eqz v1, :cond_8

    .line 472
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    :cond_8
    const/4 v4, 0x0

    .line 476
    .local v4, result:I
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 477
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "tag"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const-string v6, "number"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v6, "newTag"

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v6, "newNumber"

    invoke-virtual {v5, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v6

    invoke-static {p5}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 484
    if-gez v4, :cond_a

    .line 485
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update SIM contact, result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 462
    .end local v4           #result:I
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_9
    if-nez v1, :cond_6

    .line 464
    move-object v1, v3

    goto :goto_1

    .line 488
    .restart local v4       #result:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_a
    const/4 v6, 0x1

    if-le v4, v6, :cond_1

    .line 490
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v0, v6, v7

    const/4 v7, 0x3

    aput-object v1, v6, v7

    const/4 v7, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "Updated several SIM contacts in one time, please check if it is normal."

    invoke-static {v6, v7}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateSimContact(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 11
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oEmail"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "nEmail"
    .parameter "sourceLocation"

    .prologue
    .line 524
    move-object v3, p1

    .line 525
    .local v3, oName:Ljava/lang/String;
    move-object v4, p2

    .line 526
    .local v4, oNumber:Ljava/lang/String;
    move-object v1, p4

    .line 527
    .local v1, nName:Ljava/lang/String;
    move-object/from16 v2, p5

    .line 528
    .local v2, nNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-nez v4, :cond_2

    .line 532
    :cond_0
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v2, v7, v8

    const/4 v8, 0x5

    aput-object p6, v7, v8

    const/4 v8, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "\'oldName\' and \'oldNumber\' must not be null."

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    const/4 v5, 0x0

    .line 583
    :cond_1
    :goto_0
    return v5

    .line 538
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 544
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 545
    :cond_5
    if-nez v1, :cond_9

    .line 547
    move-object v1, v3

    .line 553
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 554
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 557
    :cond_7
    if-eqz v2, :cond_8

    .line 558
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 561
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x6

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 562
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "tag"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v7, "number"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const-string v7, "emails"

    invoke-virtual {v6, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v7, "newTag"

    invoke-virtual {v6, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v7, "newNumber"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v7, "newEmails"

    move-object/from16 v0, p6

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getObservedContentResolver()Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;

    move-result-object v7

    invoke-static/range {p7 .. p7}, Lcom/mediatek/apst/target/data/proxy/contacts/ContactsProxy;->getSimUri(I)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v6, v9, v10}, Lcom/mediatek/apst/target/data/proxy/ObservedContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 571
    .local v5, result:I
    if-gez v5, :cond_a

    .line 572
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v2, v7, v8

    const/4 v8, 0x5

    aput-object p6, v7, v8

    const/4 v8, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update SIM contact, result is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logE([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .end local v5           #result:I
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_9
    if-nez v2, :cond_6

    .line 550
    move-object v2, v4

    goto :goto_1

    .line 575
    .restart local v5       #result:I
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_a
    const/4 v7, 0x1

    if-le v5, v7, :cond_1

    .line 577
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object v1, v7, v8

    const/4 v8, 0x4

    aput-object v2, v7, v8

    const/4 v8, 0x5

    aput-object p6, v7, v8

    const/4 v8, 0x6

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const-string v8, "Updated several SIM contacts in one time, please check if it is normal."

    invoke-static {v7, v8}, Lcom/mediatek/apst/target/util/Debugger;->logW([Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updateSyncDate(J)Z
    .locals 3
    .parameter "lastSyncDate"

    .prologue
    .line 4534
    invoke-virtual {p0}, Lcom/mediatek/apst/target/data/proxy/ContextBasedProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/apst/target/util/SharedPrefs;->open(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LAST_SYNC_DATE"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SYNC_NEED_REINIT"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4537
    const/4 v0, 0x1

    return v0
.end method
