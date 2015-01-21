.class Lcom/android/mms/draft/DraftTask$TaskThread;
.super Ljava/lang/Thread;
.source "DraftTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/draft/DraftTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/draft/DraftTask;


# direct methods
.method public constructor <init>(Lcom/android/mms/draft/DraftTask;)V
    .locals 1
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 254
    const-string v0, "DraftTask.executeReqThread"

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 255
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 258
    const/4 v1, 0x0

    .line 259
    .local v1, tobeStopped:Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 260
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #calls: Lcom/android/mms/draft/DraftTask;->getNextReq()Lcom/android/mms/draft/TaskReq;
    invoke-static {v4}, Lcom/android/mms/draft/DraftTask;->access$000(Lcom/android/mms/draft/DraftTask;)Lcom/android/mms/draft/TaskReq;

    move-result-object v2

    .line 261
    .local v2, tr:Lcom/android/mms/draft/TaskReq;
    if-nez v2, :cond_2

    .line 262
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #setter for: Lcom/android/mms/draft/DraftTask;->mCurrentRunningType:I
    invoke-static {v4, v7}, Lcom/android/mms/draft/DraftTask;->access$102(Lcom/android/mms/draft/DraftTask;I)I

    .line 296
    .end local v2           #tr:Lcom/android/mms/draft/TaskReq;
    :cond_1
    const-string v4, "[Mms][Draft][DraftTask]"

    const-string v5, "[run] the while circle is finised"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void

    .line 265
    .restart local v2       #tr:Lcom/android/mms/draft/TaskReq;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->getType()I

    move-result v5

    #setter for: Lcom/android/mms/draft/DraftTask;->mCurrentRunningType:I
    invoke-static {v4, v5}, Lcom/android/mms/draft/DraftTask;->access$102(Lcom/android/mms/draft/DraftTask;I)I

    .line 266
    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->executeReq()V

    .line 267
    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->getType()I

    move-result v3

    .line 268
    .local v3, type:I
    const-string v4, "[Mms][Draft][DraftTask]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[run] type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eq v3, v8, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 271
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->getHandler()Lcom/android/mms/draft/IDraftInterface;

    move-result-object v0

    .line 272
    .local v0, handler:Lcom/android/mms/draft/IDraftInterface;
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->getWhat()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/mms/draft/TaskReq;->getResult()Lcom/android/mms/draft/MmsDraftData;

    move-result-object v6

    #calls: Lcom/android/mms/draft/DraftTask;->sendResult(Lcom/android/mms/draft/IDraftInterface;ILcom/android/mms/draft/MmsDraftData;)V
    invoke-static {v4, v0, v5, v6}, Lcom/android/mms/draft/DraftTask;->access$200(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/IDraftInterface;ILcom/android/mms/draft/MmsDraftData;)V

    .line 273
    const-string v4, "[Mms][Draft][DraftTask]"

    const-string v5, "[run] async save | load execute, return result"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-ne v3, v8, :cond_4

    .line 275
    const-string v4, "[Mms][Draft][DraftTask]"

    const-string v5, "[run] current action is save, and save the action result"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    move-object v4, v2

    check-cast v4, Lcom/android/mms/draft/SaveReq;

    #setter for: Lcom/android/mms/draft/DraftTask;->mLatestSaveReq:Lcom/android/mms/draft/SaveReq;
    invoke-static {v5, v4}, Lcom/android/mms/draft/DraftTask;->access$302(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/SaveReq;)Lcom/android/mms/draft/SaveReq;

    .line 286
    .end local v0           #handler:Lcom/android/mms/draft/IDraftInterface;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #setter for: Lcom/android/mms/draft/DraftTask;->mLastReqType:I
    invoke-static {v4, v3}, Lcom/android/mms/draft/DraftTask;->access$502(Lcom/android/mms/draft/DraftTask;I)I

    .line 287
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #getter for: Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;
    invoke-static {v4}, Lcom/android/mms/draft/DraftTask;->access$600(Lcom/android/mms/draft/DraftTask;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 288
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #getter for: Lcom/android/mms/draft/DraftTask;->mReqList:Ljava/util/Vector;
    invoke-static {v4}, Lcom/android/mms/draft/DraftTask;->access$600(Lcom/android/mms/draft/DraftTask;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 289
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    const/4 v5, 0x0

    #setter for: Lcom/android/mms/draft/DraftTask;->mThread:Lcom/android/mms/draft/DraftTask$TaskThread;
    invoke-static {v4, v5}, Lcom/android/mms/draft/DraftTask;->access$702(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/DraftTask$TaskThread;)Lcom/android/mms/draft/DraftTask$TaskThread;

    .line 290
    const/4 v1, 0x1

    .line 291
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #setter for: Lcom/android/mms/draft/DraftTask;->mCurrentRunningType:I
    invoke-static {v4, v7}, Lcom/android/mms/draft/DraftTask;->access$102(Lcom/android/mms/draft/DraftTask;I)I

    .line 292
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #setter for: Lcom/android/mms/draft/DraftTask;->mStarted:Z
    invoke-static {v4, v7}, Lcom/android/mms/draft/DraftTask;->access$802(Lcom/android/mms/draft/DraftTask;Z)Z

    .line 293
    const-string v4, "[Mms][Draft][DraftTask]"

    const-string v5, "[run] the reqlist is empty and break the while true circle"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 278
    :cond_5
    const/16 v4, 0x10

    if-eq v3, v4, :cond_6

    const/16 v4, 0x20

    if-eq v3, v4, :cond_6

    const/16 v4, 0x30

    if-ne v3, v4, :cond_7

    .line 281
    :cond_6
    iget-object v4, p0, Lcom/android/mms/draft/DraftTask$TaskThread;->this$0:Lcom/android/mms/draft/DraftTask;

    #calls: Lcom/android/mms/draft/DraftTask;->sendResult(Lcom/android/mms/draft/TaskReq;)V
    invoke-static {v4, v2}, Lcom/android/mms/draft/DraftTask;->access$400(Lcom/android/mms/draft/DraftTask;Lcom/android/mms/draft/TaskReq;)V

    .line 282
    const-string v4, "[Mms][Draft][DraftTask]"

    const-string v5, "[run] sync save | load | update execute, return result"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 284
    :cond_7
    const-string v4, "[Mms][Draft][DraftTask]"

    const-string v5, "[run] unknown type to execute"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
