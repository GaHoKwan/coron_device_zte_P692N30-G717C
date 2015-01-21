.class public Lcom/android/mms/draft/SaveReq;
.super Lcom/android/mms/draft/TaskReq;
.source "SaveReq.java"


# static fields
.field private static final FILE_NOT_FOUND:Ljava/lang/String; = "File not found."

.field private static final READ_WRITE_FAILURE:Ljava/lang/String; = "Read or write file failure."

.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][SaveReq]"


# instance fields
.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;


# direct methods
.method public constructor <init>(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)V
    .locals 2
    .parameter "type"
    .parameter "threadId"
    .parameter "uri"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/mms/draft/TaskReq;-><init>()V

    .line 36
    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_2

    .line 37
    :cond_0
    const-string v0, "[Mms][Draft][SaveReq]"

    const-string v1, "[SaveReq] The parameters is not satisfied the request"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    :goto_0
    return-void

    .line 40
    :cond_2
    iput-object p5, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 41
    iput-object p4, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    .line 42
    invoke-static {p7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/draft/SaveReq;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 43
    iput-object p6, p0, Lcom/android/mms/draft/SaveReq;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    .line 44
    iput-object p7, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    .line 45
    iput-object p8, p0, Lcom/android/mms/draft/TaskReq;->mHandler:Lcom/android/mms/draft/IDraftInterface;

    .line 46
    iput p1, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    .line 47
    iput-wide p2, p0, Lcom/android/mms/draft/TaskReq;->mThreadId:J

    .line 48
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/draft/TaskReq;->mSyncObject:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public executeReq()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 89
    const-string v1, "[Mms][Draft][SaveReq]"

    const-string v2, "[executeReq] enter"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/android/mms/draft/DraftAction;

    invoke-direct {v0}, Lcom/android/mms/draft/DraftAction;-><init>()V

    .line 91
    .local v0, da:Lcom/android/mms/draft/DraftAction;
    new-instance v8, Lcom/android/mms/draft/MmsDraftData;

    invoke-direct {v8}, Lcom/android/mms/draft/MmsDraftData;-><init>()V

    .line 92
    .local v8, returnData:Lcom/android/mms/draft/MmsDraftData;
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8, v1}, Lcom/android/mms/draft/MmsDraftData;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 93
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    .line 94
    const-string v1, "[Mms][Draft][SaveReq]"

    const-string v2, "[executeReq] mMessageUri is null, call create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/draft/SaveReq;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v2, p0, Lcom/android/mms/draft/SaveReq;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    iget-object v3, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v4, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/draft/TaskReq;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/draft/DraftAction;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v9

    .line 97
    .local v9, tempUri:Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    .line 98
    invoke-virtual {v8, v9}, Lcom/android/mms/draft/MmsDraftData;->setMessageUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v9           #tempUri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {v8, v11}, Lcom/android/mms/draft/MmsDraftData;->setCreateOrUpdate(I)V

    .line 114
    :goto_1
    iput-object v8, p0, Lcom/android/mms/draft/TaskReq;->mResult:Lcom/android/mms/draft/MmsDraftData;

    .line 115
    return-void

    .line 99
    :catch_0
    move-exception v6

    .line 100
    .local v6, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, eMessage:Ljava/lang/String;
    const-string v1, "[Mms][Draft][SaveReq]"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v1, "File not found."

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Read or write file failure."

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    invoke-virtual {v8, v10}, Lcom/android/mms/draft/MmsDraftData;->setBooleanResult(Z)V

    .line 105
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/android/mms/draft/MmsDraftData;->setMessageUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 109
    .end local v6           #e:Lcom/google/android/mms/MmsException;
    .end local v7           #eMessage:Ljava/lang/String;
    :cond_2
    const-string v1, "[Mms][Draft][SaveReq]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[executeReq] update, mMessageUri is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/draft/SaveReq;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v3, p0, Lcom/android/mms/draft/TaskReq;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v4, p0, Lcom/android/mms/draft/SaveReq;->mSendReq:Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/draft/DraftAction;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 111
    iget-object v1, p0, Lcom/android/mms/draft/TaskReq;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8, v1}, Lcom/android/mms/draft/MmsDraftData;->setMessageUri(Landroid/net/Uri;)V

    .line 112
    invoke-virtual {v8, v10}, Lcom/android/mms/draft/MmsDraftData;->setCreateOrUpdate(I)V

    goto :goto_1
.end method

.method public getHandler()Lcom/android/mms/draft/IDraftInterface;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/draft/TaskReq;->mHandler:Lcom/android/mms/draft/IDraftInterface;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    return v0
.end method

.method public getWhat()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/android/mms/draft/TaskReq;->mHandlerWhat:I

    return v0
.end method
