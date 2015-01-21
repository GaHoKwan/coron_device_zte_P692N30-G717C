.class public final Ltmsdkobf/dv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/dv$a;
    }
.end annotation


# static fields
.field private static i:I

.field private static jO:I

.field private static kA:I

.field private static kb:I

.field private static kg:I

.field private static kh:I

.field private static ki:I

.field private static kj:I

.field private static kk:I

.field private static kl:I

.field private static km:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdkobf/dv$a;",
            ">;"
        }
    .end annotation
.end field

.field private static kn:J

.field private static ko:J

.field private static kp:J

.field private static kq:J

.field private static kr:J

.field private static ks:J

.field private static kt:J

.field private static ku:J

.field private static kv:J

.field private static kw:J

.field private static kx:I

.field private static ky:I

.field private static kz:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v1, 0x4e20

    const/4 v4, 0x3

    const/16 v3, 0x61a8

    const/16 v2, 0x3a98

    .line 17
    const/16 v0, 0x2710

    sput v0, Ltmsdkobf/dv;->jO:I

    .line 19
    sput v2, Ltmsdkobf/dv;->kb:I

    .line 21
    const/16 v0, 0x1388

    sput v0, Ltmsdkobf/dv;->kg:I

    .line 23
    sput v1, Ltmsdkobf/dv;->kh:I

    .line 25
    sput v3, Ltmsdkobf/dv;->ki:I

    .line 27
    sput v2, Ltmsdkobf/dv;->kj:I

    .line 29
    sput v5, Ltmsdkobf/dv;->kk:I

    .line 31
    sput v4, Ltmsdkobf/dv;->kl:I

    .line 101
    const/16 v0, 0x2ee0

    sput v0, Ltmsdkobf/dv;->jO:I

    sput v1, Ltmsdkobf/dv;->kb:I

    const/16 v0, 0x1f40

    sput v0, Ltmsdkobf/dv;->kg:I

    sput v1, Ltmsdkobf/dv;->kh:I

    sput v3, Ltmsdkobf/dv;->ki:I

    sput v2, Ltmsdkobf/dv;->kj:I

    sput v5, Ltmsdkobf/dv;->kk:I

    sput v4, Ltmsdkobf/dv;->kl:I

    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sput v2, Ltmsdkobf/dv;->jO:I

    sput v3, Ltmsdkobf/dv;->kb:I

    const/16 v0, 0x2710

    sput v0, Ltmsdkobf/dv;->kg:I

    sput v3, Ltmsdkobf/dv;->kh:I

    const v0, 0x88b8

    sput v0, Ltmsdkobf/dv;->ki:I

    sput v2, Ltmsdkobf/dv;->kj:I

    const/4 v0, 0x2

    sput v0, Ltmsdkobf/dv;->kk:I

    const/4 v0, 0x4

    sput v0, Ltmsdkobf/dv;->kl:I

    .line 14
    :cond_0
    return-void
.end method

.method public static Q()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 493
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ltmsdkobf/dv;->c(J)Ltmsdkobf/dv$a;

    move-result-object v2

    .line 494
    .local v2, item:Ltmsdkobf/dv$a;
    if-nez v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Ltmsdkobf/dv$a;->ko:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    .line 497
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdkobf/dv$a;->ko:J

    .line 498
    iget-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    sput-wide v3, Ltmsdkobf/dv;->ks:J

    .line 499
    iget-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    sget-wide v5, Ltmsdkobf/dv;->kq:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    :goto_1
    sput-wide v3, Ltmsdkobf/dv;->kq:J

    .line 500
    iget-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    sget-wide v5, Ltmsdkobf/dv;->kr:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    iget-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    :goto_2
    sput-wide v3, Ltmsdkobf/dv;->kr:J

    .line 502
    sget-object v3, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 503
    sget-object v4, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    monitor-enter v4

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, count:I
    :try_start_0
    sget-object v3, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 511
    if-lez v0, :cond_3

    .line 512
    sget-wide v5, Ltmsdkobf/dv;->kp:J

    int-to-long v7, v0

    div-long/2addr v5, v7

    sput-wide v5, Ltmsdkobf/dv;->kp:J

    .line 503
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 499
    .end local v0           #count:I
    :cond_4
    sget-wide v3, Ltmsdkobf/dv;->kq:J

    goto :goto_1

    .line 501
    :cond_5
    sget-wide v3, Ltmsdkobf/dv;->kr:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_6

    iget-wide v3, v2, Ltmsdkobf/dv$a;->kp:J

    goto :goto_2

    :cond_6
    sget-wide v3, Ltmsdkobf/dv;->kr:J

    goto :goto_2

    .line 505
    .restart local v0       #count:I
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/dv$a;

    .line 506
    .local v1, info:Ltmsdkobf/dv$a;
    iget-wide v5, v1, Ltmsdkobf/dv$a;->kp:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 507
    sget-wide v5, Ltmsdkobf/dv;->kp:J

    iget-wide v7, v1, Ltmsdkobf/dv$a;->kp:J

    add-long/2addr v5, v7

    sput-wide v5, Ltmsdkobf/dv;->kp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static R()I
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 205
    sget v3, Ltmsdkobf/dv;->jO:I

    .line 207
    .local v3, result:I
    sget-wide v5, Ltmsdkobf/dv;->kp:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    sget-wide v5, Ltmsdkobf/dv;->kq:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    .line 208
    sget-wide v5, Ltmsdkobf/dv;->ks:J

    sget-wide v7, Ltmsdkobf/dv;->kp:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sget-wide v7, Ltmsdkobf/dv;->kq:J

    add-long/2addr v5, v7

    sget-wide v7, Ltmsdkobf/dv;->kr:J

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 211
    :cond_0
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 212
    const-string v6, "connectivity"

    .line 211
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 213
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 215
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 217
    .local v4, type:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 218
    sget v3, Ltmsdkobf/dv;->kb:I

    .line 238
    .end local v2           #ni:Landroid/net/NetworkInfo;
    .end local v4           #type:I
    :cond_1
    :goto_0
    sget v5, Ltmsdkobf/dv;->kA:I

    sget v6, Ltmsdkobf/dv;->kg:I

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 239
    sget v5, Ltmsdkobf/dv;->kg:I

    if-gt v3, v5, :cond_2

    .line 240
    sget v3, Ltmsdkobf/dv;->kg:I

    .line 241
    :cond_2
    int-to-long v5, v3

    sget-wide v7, Ltmsdkobf/dv;->kq:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 242
    sget-wide v5, Ltmsdkobf/dv;->kq:J

    sget v7, Ltmsdkobf/dv;->kg:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    long-to-int v3, v5

    .line 243
    :cond_3
    sget v5, Ltmsdkobf/dv;->kb:I

    if-lt v3, v5, :cond_4

    .line 244
    sget v3, Ltmsdkobf/dv;->kb:I

    .line 246
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ltmsdkobf/dv;->c(J)Ltmsdkobf/dv$a;

    move-result-object v1

    .line 247
    .local v1, item:Ltmsdkobf/dv$a;
    if-nez v1, :cond_5

    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ltmsdkobf/dv;->b(J)Ltmsdkobf/dv$a;

    move-result-object v1

    .line 249
    :cond_5
    iget v5, v1, Ltmsdkobf/dv$a;->kb:I

    sget v6, Ltmsdkobf/dv;->kg:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    .line 250
    iget v5, v1, Ltmsdkobf/dv$a;->kb:I

    sget v6, Ltmsdkobf/dv;->kg:I

    add-int v3, v5, v6

    .line 251
    :cond_6
    iput v3, v1, Ltmsdkobf/dv$a;->kb:I

    .line 253
    return v3

    .line 221
    .end local v1           #item:Ltmsdkobf/dv$a;
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    .restart local v4       #type:I
    :cond_7
    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 222
    sget-wide v5, Ltmsdkobf/dv;->kq:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    sget-wide v5, Ltmsdkobf/dv;->kq:J

    sget v7, Ltmsdkobf/dv;->kg:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 223
    sget v3, Ltmsdkobf/dv;->kg:I

    goto :goto_0

    .line 225
    :cond_8
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 226
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 225
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 227
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ltmsdkobf/dv;->aw(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 228
    sget-wide v5, Ltmsdkobf/dv;->kq:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    sget-wide v5, Ltmsdkobf/dv;->kq:J

    sget v7, Ltmsdkobf/dv;->kg:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 229
    sget v3, Ltmsdkobf/dv;->kg:I

    goto/16 :goto_0

    .line 231
    :cond_9
    sget-wide v5, Ltmsdkobf/dv;->kq:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    sget-wide v5, Ltmsdkobf/dv;->kq:J

    sget v7, Ltmsdkobf/dv;->kg:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 232
    sget v3, Ltmsdkobf/dv;->kg:I

    goto/16 :goto_0
.end method

.method public static U()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 536
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ltmsdkobf/dv;->c(J)Ltmsdkobf/dv$a;

    move-result-object v2

    .line 537
    .local v2, item:Ltmsdkobf/dv$a;
    if-nez v2, :cond_1

    .line 559
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Ltmsdkobf/dv$a;->ko:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Ltmsdkobf/dv$a;->ko:J

    .line 541
    iget-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    sput-wide v3, Ltmsdkobf/dv;->kw:J

    .line 542
    iget-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    sget-wide v5, Ltmsdkobf/dv;->ku:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    :goto_1
    sput-wide v3, Ltmsdkobf/dv;->ku:J

    .line 544
    iget-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    sget-wide v5, Ltmsdkobf/dv;->kv:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_5

    iget-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    :goto_2
    sput-wide v3, Ltmsdkobf/dv;->kv:J

    .line 546
    sget-object v3, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 547
    sget-object v4, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    monitor-enter v4

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, count:I
    :try_start_0
    sget-object v3, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    .line 555
    if-lez v0, :cond_3

    .line 556
    sget-wide v5, Ltmsdkobf/dv;->kt:J

    int-to-long v7, v0

    div-long/2addr v5, v7

    sput-wide v5, Ltmsdkobf/dv;->kt:J

    .line 547
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 543
    .end local v0           #count:I
    :cond_4
    sget-wide v3, Ltmsdkobf/dv;->ku:J

    goto :goto_1

    .line 545
    :cond_5
    sget-wide v3, Ltmsdkobf/dv;->kv:J

    cmp-long v3, v3, v9

    if-nez v3, :cond_6

    iget-wide v3, v2, Ltmsdkobf/dv$a;->kq:J

    goto :goto_2

    :cond_6
    sget-wide v3, Ltmsdkobf/dv;->kv:J

    goto :goto_2

    .line 549
    .restart local v0       #count:I
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/dv$a;

    .line 550
    .local v1, info:Ltmsdkobf/dv$a;
    iget-wide v5, v1, Ltmsdkobf/dv$a;->kq:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_2

    .line 551
    sget-wide v5, Ltmsdkobf/dv;->kt:J

    iget-wide v7, v1, Ltmsdkobf/dv$a;->kq:J

    add-long/2addr v5, v7

    sput-wide v5, Ltmsdkobf/dv;->kt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static X()J
    .locals 6

    .prologue
    .line 198
    sget v2, Ltmsdkobf/dv;->kA:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 199
    .local v0, result:J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 200
    const-wide/16 v0, 0x2710

    .line 201
    :cond_0
    return-wide v0
.end method

.method public static Y()I
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    .line 257
    sget v3, Ltmsdkobf/dv;->kh:I

    .line 259
    .local v3, result:I
    sget-wide v5, Ltmsdkobf/dv;->kt:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    sget-wide v5, Ltmsdkobf/dv;->ku:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_0

    .line 260
    sget-wide v5, Ltmsdkobf/dv;->kw:J

    sget-wide v7, Ltmsdkobf/dv;->kt:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sget-wide v7, Ltmsdkobf/dv;->ku:J

    add-long/2addr v5, v7

    sget-wide v7, Ltmsdkobf/dv;->kv:J

    sub-long/2addr v5, v7

    long-to-int v3, v5

    .line 263
    :cond_0
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 264
    const-string v6, "connectivity"

    .line 263
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 265
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 267
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    .line 268
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 269
    .local v4, type:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 270
    sget v3, Ltmsdkobf/dv;->ki:I

    .line 290
    .end local v2           #ni:Landroid/net/NetworkInfo;
    .end local v4           #type:I
    :cond_1
    :goto_0
    sget v5, Ltmsdkobf/dv;->kA:I

    sget v6, Ltmsdkobf/dv;->kg:I

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 291
    sget v5, Ltmsdkobf/dv;->kj:I

    if-gt v3, v5, :cond_2

    .line 292
    sget v3, Ltmsdkobf/dv;->kj:I

    .line 293
    :cond_2
    int-to-long v5, v3

    sget-wide v7, Ltmsdkobf/dv;->ku:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    .line 294
    sget-wide v5, Ltmsdkobf/dv;->ku:J

    sget v7, Ltmsdkobf/dv;->kj:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    long-to-int v3, v5

    .line 295
    :cond_3
    sget v5, Ltmsdkobf/dv;->ki:I

    if-lt v3, v5, :cond_4

    .line 296
    sget v3, Ltmsdkobf/dv;->ki:I

    .line 298
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ltmsdkobf/dv;->c(J)Ltmsdkobf/dv$a;

    move-result-object v1

    .line 299
    .local v1, item:Ltmsdkobf/dv$a;
    if-eqz v1, :cond_7

    .line 300
    iget v5, v1, Ltmsdkobf/dv$a;->kg:I

    sget v6, Ltmsdkobf/dv;->kj:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_5

    .line 301
    iget v5, v1, Ltmsdkobf/dv$a;->kg:I

    sget v6, Ltmsdkobf/dv;->kj:I

    add-int v3, v5, v6

    .line 302
    :cond_5
    iget v5, v1, Ltmsdkobf/dv$a;->kb:I

    sget v6, Ltmsdkobf/dv;->kj:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    .line 303
    iget v5, v1, Ltmsdkobf/dv$a;->kb:I

    sget v6, Ltmsdkobf/dv;->kj:I

    add-int v3, v5, v6

    .line 304
    :cond_6
    iput v3, v1, Ltmsdkobf/dv$a;->kg:I

    .line 307
    :cond_7
    return v3

    .line 273
    .end local v1           #item:Ltmsdkobf/dv$a;
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    .restart local v4       #type:I
    :cond_8
    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 274
    sget-wide v5, Ltmsdkobf/dv;->ku:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    sget-wide v5, Ltmsdkobf/dv;->ku:J

    sget v7, Ltmsdkobf/dv;->kj:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 275
    sget v3, Ltmsdkobf/dv;->kj:I

    goto :goto_0

    .line 277
    :cond_9
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 278
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 277
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 279
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ltmsdkobf/dv;->aw(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 280
    sget-wide v5, Ltmsdkobf/dv;->ku:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    sget-wide v5, Ltmsdkobf/dv;->ku:J

    sget v7, Ltmsdkobf/dv;->kj:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 281
    sget v3, Ltmsdkobf/dv;->kj:I

    goto/16 :goto_0

    .line 283
    :cond_a
    sget-wide v5, Ltmsdkobf/dv;->ku:J

    cmp-long v5, v5, v9

    if-lez v5, :cond_1

    sget-wide v5, Ltmsdkobf/dv;->ku:J

    sget v7, Ltmsdkobf/dv;->kj:I

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 284
    sget v3, Ltmsdkobf/dv;->kj:I

    goto/16 :goto_0
.end method

.method public static Z()I
    .locals 10

    .prologue
    const/16 v9, 0x4e20

    const/16 v8, 0x3a98

    const/16 v7, 0x1388

    .line 311
    sget v3, Ltmsdkobf/dv;->kk:I

    .line 312
    .local v3, result:I
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 313
    const-string v6, "connectivity"

    .line 312
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 314
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 315
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 316
    .local v2, ni:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 317
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 318
    .local v4, type:I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 319
    add-int/lit8 v3, v3, 0x1

    .line 321
    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, info:Ljava/lang/String;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 324
    sget v5, Ltmsdkobf/dv;->i:I

    if-ge v5, v9, :cond_2

    sget v5, Ltmsdkobf/dv;->kz:I

    if-ge v5, v9, :cond_2

    .line 339
    :cond_1
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 344
    .end local v1           #info:Ljava/lang/String;
    .end local v2           #ni:Landroid/net/NetworkInfo;
    .end local v4           #type:I
    :cond_2
    sget v5, Ltmsdkobf/dv;->kA:I

    if-lez v5, :cond_3

    .line 345
    sget v5, Ltmsdkobf/dv;->kA:I

    add-int/2addr v3, v5

    .line 346
    :cond_3
    sget v5, Ltmsdkobf/dv;->kl:I

    if-le v3, v5, :cond_4

    .line 347
    sget v3, Ltmsdkobf/dv;->kl:I

    .line 348
    :cond_4
    return v3

    .line 327
    .restart local v1       #info:Ljava/lang/String;
    .restart local v2       #ni:Landroid/net/NetworkInfo;
    .restart local v4       #type:I
    :cond_5
    invoke-static {}, Ltmsdkobf/dw;->N()Landroid/content/Context;

    move-result-object v5

    .line 328
    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 327
    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 329
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ltmsdkobf/dv;->aw(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 330
    sget v5, Ltmsdkobf/dv;->i:I

    if-ge v5, v8, :cond_6

    sget v5, Ltmsdkobf/dv;->kz:I

    if-ge v5, v8, :cond_6

    .line 331
    add-int/lit8 v3, v3, 0x1

    .line 336
    :cond_6
    :goto_1
    if-nez v4, :cond_2

    .line 337
    const-string v5, "cmwap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "uniwap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 338
    const-string v5, "ctwap"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 333
    :cond_7
    sget v5, Ltmsdkobf/dv;->i:I

    if-ge v5, v7, :cond_6

    sget v5, Ltmsdkobf/dv;->kz:I

    if-ge v5, v7, :cond_6

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static av(I)V
    .locals 13
    .parameter "length"

    .prologue
    const-wide/16 v11, 0x0

    .line 562
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ltmsdkobf/dv;->c(J)Ltmsdkobf/dv$a;

    move-result-object v1

    .line 563
    .local v1, item:Ltmsdkobf/dv$a;
    if-nez v1, :cond_0

    .line 590
    :goto_0
    return-void

    .line 565
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, v1, Ltmsdkobf/dv$a;->ko:J

    sub-long/2addr v7, v9

    iput-wide v7, v1, Ltmsdkobf/dv$a;->kr:J

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v1, Ltmsdkobf/dv$a;->ko:J

    .line 567
    iput p0, v1, Ltmsdkobf/dv$a;->jO:I

    .line 568
    iget-wide v7, v1, Ltmsdkobf/dv$a;->kr:J

    cmp-long v7, v7, v11

    if-nez v7, :cond_3

    const-wide/16 v2, 0x1

    .line 569
    .local v2, recvtime:J
    :goto_1
    mul-int/lit16 v7, p0, 0x3e8

    int-to-long v7, v7

    div-long/2addr v7, v2

    long-to-int v7, v7

    .line 570
    sput v7, Ltmsdkobf/dv;->kz:I

    sget v8, Ltmsdkobf/dv;->kx:I

    if-le v7, v8, :cond_4

    sget v7, Ltmsdkobf/dv;->kz:I

    :goto_2
    sput v7, Ltmsdkobf/dv;->kx:I

    .line 571
    sget v7, Ltmsdkobf/dv;->kz:I

    sget v8, Ltmsdkobf/dv;->ky:I

    if-ge v7, v8, :cond_5

    sget v7, Ltmsdkobf/dv;->kz:I

    :goto_3
    sput v7, Ltmsdkobf/dv;->ky:I

    .line 573
    const/4 v4, 0x0

    .line 574
    .local v4, totallength:I
    const-wide/16 v5, 0x0

    .line 575
    .local v5, totaltime:J
    sget-object v7, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    if-eqz v7, :cond_1

    .line 576
    sget-object v8, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    monitor-enter v8

    .line 577
    :try_start_0
    sget-object v7, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 576
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    cmp-long v7, v5, v11

    if-lez v7, :cond_1

    .line 583
    mul-int/lit16 v7, v4, 0x3e8

    int-to-long v7, v7

    div-long/2addr v7, v5

    long-to-int v7, v7

    sput v7, Ltmsdkobf/dv;->i:I

    .line 585
    :cond_1
    sget v7, Ltmsdkobf/dv;->kA:I

    if-lez v7, :cond_2

    iget-wide v7, v1, Ltmsdkobf/dv$a;->kp:J

    sget v9, Ltmsdkobf/dv;->kg:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 586
    iget-wide v7, v1, Ltmsdkobf/dv$a;->kq:J

    sget v9, Ltmsdkobf/dv;->kj:I

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_2

    .line 587
    sget v7, Ltmsdkobf/dv;->kA:I

    add-int/lit8 v7, v7, -0x1

    sput v7, Ltmsdkobf/dv;->kA:I

    .line 588
    :cond_2
    iget-wide v7, v1, Ltmsdkobf/dv$a;->kp:J

    long-to-int v7, v7

    iput v7, v1, Ltmsdkobf/dv$a;->kb:I

    goto :goto_0

    .line 568
    .end local v2           #recvtime:J
    .end local v4           #totallength:I
    .end local v5           #totaltime:J
    :cond_3
    iget-wide v2, v1, Ltmsdkobf/dv$a;->kr:J

    goto :goto_1

    .line 570
    .restart local v2       #recvtime:J
    :cond_4
    sget v7, Ltmsdkobf/dv;->kx:I

    goto :goto_2

    .line 572
    :cond_5
    sget v7, Ltmsdkobf/dv;->ky:I

    if-nez v7, :cond_6

    sget v7, Ltmsdkobf/dv;->kz:I

    goto :goto_3

    :cond_6
    sget v7, Ltmsdkobf/dv;->ky:I

    goto :goto_3

    .line 577
    .restart local v4       #totallength:I
    .restart local v5       #totaltime:J
    :cond_7
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/dv$a;

    .line 578
    .local v0, info:Ltmsdkobf/dv$a;
    iget v9, v0, Ltmsdkobf/dv$a;->jO:I

    add-int/2addr v4, v9

    .line 579
    iget-wide v9, v0, Ltmsdkobf/dv$a;->kr:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v5, v9

    goto :goto_4

    .line 576
    .end local v0           #info:Ltmsdkobf/dv$a;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static aw(I)Z
    .locals 2
    .parameter "subType"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 352
    packed-switch p0, :pswitch_data_0

    .line 386
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    move v0, v1

    .line 360
    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 362
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 366
    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 368
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 370
    goto :goto_0

    :pswitch_6
    move v0, v1

    .line 372
    goto :goto_0

    .line 352
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private static b(J)Ltmsdkobf/dv$a;
    .locals 14
    .parameter "tid"

    .prologue
    const-wide/16 v12, 0x0

    .line 596
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 597
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    .line 599
    :cond_0
    sget-object v7, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    monitor-enter v7

    .line 600
    :try_start_0
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v8, 0x14

    if-le v6, v8, :cond_3

    .line 602
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 603
    .local v4, size:I
    const/4 v2, 0x0

    .line 604
    .local v2, pos:I
    const/4 v3, 0x0

    .line 605
    .local v3, removed:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    div-int/lit8 v6, v4, 0x2

    if-lt v0, v6, :cond_4

    .line 614
    if-eqz v3, :cond_3

    .line 615
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    sput-wide v8, Ltmsdkobf/dv;->kn:J

    .line 616
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    const-wide/16 v8, 0x0

    sput-wide v8, Ltmsdkobf/dv;->ko:J

    .line 617
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v8, v6, Ltmsdkobf/dv$a;->kp:J

    sput-wide v8, Ltmsdkobf/dv;->kq:J

    .line 618
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v8, v6, Ltmsdkobf/dv$a;->kp:J

    sput-wide v8, Ltmsdkobf/dv;->kr:J

    .line 619
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v8, v6, Ltmsdkobf/dv$a;->kq:J

    sput-wide v8, Ltmsdkobf/dv;->ku:J

    .line 620
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v8, v6, Ltmsdkobf/dv$a;->kq:J

    sput-wide v8, Ltmsdkobf/dv;->kv:J

    .line 621
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v8, v6, Ltmsdkobf/dv$a;->kr:J

    cmp-long v6, v8, v12

    if-lez v6, :cond_1

    .line 622
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget v6, v6, Ltmsdkobf/dv$a;->jO:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v8, v6

    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v10, v6, Ltmsdkobf/dv$a;->kr:J

    div-long/2addr v8, v10

    long-to-int v6, v8

    sput v6, Ltmsdkobf/dv;->kx:I

    .line 623
    :cond_1
    sget v6, Ltmsdkobf/dv;->kx:I

    sput v6, Ltmsdkobf/dv;->ky:I

    .line 624
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 648
    .end local v0           #i:I
    .end local v2           #pos:I
    .end local v3           #removed:Z
    .end local v4           #size:I
    :cond_3
    new-instance v1, Ltmsdkobf/dv$a;

    invoke-direct {v1}, Ltmsdkobf/dv$a;-><init>()V

    .line 649
    .local v1, item:Ltmsdkobf/dv$a;
    iput-wide p0, v1, Ltmsdkobf/dv$a;->kn:J

    .line 650
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    monitor-exit v7

    return-object v1

    .line 606
    .end local v1           #item:Ltmsdkobf/dv$a;
    .restart local v0       #i:I
    .restart local v2       #pos:I
    .restart local v3       #removed:Z
    .restart local v4       #size:I
    :cond_4
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v8, v6, Ltmsdkobf/dv$a;->kr:J

    cmp-long v6, v8, v12

    if-gtz v6, :cond_5

    .line 607
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdkobf/dv$a;

    iget-wide v10, v6, Ltmsdkobf/dv$a;->ko:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x927c0

    cmp-long v6, v8, v10

    if-lez v6, :cond_6

    .line 609
    :cond_5
    sget-object v6, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 610
    const/4 v3, 0x1

    .line 605
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 612
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 624
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/dv$a;

    .line 625
    .restart local v1       #item:Ltmsdkobf/dv$a;
    sget-wide v8, Ltmsdkobf/dv;->kn:J

    cmp-long v8, v12, v8

    if-lez v8, :cond_8

    .line 626
    const-wide/16 v8, 0x0

    sput-wide v8, Ltmsdkobf/dv;->kn:J

    .line 627
    :cond_8
    sget-wide v8, Ltmsdkobf/dv;->ko:J

    cmp-long v8, v12, v8

    if-gez v8, :cond_9

    .line 628
    const-wide/16 v8, 0x0

    sput-wide v8, Ltmsdkobf/dv;->ko:J

    .line 629
    :cond_9
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kp:J

    sget-wide v10, Ltmsdkobf/dv;->kq:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    .line 630
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kp:J

    sput-wide v8, Ltmsdkobf/dv;->kq:J

    .line 631
    :cond_a
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kp:J

    sget-wide v10, Ltmsdkobf/dv;->kr:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_b

    .line 632
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kp:J

    sput-wide v8, Ltmsdkobf/dv;->kr:J

    .line 633
    :cond_b
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kq:J

    sget-wide v10, Ltmsdkobf/dv;->ku:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_c

    .line 634
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kq:J

    sput-wide v8, Ltmsdkobf/dv;->ku:J

    .line 635
    :cond_c
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kq:J

    sget-wide v10, Ltmsdkobf/dv;->kv:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_d

    .line 636
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kq:J

    sput-wide v8, Ltmsdkobf/dv;->kv:J

    .line 637
    :cond_d
    iget-wide v8, v1, Ltmsdkobf/dv$a;->kr:J

    cmp-long v8, v8, v12

    if-lez v8, :cond_2

    .line 638
    iget v8, v1, Ltmsdkobf/dv$a;->jO:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    iget-wide v10, v1, Ltmsdkobf/dv$a;->kr:J

    div-long/2addr v8, v10

    long-to-int v5, v8

    .line 639
    .local v5, speed:I
    sget v8, Ltmsdkobf/dv;->kx:I

    if-le v5, v8, :cond_e

    .line 640
    sput v5, Ltmsdkobf/dv;->kx:I

    .line 641
    :cond_e
    sget v8, Ltmsdkobf/dv;->ky:I

    if-ge v5, v8, :cond_2

    .line 642
    sput v5, Ltmsdkobf/dv;->ky:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 599
    .end local v0           #i:I
    .end local v1           #item:Ltmsdkobf/dv$a;
    .end local v2           #pos:I
    .end local v3           #removed:Z
    .end local v4           #size:I
    .end local v5           #speed:I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public static b(Ljava/net/HttpURLConnection;)V
    .locals 3
    .parameter

    .prologue
    .line 483
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ltmsdkobf/dv;->c(J)Ltmsdkobf/dv$a;

    move-result-object v0

    .line 484
    .local v0, item:Ltmsdkobf/dv$a;
    if-nez v0, :cond_0

    .line 485
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ltmsdkobf/dv;->b(J)Ltmsdkobf/dv$a;

    move-result-object v0

    .line 486
    :cond_0
    if-nez v0, :cond_1

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Ltmsdkobf/dv$a;->ko:J

    goto :goto_0
.end method

.method private static c(J)Ltmsdkobf/dv$a;
    .locals 6
    .parameter "tid"

    .prologue
    const/4 v1, 0x0

    .line 656
    sget-object v2, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 665
    :goto_0
    return-object v0

    .line 659
    :cond_0
    sget-object v2, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    monitor-enter v2

    .line 660
    :try_start_0
    sget-object v3, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 659
    monitor-exit v2

    move-object v0, v1

    .line 665
    goto :goto_0

    .line 660
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdkobf/dv$a;

    .line 661
    .local v0, item:Ltmsdkobf/dv$a;
    iget-wide v4, v0, Ltmsdkobf/dv$a;->kn:J

    cmp-long v4, v4, p0

    if-nez v4, :cond_1

    .line 662
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 659
    .end local v0           #item:Ltmsdkobf/dv$a;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static c(Z)V
    .locals 3
    .parameter "cancel"

    .prologue
    .line 442
    if-nez p0, :cond_0

    .line 443
    sget v1, Ltmsdkobf/dv;->kA:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Ltmsdkobf/dv;->kA:I

    .line 444
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ltmsdkobf/dv;->d(J)Ltmsdkobf/dv$a;

    move-result-object v0

    .line 445
    .local v0, item:Ltmsdkobf/dv$a;
    if-eqz v0, :cond_1

    .line 446
    iget-wide v1, v0, Ltmsdkobf/dv$a;->ko:J

    .line 449
    :cond_1
    return-void
.end method

.method private static d(J)Ltmsdkobf/dv$a;
    .locals 5
    .parameter "tid"

    .prologue
    .line 669
    sget-object v1, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 670
    sget-object v2, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    monitor-enter v2

    .line 671
    :try_start_0
    sget-object v1, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 672
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_1

    .line 670
    monitor-exit v2

    .line 679
    .end local v0           #i:I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 673
    .restart local v0       #i:I
    :cond_1
    :try_start_1
    sget-object v1, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/dv$a;

    iget-wide v3, v1, Ltmsdkobf/dv$a;->kn:J

    cmp-long v1, v3, p0

    if-nez v1, :cond_2

    .line 674
    sget-object v1, Ltmsdkobf/dv;->km:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdkobf/dv$a;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 670
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 672
    .restart local v0       #i:I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
