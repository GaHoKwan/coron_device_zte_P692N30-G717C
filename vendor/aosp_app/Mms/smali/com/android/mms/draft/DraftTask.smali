.class public Lcom/android/mms/draft/DraftTask;
.super Ljava/lang/Object;
.source "DraftTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/draft/DraftTask$TaskThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][DraftTask]"


# instance fields
.field private mClearThreadId:J

.field private mCurrentRunningType:I

.field private mLastReqType:I

.field private mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

.field private mReqList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/mms/draft/TaskReq;",
            ">;"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private mThread:Lcom/android/mms/draft/DraftTask$TaskThread;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/android/mms/draft/DraftTask;->mStarted:Z

    .line 41
    iput v0, p0, Lcom/android/mms/draft/DraftTask;->mCurrentRunningType:I

    .line 43
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/draft/DraftTask;->mClearThreadId:J

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    .line 50
    new-instance v0, Lcom/android/mms/draft/DraftTask$TaskThread;

    invoke-direct {v0, p0}, Lcom/android/mms/draft/DraftTask$TaskThread;-><init>(Lcom/android/mms/draft/DraftTask;)V

    iput-object v0, p0, Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/draft/DraftTask;)Lcom/android/mms/draft/TaskReq;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/mms/draft/DraftTask;->getNextReq()Lcom/android/mms/draft/TaskReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/draft/DraftTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/mms/draft/DraftTask;->mCurrentRunningType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/IDraftInterface;ILcom/android/mms/draft/MmsDraftData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/draft/DraftTask;->sendResult(Lcom/android/mms/draft/IDraftInterface;ILcom/android/mms/draft/MmsDraftData;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/SaveReq;)Lcom/android/mms/draft/SaveReq;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/TaskReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/mms/draft/DraftTask;->sendResult(Lcom/android/mms/draft/TaskReq;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/mms/draft/DraftTask;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput p1, p0, Lcom/android/mms/draft/DraftTask;->mLastReqType:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/draft/DraftTask;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/DraftTask$TaskThread;)Lcom/android/mms/draft/DraftTask$TaskThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/mms/draft/DraftTask;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/android/mms/draft/DraftTask;->mStarted:Z

    return p1
.end method

.method private execute()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/android/mms/draft/DraftTask$TaskThread;

    invoke-direct {v0, p0}, Lcom/android/mms/draft/DraftTask$TaskThread;-><init>(Lcom/android/mms/draft/DraftTask;)V

    iput-object v0, p0, Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;

    .line 156
    iput-boolean v2, p0, Lcom/android/mms/draft/DraftTask;->mStarted:Z

    .line 157
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 158
    const-string v0, "[Mms][Draft][DraftTask]"

    const-string v1, "execute new and start a thread to run the req"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/draft/DraftTask;->mStarted:Z

    if-nez v0, :cond_1

    .line 161
    iput-boolean v2, p0, Lcom/android/mms/draft/DraftTask;->mStarted:Z

    .line 162
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 164
    :cond_1
    return-void
.end method

.method private getNextReq()Lcom/android/mms/draft/TaskReq;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 214
    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    if-eqz v3, :cond_2

    .line 215
    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 216
    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/draft/TaskReq;

    .line 231
    :goto_0
    return-object v3

    .line 218
    :cond_0
    const/4 v0, 0x0

    .local v0, index:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 219
    move v1, v0

    .line 220
    .local v1, j:I
    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/draft/TaskReq;

    .line 221
    .local v2, tr:Lcom/android/mms/draft/TaskReq;
    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->getType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 222
    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/draft/TaskReq;

    invoke-virtual {v3}, Lcom/android/mms/draft/TaskReq;->getType()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 227
    goto :goto_0

    .line 231
    .end local v0           #index:I
    .end local v1           #j:I
    .end local v2           #tr:Lcom/android/mms/draft/TaskReq;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sendResult(Lcom/android/mms/draft/IDraftInterface;ILcom/android/mms/draft/MmsDraftData;)V
    .locals 3
    .parameter "handler"
    .parameter "what"
    .parameter "data"

    .prologue
    .line 176
    if-eqz p3, :cond_0

    .line 177
    const-string v0, "[Mms][Draft][DraftTask]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendResult] result uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    const-string v0, "[Mms][Draft][DraftTask]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[sendResult] what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz p1, :cond_1

    .line 181
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 182
    if-eqz p3, :cond_1

    .line 183
    invoke-interface {p1, p3}, Lcom/android/mms/draft/IDraftInterface;->loadFinished(Lcom/android/mms/draft/MmsDraftData;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 186
    if-eqz p3, :cond_1

    .line 187
    invoke-virtual {p3}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/mms/draft/MmsDraftData;->getCreateOrUpdate()I

    move-result v1

    invoke-virtual {p3}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/draft/IDraftInterface;->updateAfterSaveDraftFinished(Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method private sendResult(Lcom/android/mms/draft/TaskReq;)V
    .locals 2
    .parameter "tr"

    .prologue
    .line 200
    const-string v0, "[Mms][Draft][DraftTask]"

    const-string v1, "[sendResult] notify to get result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p1}, Lcom/android/mms/draft/TaskReq;->notifyFinished()V

    .line 202
    return-void
.end method


# virtual methods
.method public addReq(Lcom/android/mms/draft/TaskReq;)V
    .locals 3
    .parameter "req"

    .prologue
    const/4 v2, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    .line 109
    :cond_0
    if-nez p1, :cond_2

    .line 110
    const-string v0, "[Mms][Draft][DraftTask]"

    const-string v1, "[addReq] Request is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 119
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-virtual {p1}, Lcom/android/mms/draft/TaskReq;->getThreadId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/draft/DraftTask;->mClearThreadId:J

    .line 121
    invoke-virtual {p1}, Lcom/android/mms/draft/TaskReq;->getType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 122
    check-cast p1, Lcom/android/mms/draft/SaveReq;

    .end local p1
    iput-object p1, p0, Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

    .line 123
    iput v2, p0, Lcom/android/mms/draft/DraftTask;->mLastReqType:I

    .line 124
    const-string v0, "[Mms][Draft][DraftTask]"

    const-string v1, "[addReq] type is ASYNC_SAVE_ACTION, save the result"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/android/mms/draft/DraftTask;->execute()V

    goto :goto_0
.end method

.method public getPreLoadResult()Lcom/android/mms/draft/MmsDraftData;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

    invoke-virtual {v1}, Lcom/android/mms/draft/TaskReq;->getResult()Lcom/android/mms/draft/MmsDraftData;

    move-result-object v0

    .line 91
    .local v0, result:Lcom/android/mms/draft/MmsDraftData;
    if-eqz v0, :cond_0

    .line 97
    .end local v0           #result:Lcom/android/mms/draft/MmsDraftData;
    :goto_0
    return-object v0

    .line 94
    .restart local v0       #result:Lcom/android/mms/draft/MmsDraftData;
    :cond_0
    const-string v1, "[Mms][Draft][DraftTask]"

    const-string v2, "[getPreLoadResult] result is null return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0           #result:Lcom/android/mms/draft/MmsDraftData;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCleared()Z
    .locals 3

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 242
    const-string v0, "[Mms][Draft][DraftTask]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isCleared] ReqList isEmpty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExcuting()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/mms/draft/DraftTask;->mStarted:Z

    return v0
.end method

.method public preLoad(I)Z
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    .line 64
    const-string v1, "[Mms][Draft][DraftTask]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[preLoad] S+L, mLastReqType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/draft/DraftTask;->mLastReqType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", and type  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v1, p0, Lcom/android/mms/draft/DraftTask;->mLastReqType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 66
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

    if-eqz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;

    invoke-virtual {v1}, Lcom/android/mms/draft/TaskReq;->getResult()Lcom/android/mms/draft/MmsDraftData;

    move-result-object v0

    .line 69
    .local v0, result:Lcom/android/mms/draft/MmsDraftData;
    if-eqz v0, :cond_1

    .line 70
    const-string v1, "[Mms][Draft][DraftTask]"

    const-string v2, "[preLoad] S+L, just return the last save req result"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v0           #result:Lcom/android/mms/draft/MmsDraftData;
    :cond_0
    :goto_0
    return v4

    .line 73
    .restart local v0       #result:Lcom/android/mms/draft/MmsDraftData;
    :cond_1
    const-string v1, "[Mms][Draft][DraftTask]"

    const-string v2, "[preLoad] S+L, result which from mLatestSaveReq is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    .end local v0           #result:Lcom/android/mms/draft/MmsDraftData;
    :cond_2
    const-string v1, "[Mms][Draft][DraftTask]"

    const-string v2, "[preLoad] S+L, mLatestSaveReq is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeReq(Lcom/android/mms/draft/TaskReq;)V
    .locals 2
    .parameter "req"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 137
    :cond_0
    const-string v0, "[Mms][Draft][DraftTask]"

    const-string v1, "[removeReq] mReqList or parameter req is null, check them"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1
    return-void
.end method
