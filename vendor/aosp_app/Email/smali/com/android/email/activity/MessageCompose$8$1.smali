.class Lcom/android/email/activity/MessageCompose$8$1;
.super Ljava/lang/Object;
.source "MessageCompose.java"

# interfaces
.implements Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose$8;->onMessageLoaded(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Body;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/MessageCompose$8;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose$8;)V
    .locals 0
    .parameter

    .prologue
    .line 1413
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachmentLoaded([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 9
    .parameter "attachments"

    .prologue
    const/4 v5, 0x1

    .line 1416
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    iget v6, v6, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_1

    move v4, v5

    .line 1418
    .local v4, supportsSmartForward:Z
    :goto_0
    const-string v6, "MessageCompose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadSourceMessage loadAttachments onAttachmentLoaded supportsSmartForward = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1421
    move-object v0, p1

    .local v0, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1422
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v4, :cond_0

    .line 1423
    iget v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1426
    iget v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x3

    iput v6, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1428
    :cond_0
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1416
    .end local v0           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #supportsSmartForward:Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1430
    .restart local v0       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #supportsSmartForward:Z
    :cond_2
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->isForward()Z
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-boolean v6, v6, Lcom/android/email/activity/MessageCompose$8;->val$restoreViews:Z

    if-eqz v6, :cond_3

    .line 1431
    const-string v6, "MessageCompose"

    const-string v7, "loadSourceMessage loadAttachments processSourceMessageAttachments"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v7, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v7, v7, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v8, v8, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5}, Lcom/android/email/activity/MessageCompose;->processSourceMessageAttachments(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1435
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)V

    .line 1436
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$8$1;->this$1:Lcom/android/email/activity/MessageCompose$8;

    iget-object v6, v6, Lcom/android/email/activity/MessageCompose$8;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;Z)V

    .line 1439
    :cond_3
    return-void
.end method
