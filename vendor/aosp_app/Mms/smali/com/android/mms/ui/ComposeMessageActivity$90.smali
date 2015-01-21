.class Lcom/android/mms/ui/ComposeMessageActivity$90;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->asyncAttachVCardByContactsId(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$isAddingIpMsgVCardFile:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Intent;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10353
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->val$data:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->val$isAddingIpMsgVCardFile:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 10355
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->val$data:Landroid/content/Intent;

    const-string v6, "com.mediatek.contacts.list.pickcontactsresult"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 10356
    .local v0, contactsId:[J
    new-instance v4, Lcom/android/mms/ui/VCardAttachment;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, v5}, Lcom/android/mms/ui/VCardAttachment;-><init>(Landroid/content/Context;)V

    .line 10357
    .local v4, va:Lcom/android/mms/ui/VCardAttachment;
    const/4 v3, 0x0

    .line 10358
    .local v3, result:I
    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->val$isAddingIpMsgVCardFile:Z

    if-eqz v5, :cond_0

    .line 10359
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4, v0, v8}, Lcom/android/mms/ui/VCardAttachment;->getVCardFileNameByContactsId([JZ)Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageVcardName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17802(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10360
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v7}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getCachePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageVcardName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17800(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17902(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 10361
    const-string v5, "Mms/ipmsg/compose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asyncAttachVCardByContactsId(): mIpMessageVcardName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIpMessageVcardName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17800(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mDstPath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDstPath:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$17900(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10363
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v5, v5, Lcom/android/mms/ui/ComposeMessageActivity;->mIpMsgHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSendVcard:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18000(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10396
    :goto_0
    return-void

    .line 10365
    :cond_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->setIsDeleteVcardFile(Z)V

    .line 10366
    invoke-virtual {v4, v0, v7}, Lcom/android/mms/ui/VCardAttachment;->getVCardFileNameByContactsId([JZ)Ljava/lang/String;

    move-result-object v1

    .line 10368
    .local v1, fileName:Ljava/lang/String;
    const/4 v5, 0x5

    invoke-static {v5}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 10369
    .local v2, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAppendAttachmentSign:Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18100(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v5

    if-ne v5, v8, :cond_3

    .line 10373
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setFileAttachment(Ljava/lang/String;IZ)I
    invoke-static {v5, v1, v9, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;IZ)I

    move-result v3

    .line 10384
    :goto_1
    if-nez v3, :cond_2

    .line 10385
    const-string v5, "[Mms][Composer]"

    const-string v6, "asyncAttachVCardByContactsId result is ok"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10387
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCompressingVCardFinished:Z
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18300(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10388
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 10391
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 10394
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1900(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/mms/data/WorkingMessage;->setIsDeleteVcardFile(Z)V

    goto :goto_0

    .line 10376
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$90;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setFileAttachment(Ljava/lang/String;IZ)I
    invoke-static {v5, v1, v9, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$18200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;IZ)I

    move-result v3

    goto :goto_1
.end method
