.class public Lcom/android/mms/draft/LoadReq;
.super Lcom/android/mms/draft/TaskReq;
.source "LoadReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][LoadReq]"


# direct methods
.method public constructor <init>(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)V
    .locals 3
    .parameter "type"
    .parameter "threadId"
    .parameter "uri"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/mms/draft/TaskReq;-><init>()V

    .line 16
    const-string v0, "[Mms][Draft][LoadReq]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LoadReq] the threadId is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 18
    const-string v0, "[Mms][Draft][LoadReq]"

    const-string v1, "[LoadReq] req is async load action ,but thread id <= 0, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iput-wide p2, p0, Lcom/android/mms/draft/TaskReq;->mThreadId:J

    .line 22
    iput-object p4, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    .line 23
    iput-object p5, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    .line 24
    iput-object p6, p0, Lcom/android/mms/draft/TaskReq;->mHandler:Lcom/android/mms/draft/IDraftInterface;

    .line 25
    iput p1, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    .line 26
    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public executeReq()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 50
    new-instance v3, Lcom/android/mms/draft/MmsDraftData;

    invoke-direct {v3}, Lcom/android/mms/draft/MmsDraftData;-><init>()V

    .line 51
    .local v3, returnValue:Lcom/android/mms/draft/MmsDraftData;
    new-instance v0, Lcom/android/mms/draft/DraftAction;

    invoke-direct {v0}, Lcom/android/mms/draft/DraftAction;-><init>()V

    .line 52
    .local v0, da:Lcom/android/mms/draft/DraftAction;
    iget v5, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1

    .line 53
    iget-object v5, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    if-nez v5, :cond_0

    .line 54
    const-string v5, "[Mms][Draft][LoadReq]"

    const-string v6, "[LoadReq.executeReq] Sync load mMessageUri is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {v3, v8}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    .line 94
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v5, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Lcom/android/mms/draft/MmsDraftData;->setMessageUri(Landroid/net/Uri;)V

    .line 59
    iget-object v5, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/draft/DraftAction;->loadFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    .line 60
    .local v2, res:Z
    invoke-virtual {v3, v2}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    .line 61
    invoke-virtual {v0}, Lcom/android/mms/draft/DraftAction;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/mms/draft/MmsDraftData;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 62
    const-string v5, "[Mms][Draft][LoadReq]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LoadReq.executeReq] Sync load return result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .end local v2           #res:Z
    :goto_1
    iput-object v3, p0, Lcom/android/mms/draft/TaskReq;->mResult:Lcom/android/mms/draft/MmsDraftData;

    goto :goto_0

    .line 63
    :cond_1
    iget v5, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/mms/draft/TaskReq;->mThreadId:J

    invoke-virtual {v0, v5, v6, v7, v4}, Lcom/android/mms/draft/DraftAction;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, msgUri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    const-string v5, "[Mms][Draft][LoadReq]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LoadReq.executeReq] draft subject is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/mms/draft/MmsDraftData;->setSubject(Ljava/lang/String;)V

    .line 70
    :cond_2
    if-eqz v1, :cond_4

    .line 71
    const-string v5, "[Mms][Draft][LoadReq]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[LoadReq.executeReq] msgUri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v5, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v1}, Lcom/android/mms/draft/DraftAction;->loadFromUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 74
    const-string v5, "[Mms][Draft][LoadReq]"

    const-string v6, "[LoadReq.executeReq] load from uri finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    .line 76
    invoke-virtual {v3, v1}, Lcom/android/mms/draft/MmsDraftData;->setMessageUri(Landroid/net/Uri;)V

    .line 77
    invoke-virtual {v0}, Lcom/android/mms/draft/DraftAction;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/mms/draft/MmsDraftData;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_1

    .line 79
    :cond_3
    invoke-virtual {v3, v8}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    .line 80
    const-string v5, "[Mms][Draft][LoadReq]"

    const-string v6, "[LoadReq.executeReq] load from uri failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 84
    :cond_4
    const-string v5, "[Mms][Draft][LoadReq]"

    const-string v6, "[LoadReq.executeReq] The MessageUri is null, cannot load"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v3, v8}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    goto/16 :goto_0

    .line 89
    .end local v1           #msgUri:Landroid/net/Uri;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_5
    const-string v5, "[Mms][Draft][LoadReq]"

    const-string v6, "[LoadReq.executeReq] unknown load type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getHandler()Lcom/android/mms/draft/IDraftInterface;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/mms/draft/TaskReq;->mHandler:Lcom/android/mms/draft/IDraftInterface;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    return v0
.end method

.method public getWhat()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    return v0
.end method
