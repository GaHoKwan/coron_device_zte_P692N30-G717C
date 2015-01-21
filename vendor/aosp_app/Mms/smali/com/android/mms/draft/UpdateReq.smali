.class public Lcom/android/mms/draft/UpdateReq;
.super Lcom/android/mms/draft/TaskReq;
.source "UpdateReq.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][UpdateReq]"


# direct methods
.method public constructor <init>(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 2
    .parameter "type"
    .parameter "threadId"
    .parameter "uri"
    .parameter "context"
    .parameter "slideshow"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/mms/draft/TaskReq;-><init>()V

    .line 28
    if-eqz p4, :cond_0

    if-eqz p6, :cond_0

    if-nez p5, :cond_1

    .line 29
    :cond_0
    const-string v0, "[Mms][Draft][UpdateReq]"

    const-string v1, "[UpdateReq] Constructor, the parameters maybe is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    return-void

    .line 32
    :cond_1
    iput-object p4, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    .line 33
    iput-object p5, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    .line 34
    iput-object p6, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 35
    iput p1, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    .line 37
    iput-wide p2, p0, Lcom/android/mms/draft/TaskReq;->mThreadId:J

    goto :goto_0
.end method


# virtual methods
.method public executeReq()V
    .locals 6

    .prologue
    .line 45
    const-string v2, "[Mms][Draft][UpdateReq]"

    const-string v3, "[executeReq] enter and begin to update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 49
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v2, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v3, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v1, v5}, Lcom/android/mms/ui/MessageUtils;->updatePartsIfNeeded(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 52
    if-eqz v1, :cond_0

    .line 53
    iget-object v2, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_0
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "[Mms][Draft][UpdateReq]"

    const-string v3, "[executeReq] happened exception when update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    return v0
.end method
