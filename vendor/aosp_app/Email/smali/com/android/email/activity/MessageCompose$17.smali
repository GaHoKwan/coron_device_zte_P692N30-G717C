.class Lcom/android/email/activity/MessageCompose$17;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageCompose;->startAsyncTaskLoadMoreAttachments(Ljava/util/ArrayList;I)V
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
        "Ljava/util/List",
        "<",
        "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;

.field final synthetic val$attachUris:Ljava/util/ArrayList;

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 3413
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    iput-object p3, p0, Lcom/android/email/activity/MessageCompose$17;->val$attachUris:Ljava/util/ArrayList;

    iput p4, p0, Lcom/android/email/activity/MessageCompose$17;->val$length:I

    invoke-direct {p0, p2}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3413
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$17;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 12
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v10, 0x500000

    .line 3423
    const-string v6, ">>>> EmailAsyncTask#executeParallel startAsyncTaskLoadMoreAttachments#doInBackground"

    invoke-static {v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 3426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3427
    .local v1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    const/4 v4, 0x1

    .line 3428
    .local v4, s:I
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$17;->val$attachUris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .local v3, parcelable:Landroid/os/Parcelable;
    move-object v5, v3

    .line 3429
    check-cast v5, Landroid/net/Uri;

    .line 3430
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    iget v6, p0, Lcom/android/email/activity/MessageCompose$17;->val$length:I

    if-gt v4, v6, :cond_0

    .line 3431
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {v6, v5}, Lcom/android/email/activity/MessageCompose;->access$4100(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3434
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    sget-object v7, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    cmp-long v6, v6, v10

    if-gtz v6, :cond_2

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    .line 3442
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3456
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3443
    :cond_2
    if-eqz v0, :cond_1

    .line 3444
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    cmp-long v6, v6, v10

    if-lez v6, :cond_3

    .line 3445
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showAttachmentSizeTooLargeToast()V
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$4500(Lcom/android/email/activity/MessageCompose;)V

    .line 3446
    const-string v6, "MessageCompose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attachment is larger than the MAX_ATTACHMENT_UPLOAD_SIZE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3450
    :cond_3
    iget-object v6, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showCannotAddAttachmentToast()V
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$4300(Lcom/android/email/activity/MessageCompose;)V

    .line 3451
    const-string v6, "MessageCompose"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attachment is not ACCEPTABLE_ATTACHMENT_SEND_INTENT_TYPES "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3459
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #parcelable:Landroid/os/Parcelable;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_4
    const-string v6, "<<<< EmailAsyncTask#executeParallel startAsyncTaskLoadMoreAttachments#doInBackground"

    invoke-static {v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 3461
    return-object v1
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3413
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$17;->onCancelled(Ljava/util/List;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3477
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-super {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 3478
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->releaseProgressDialog()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4200(Lcom/android/email/activity/MessageCompose;)V

    .line 3479
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 3417
    invoke-super {p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onPreExecute()V

    .line 3418
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->showLoadAttachmentProgressDialog(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    invoke-static {v0, p0}, Lcom/android/email/activity/MessageCompose;->access$4000(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 3419
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3413
    check-cast p1, Ljava/util/List;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$17;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method protected onSuccess(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3466
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->releaseProgressDialog()V
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4200(Lcom/android/email/activity/MessageCompose;)V

    .line 3467
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 3473
    :cond_0
    :goto_0
    return-void

    .line 3471
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->addAttachments(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;Ljava/util/List;)V

    .line 3472
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$17;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x1

    #calls: Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$600(Lcom/android/email/activity/MessageCompose;Z)V

    goto :goto_0
.end method
