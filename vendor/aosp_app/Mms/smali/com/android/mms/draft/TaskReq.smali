.class public Lcom/android/mms/draft/TaskReq;
.super Ljava/lang/Object;
.source "TaskReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][TaskReq]"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Lcom/android/mms/draft/IDraftInterface;

.field protected mHandlerWhat:I

.field protected mMessageUri:Landroid/net/Uri;

.field protected mNotiCount:I

.field protected mResult:Lcom/android/mms/draft/MmsDraftData;

.field protected mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field protected mSyncObject:Ljava/lang/Object;

.field protected mThreadId:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    return-void
.end method

.method public static createReq(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/TaskReq;
    .locals 9
    .parameter "type"
    .parameter "threadId"
    .parameter "uri"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 52
    const-string v1, "[Mms][Draft][TaskReq]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createReq] type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, tr:Lcom/android/mms/draft/TaskReq;
    sparse-switch p0, :sswitch_data_0

    .line 75
    const-string v1, "[Mms][Draft][TaskReq]"

    const-string v2, "Constructor unKnown type to create Req"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    const-string v1, "[Mms][Draft][TaskReq]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[createReq] save uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/android/mms/draft/SaveReq;

    .end local v0           #tr:Lcom/android/mms/draft/TaskReq;
    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/draft/SaveReq;-><init>(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)V

    .line 59
    .restart local v0       #tr:Lcom/android/mms/draft/TaskReq;
    goto :goto_0

    .line 62
    :sswitch_1
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 63
    const-string v1, "[Mms][Draft][TaskReq]"

    const-string v2, "[createReq] request is async load action ,and thread id <= 0, please check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_0
    :sswitch_2
    new-instance v0, Lcom/android/mms/draft/LoadReq;

    .end local v0           #tr:Lcom/android/mms/draft/TaskReq;
    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/draft/LoadReq;-><init>(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)V

    .line 68
    .restart local v0       #tr:Lcom/android/mms/draft/TaskReq;
    goto :goto_0

    .line 71
    :sswitch_3
    new-instance v0, Lcom/android/mms/draft/UpdateReq;

    .end local v0           #tr:Lcom/android/mms/draft/TaskReq;
    move v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/draft/UpdateReq;-><init>(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 72
    .restart local v0       #tr:Lcom/android/mms/draft/TaskReq;
    goto :goto_0

    .line 54
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public executeReq()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public getHandler()Lcom/android/mms/draft/IDraftInterface;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResult()Lcom/android/mms/draft/MmsDraftData;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/draft/TaskReq;->mResult:Lcom/android/mms/draft/MmsDraftData;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lcom/android/mms/draft/TaskReq;->mThreadId:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getWhat()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public notifyFinished()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "[Mms][Draft][TaskReq]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[notifyFinished] enter and to notify, this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget v0, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    .line 121
    iget-object v0, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 122
    monitor-exit v1

    .line 124
    :cond_0
    return-void

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitExecute()V
    .locals 5

    .prologue
    .line 98
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "[Mms][Draft][TaskReq]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notifyFinished] enter and to wait, this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :try_start_1
    iget v1, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    if-lez v1, :cond_1

    .line 103
    const-string v1, "[Mms][Draft][TaskReq]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[waitExecute] mNotiCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    .line 105
    monitor-exit v2

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 108
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/draft/TaskReq;->mNotiCount:I

    .line 109
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "[Mms][Draft][TaskReq]"

    const-string v2, "[waitExecute] InterruptedException happened while wait object"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
