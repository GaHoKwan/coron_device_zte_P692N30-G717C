.class public Lcom/mediatek/email/plugin/SendNotificationPlugin;
.super Landroid/content/ContextWrapper;
.source "SendNotificationPlugin.java"

# interfaces
.implements Lcom/mediatek/email/ext/ISendNotification;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;
    }
.end annotation


# static fields
.field private static final ACCOUNT_ID_COMBINED_VIEW:J = 0x1000000000000000L

.field private static final BAR_LENGTH:I = 0x2710

.field private static final EMAIL_MODULE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final NOTIFICATION_ID_SEND_EMAIL:I = 0x1000

.field private static final QUERY_ALL_OUTBOX:J = -0x6L

.field public static final SEND_COMPLETE:I = 0x2

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_MAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SendNotificationPlugin"

.field private static final THREAD_NAME:Ljava/lang/String; = "Sending Notification Progress Thread"


# instance fields
.field private mCompletedCount:I

.field private mFailedAccountId:J

.field private mFailedCount:I

.field private volatile mMailProgress:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private volatile mProgress:I

.field private mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

.field private volatile mSendCount:I

.field private mSendingBuilder:Landroid/app/Notification$Builder;

.field private mSendingCountMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "base"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    .line 30
    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    .line 32
    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    .line 38
    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    .line 40
    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/email/plugin/SendNotificationPlugin;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/email/plugin/SendNotificationPlugin;)Landroid/app/Notification$Builder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/email/plugin/SendNotificationPlugin;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    return v0
.end method

.method private getOutboxIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;
    .locals 6
    .parameter "context"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, intent:Landroid/content/Intent;
    const-wide/16 v1, -0x1

    .line 388
    .local v1, outboxId:J
    const-wide/high16 v4, 0x1000

    cmp-long v4, p2, v4

    if-nez v4, :cond_2

    .line 389
    const-wide/16 v1, -0x6

    .line 397
    :cond_0
    invoke-static {p2, p3, v1, v2}, Lcom/mediatek/email/plugin/SendNotificationUtils;->createOpenMailboxIntent(JJ)Landroid/content/Intent;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_1

    .line 400
    const v3, 0x1000c000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 402
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 406
    :cond_1
    :goto_0
    return-object v3

    .line 391
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/mediatek/email/plugin/SendNotificationUtils;->findOutboxId(Landroid/content/Context;J)J

    move-result-wide v1

    .line 392
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancelSendingNotification()V
    .locals 3

    .prologue
    .line 356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    if-eqz v0, :cond_0

    .line 357
    iget-object v1, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->mStop:Z

    .line 359
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 360
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 363
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 366
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    .line 367
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    .line 372
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    .line 373
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 374
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 375
    monitor-exit p0

    return-void

    .line 360
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 356
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showSendingNotification(Landroid/content/Context;JII)V
    .locals 18
    .parameter "context"
    .parameter "accountId"
    .parameter "eventType"
    .parameter "messageCount"

    .prologue
    .line 80
    monitor-enter p0

    const-wide/16 v11, 0x0

    cmp-long v11, p2, v11

    if-lez v11, :cond_0

    if-nez p1, :cond_1

    .line 259
    .end local p2
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 85
    .restart local p2
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v11, :cond_2

    .line 86
    const-string v11, "notification"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    .line 91
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    .line 93
    .local v3, baseContext:Landroid/content/Context;
    if-nez p4, :cond_b

    .line 96
    move/from16 v5, p5

    .line 97
    .local v5, newMessageCount:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 98
    .local v10, sendingCount:Ljava/lang/Integer;
    if-eqz v10, :cond_3

    .line 99
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int p5, p5, v11

    .line 101
    if-nez p5, :cond_3

    .line 102
    const-string v11, "SendNotificationPlugin"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "duplicate sending request, sendingCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 80
    .end local v3           #baseContext:Landroid/content/Context;
    .end local v5           #newMessageCount:I
    .end local v10           #sendingCount:Ljava/lang/Integer;
    .end local p2
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 107
    .restart local v3       #baseContext:Landroid/content/Context;
    .restart local v5       #newMessageCount:I
    .restart local v10       #sendingCount:Ljava/lang/Integer;
    .restart local p2
    :cond_3
    if-lez v5, :cond_6

    .line 108
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    if-nez v11, :cond_4

    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ic_notification_sending"

    const-string v13, "drawable"

    const-string v14, "com.android.email"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 115
    .local v9, resId:I
    new-instance v11, Landroid/app/Notification$Builder;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090002

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    .line 121
    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    .line 125
    .end local v9           #resId:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    const/4 v12, 0x1

    if-le v11, v12, :cond_5

    const-wide/high16 p2, 0x1000

    .end local p2
    :cond_5
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->getOutboxIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v8

    .line 127
    .local v8, pending:Landroid/app/PendingIntent;
    if-nez v8, :cond_7

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->cancelSendingNotification()V

    goto/16 :goto_0

    .line 110
    .end local v8           #pending:Landroid/app/PendingIntent;
    .restart local p2
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    .end local p2
    .restart local v8       #pending:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 134
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    add-int v11, v11, p5

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    .line 135
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    if-gtz v11, :cond_8

    .line 136
    const-string v11, "SendNotificationPlugin"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cancel sending notification because has no sending messages, mSendCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->cancelSendingNotification()V

    goto/16 :goto_0

    .line 142
    :cond_8
    const/16 v11, 0x2710

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    div-int/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    .line 144
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    const/4 v12, 0x1

    if-ge v11, v12, :cond_9

    .line 145
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    .line 148
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 151
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    if-nez v11, :cond_a

    .line 152
    new-instance v11, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    const-string v12, "Sending Notification Progress Thread"

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;-><init>(Lcom/mediatek/email/plugin/SendNotificationPlugin;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    .line 153
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    invoke-virtual {v11}, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->start()V

    goto/16 :goto_0

    .line 155
    :cond_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    monitor-enter v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 157
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw v11

    .line 165
    .end local v5           #newMessageCount:I
    .end local v8           #pending:Landroid/app/PendingIntent;
    .end local v10           #sendingCount:Ljava/lang/Integer;
    .restart local p2
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    if-eqz v11, :cond_0

    .line 169
    const/4 v11, 0x2

    move/from16 v0, p4

    if-ne v0, v11, :cond_d

    .line 170
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    .line 172
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    if-ge v11, v12, :cond_c

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 177
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    monitor-enter v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    :try_start_4
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    add-int/2addr v11, v13

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    .line 179
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 180
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 183
    :try_start_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 184
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v5, v11, p5

    .line 185
    .restart local v5       #newMessageCount:I
    if-lez v5, :cond_f

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v5           #newMessageCount:I
    :cond_d
    :goto_2
    const/4 v11, 0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_e

    .line 194
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    add-int v11, v11, p5

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    .line 196
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    .line 200
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    add-int/2addr v11, v12

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    if-lt v11, v12, :cond_0

    .line 202
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    monitor-enter v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 203
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    const/4 v13, 0x1

    iput-boolean v13, v11, Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;->mStop:Z

    .line 204
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    invoke-virtual {v11}, Ljava/lang/Object;->notify()V

    .line 205
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 208
    :try_start_7
    move-object/from16 v0, p0

    iget v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    if-lez v11, :cond_12

    .line 209
    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    move-object/from16 v0, p1

    invoke-static {v0, v11, v12}, Lcom/mediatek/email/plugin/SendNotificationUtils;->findOutboxId(Landroid/content/Context;J)J

    move-result-wide v6

    .line 210
    .local v6, outboxId:J
    const-wide/16 v11, -0x1

    cmp-long v11, v6, v11

    if-nez v11, :cond_10

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->cancelSendingNotification()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 180
    .end local v6           #outboxId:J
    :catchall_2
    move-exception v11

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v11

    .line 188
    .restart local v5       #newMessageCount:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 205
    .end local v5           #newMessageCount:I
    :catchall_3
    move-exception v11

    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v11

    .line 215
    .restart local v6       #outboxId:J
    :cond_10
    invoke-direct/range {p0 .. p3}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->getOutboxIntent(Landroid/content/Context;J)Landroid/app/PendingIntent;

    move-result-object v8

    .line 216
    .restart local v8       #pending:Landroid/app/PendingIntent;
    if-nez v8, :cond_11

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/email/plugin/SendNotificationPlugin;->cancelSendingNotification()V

    goto/16 :goto_0

    .line 222
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v12, 0x1000

    invoke-virtual {v11, v12}, Landroid/app/NotificationManager;->cancel(I)V

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ic_notification_send_failed"

    const-string v13, "drawable"

    const-string v14, "com.android.email"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 224
    .restart local v9       #resId:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0c0001

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090004

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 247
    .end local v6           #outboxId:J
    .end local v8           #pending:Landroid/app/PendingIntent;
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v12, 0x1000

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingCountMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 251
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    .line 252
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedCount:I

    .line 253
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendCount:I

    .line 254
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mMailProgress:I

    .line 255
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    .line 256
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgressThread:Lcom/mediatek/email/plugin/SendNotificationPlugin$ProgressThread;

    .line 257
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mProgress:I

    goto/16 :goto_0

    .line 231
    .end local v9           #resId:I
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ic_notification_send_succeed"

    const-string v13, "drawable"

    const-string v14, "com.android.email"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 232
    .restart local v9       #resId:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mSendingBuilder:Landroid/app/Notification$Builder;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090003

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f0c

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mCompletedCount:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 238
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v4, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    .local v4, handler:Landroid/os/Handler;
    new-instance v11, Lcom/mediatek/email/plugin/SendNotificationPlugin$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/mediatek/email/plugin/SendNotificationPlugin$1;-><init>(Lcom/mediatek/email/plugin/SendNotificationPlugin;)V

    const-wide/16 v12, 0xbb8

    invoke-virtual {v4, v11, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3
.end method

.method public suspendSendFailedNotification(J)V
    .locals 4
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 344
    iget-wide v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 346
    iput-wide v2, p0, Lcom/mediatek/email/plugin/SendNotificationPlugin;->mFailedAccountId:J

    .line 348
    :cond_0
    return-void
.end method
