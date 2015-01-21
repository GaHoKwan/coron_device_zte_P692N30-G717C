.class Lcom/android/email/activity/MessageCompose$9;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$callback:Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;

.field final synthetic val$messageId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 1627
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-wide p3, p0, Lcom/android/email/activity/MessageCompose$9;->val$messageId:J

    iput-object p5, p0, Lcom/android/email/activity/MessageCompose$9;->val$callback:Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1627
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$9;->doInBackground([Ljava/lang/Void;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 4
    .parameter "params"

    .prologue
    .line 1630
    const-string v1, ">>>> EmailAsyncTask#excuteParallel MessageCompose#loadAttachments"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1631
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$9;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-wide v2, p0, Lcom/android/email/activity/MessageCompose$9;->val$messageId:J

    invoke-static {v1, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 1633
    .local v0, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v1, "<<<< EmailAsyncTask#excuteParallel MessageCompose#loadAttachments"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 1634
    return-object v0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1627
    check-cast p1, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$9;->onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onSuccess([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 1
    .parameter "attachments"

    .prologue
    .line 1639
    if-nez p1, :cond_0

    .line 1640
    const/4 v0, 0x0

    new-array p1, v0, [Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1642
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$9;->val$callback:Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;

    invoke-interface {v0, p1}, Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;->onAttachmentLoaded([Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 1643
    return-void
.end method
