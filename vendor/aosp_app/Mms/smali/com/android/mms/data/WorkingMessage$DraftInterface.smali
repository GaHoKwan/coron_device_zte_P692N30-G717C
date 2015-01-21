.class Lcom/android/mms/data/WorkingMessage$DraftInterface;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Lcom/android/mms/draft/IDraftInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DraftInterface"
.end annotation


# instance fields
.field public loadRunnable:Ljava/lang/Runnable;

.field private mHanlder:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->mHanlder:Landroid/os/Handler;

    .line 527
    return-void
.end method


# virtual methods
.method public loadFinished(Lcom/android/mms/draft/MmsDraftData;)V
    .locals 7
    .parameter "mdd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 532
    if-eqz p1, :cond_1

    .line 533
    const-string v2, "[Mms][Draft][WorkingMessage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadFinished] enter, and uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", subject : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, subject:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #setter for: Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    invoke-static {v2, v6}, Lcom/android/mms/data/WorkingMessage;->access$002(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 539
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 541
    :cond_0
    const-string v2, "[Mms][Draft][WorkingMessage]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[loadFinished] boolean result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #setter for: Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    invoke-static {v2, v6}, Lcom/android/mms/data/WorkingMessage;->access$002(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 544
    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 545
    .local v0, slideshow:Lcom/android/mms/model/SlideshowModel;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    #setter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->access$102(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 547
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #setter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v2, v0}, Lcom/android/mms/data/WorkingMessage;->access$202(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideshowModel;

    .line 548
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->checkDrmContent()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 549
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->checkDrmRight()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    .line 550
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$300(Lcom/android/mms/data/WorkingMessage;)V

    .line 551
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$400(Lcom/android/mms/data/WorkingMessage;)V

    .line 552
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    const-string v2, "[Mms][Draft][WorkingMessage]"

    const-string v3, "[loadFinished] delete"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 561
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->removeAllFileAttaches()V

    .line 562
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v5}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 563
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 564
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    if-gtz v2, :cond_1

    .line 565
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 570
    .end local v0           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v1           #subject:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->loadRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 571
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->mHanlder:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->loadRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 574
    :cond_2
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->deleteGruoupMmsDraft()V

    .line 576
    return-void
.end method

.method public updateAfterSaveDraftFinished(Landroid/net/Uri;IZ)V
    .locals 12
    .parameter "msgUri"
    .parameter "create"
    .parameter "result"

    .prologue
    .line 579
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateAfterSaveDraftFinished] msgUri is : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", create : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    if-nez p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-nez p3, :cond_0

    .line 585
    :try_start_0
    const-string v0, "[Mms][Draft][WorkingMessage]"

    const-string v1, "[updateAfterSaveDraftFinished] MmsException happened, and save failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->removeAllFileAttaches()V

    .line 587
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage$DraftInterface$1;-><init>(Lcom/android/mms/data/WorkingMessage$DraftInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const-string v0, "WorkingMessage"

    const-string v1, "updateAfterSaveDraftFinished setSavingDraft(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 713
    :goto_0
    return-void

    .line 600
    :cond_0
    :try_start_1
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateAfterSaveDraftFinished] before msg uri : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    if-eqz p1, :cond_1

    .line 602
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #setter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0, p1}, Lcom/android/mms/data/WorkingMessage;->access$102(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 604
    :cond_1
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateAfterSaveDraftFinished] after msg uri : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 607
    const-string v0, "[Mms][Draft][WorkingMessage]"

    const-string v1, "[updateAfterSaveDraftFinished] remove file attachment temp files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteFileAttachmentTempFile()V
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;)V

    .line 614
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mBundle:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 620
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 621
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "pref_msg_uri_key"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 622
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 625
    .end local v7           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v9           #sp:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 626
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 627
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 629
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 634
    :goto_1
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAfterSaveDraftFinished conv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    :cond_5
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_8

    .line 641
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedTelephony$ThreadSettings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_data"

    aput-object v5, v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v5}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 647
    .local v6, cursor:Landroid/database/Cursor;
    const-string v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    .local v8, filePath:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 650
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 651
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 654
    :cond_6
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_7
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 658
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadSettingsUri()Landroid/net/Uri;

    move-result-object v2

    .line 659
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_8

    .line 660
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 661
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 673
    .end local v2           #uri:Landroid/net/Uri;
    .end local v3           #values:Landroid/content/ContentValues;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #filePath:Ljava/lang/String;
    :cond_8
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 678
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_9

    .line 679
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9

    .line 680
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v4

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->access$1200(Lcom/android/mms/data/WorkingMessage;J)V

    .line 683
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 691
    :cond_9
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteOldMmsDraft(Landroid/net/Uri;J)V
    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/data/WorkingMessage;->access$1300(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;J)V

    .line 696
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1400(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1400(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v4}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_a

    .line 697
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$1400(Lcom/android/mms/data/WorkingMessage;)J

    move-result-wide v4

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 699
    :cond_a
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    #setter for: Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J
    invoke-static {v0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->access$1402(Lcom/android/mms/data/WorkingMessage;J)J

    .line 705
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mNeedDeleteOldMmsDraft:Z
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1500(Lcom/android/mms/data/WorkingMessage;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 706
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/data/WorkingMessage;->mNeedDeleteOldMmsDraft:Z
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$1502(Lcom/android/mms/data/WorkingMessage;Z)Z

    .line 707
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    #calls: Lcom/android/mms/data/WorkingMessage;->asyncDeleteOldMmsDraft(J)V
    invoke-static {v0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->access$1600(Lcom/android/mms/data/WorkingMessage;J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 710
    :cond_b
    const-string v0, "WorkingMessage"

    const-string v1, "updateAfterSaveDraftFinished setSavingDraft(false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    goto/16 :goto_0

    .line 631
    :cond_c
    :try_start_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 710
    :catchall_0
    move-exception v0

    const-string v1, "WorkingMessage"

    const-string v4, "updateAfterSaveDraftFinished setSavingDraft(false)"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v0

    .line 654
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #filePath:Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
