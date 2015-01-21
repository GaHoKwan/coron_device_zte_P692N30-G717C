.class Lcom/android/mms/ui/ComposeMessageActivity$47;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 5878
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 12
    .parameter "part"
    .parameter "append"

    .prologue
    .line 5882
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v9, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mNeedSaveAsMms:Z
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10802(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 5883
    if-nez p1, :cond_0

    .line 5884
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->notifyCompressingDone()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5885
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v9, -0x1

    const v10, 0x7f0b02fb

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v8, v9, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 5964
    :goto_0
    return-void

    .line 5889
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->setmResizeImage(Z)V

    .line 5890
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5891
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 5893
    .local v6, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5894
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->notifyCompressingDone()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 5897
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    .line 5898
    .local v3, messageUri:Landroid/net/Uri;
    if-nez v3, :cond_2

    .line 5900
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 5907
    :cond_2
    :goto_1
    if-nez v3, :cond_7

    .line 5908
    const/4 v7, -0x1

    .line 5945
    .local v7, result:I
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowDialogForMultiImage:Z
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11000(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 5946
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v9, 0x7f0b02fb

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
    invoke-static {v8, v7, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10400(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    .line 5948
    :cond_4
    const/4 v8, -0x2

    if-ne v7, v8, :cond_5

    .line 5949
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v9, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mShowDialogForMultiImage:Z
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$11002(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 5952
    :cond_5
    if-nez v7, :cond_6

    .line 5954
    :try_start_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 5955
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v9, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mHasDiscardWorkingMessage:Z
    invoke-static {v8, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4302(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    .line 5963
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->notifyCompressingDone()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 5901
    .end local v7           #result:I
    :catch_0
    move-exception v2

    .line 5902
    .local v2, e:Ljava/lang/IllegalStateException;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->notifyCompressingDone()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5903
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", go to ConversationList!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5904
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_1

    .line 5914
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_7
    :try_start_2
    sget-object v9, Lcom/android/mms/data/WorkingMessage;->sDraftMmsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5915
    :try_start_3
    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v10, v11, v8}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v1

    .line 5916
    .local v1, dataUri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    sget v4, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 5917
    .local v4, mode:I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    const/4 v8, 0x0

    sput v8, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 5918
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v10, v1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v7

    .line 5920
    .restart local v7       #result:I
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    if-eqz v7, :cond_8

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    if-eqz v8, :cond_8

    .line 5922
    :try_start_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 5923
    .local v5, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, v10, v3, v5, v11}, Lcom/android/mms/ui/MessageUtils;->updatePartsIfNeeded(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;Ljava/util/HashMap;)V

    .line 5925
    if-eqz v5, :cond_8

    .line 5926
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 5933
    .end local v5           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_8
    :goto_4
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5934
    :try_start_6
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    sput v4, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 5935
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 5936
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResizeImageResultCallback: dataUri="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/google/android/mms/MmsException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 5938
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v4           #mode:I
    .end local v7           #result:I
    :catch_1
    move-exception v2

    .line 5939
    .local v2, e:Lcom/google/android/mms/MmsException;
    const/4 v7, -0x1

    .restart local v7       #result:I
    goto/16 :goto_2

    .line 5928
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .restart local v1       #dataUri:Landroid/net/Uri;
    .restart local v4       #mode:I
    :catch_2
    move-exception v2

    .line 5929
    .restart local v2       #e:Lcom/google/android/mms/MmsException;
    :try_start_7
    const-string v8, "Mms/compose"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot update the message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 5933
    .end local v1           #dataUri:Landroid/net/Uri;
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .end local v4           #mode:I
    .end local v7           #result:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v8
    :try_end_8
    .catch Lcom/google/android/mms/MmsException; {:try_start_8 .. :try_end_8} :catch_1

    .line 5957
    .restart local v7       #result:I
    :catch_3
    move-exception v2

    .line 5958
    .local v2, e:Ljava/lang/IllegalStateException;
    const-string v8, "Mms/compose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", go to ConversationList!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5959
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->notifyCompressingDone()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 5960
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$47;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$10500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto/16 :goto_3
.end method
