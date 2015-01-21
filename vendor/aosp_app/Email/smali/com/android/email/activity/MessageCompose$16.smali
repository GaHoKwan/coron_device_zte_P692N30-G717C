.class Lcom/android/email/activity/MessageCompose$16;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->startAsyncTaskLoadOneAttachments(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 3357
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 3
    .parameter "uri"

    .prologue
    .line 3366
    const-string v1, ">>>> EmailAsyncTask#executeSerial startAsyncTaskLoadOneAttachments#doInBackground"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 3368
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$4100(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3369
    .local v0, att:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const-string v1, "<<<< EmailAsyncTask#executeSerial startAsyncTaskLoadOneAttachments#doInBackground"

    invoke-static {v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 3371
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3357
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$16;->doInBackground([Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 3394
    invoke-super {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 3395
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->releaseProgressDialog()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4200(Lcom/android/email/activity/MessageCompose;)V

    .line 3396
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3357
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$16;->onCancelled(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 3360
    invoke-super {p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onPreExecute()V

    .line 3361
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showLoadAttachmentProgressDialog(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    invoke-static {v0, p0}, Lcom/android/email/activity/MessageCompose;->access$4000(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 3362
    return-void
.end method

.method protected onSuccess(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 3
    .parameter "attachment"

    .prologue
    .line 3376
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->releaseProgressDialog()V
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$4200(Lcom/android/email/activity/MessageCompose;)V

    .line 3377
    if-nez p1, :cond_0

    .line 3378
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showCannotAddAttachmentToast()V
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)V

    .line 3390
    :goto_0
    return-void

    .line 3381
    :cond_0
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 3382
    .local v0, mimeType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3384
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    invoke-static {v1, p1}, Lcom/android/email/activity/MessageCompose;->access$4400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 3385
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v2, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V
    invoke-static {v1, v2}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;Z)V

    goto :goto_0

    .line 3388
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$16;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showCannotAddAttachmentToast()V
    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)V

    goto :goto_0
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3357
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$16;->onSuccess(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method
