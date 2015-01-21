.class Lcom/android/email/activity/MessageViewFragmentBase$3;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->addAttachments(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;

.field final synthetic val$attachs:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2789
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iput-object p2, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->val$attachs:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2789
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9
    .parameter "params"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2792
    const-string v3, "MessageViewFragmentBase"

    const-string v4, "AddAttachmentsTask#doInBackground start working"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->val$attachs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2795
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 2796
    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->createAttachmentView(Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)Landroid/view/View;
    invoke-static {v3, v0, v7}, Lcom/android/email/activity/MessageViewFragmentBase;->access$4800(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/emailcommon/provider/EmailContent$Attachment;Z)Landroid/view/View;

    move-result-object v2

    .line 2797
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_1

    .line 2798
    new-array v3, v7, [[Ljava/lang/Object;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v8

    aput-object v4, v3, v8

    invoke-virtual {p0, v3}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 2800
    :cond_1
    const-string v3, "MessageViewFragmentBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Render attachment failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2804
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #view:Landroid/view/View;
    :cond_2
    const-string v3, "MessageViewFragmentBase"

    const-string v4, "AddAttachmentsTask#doInBackground stop working"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    const/4 v3, 0x0

    return-object v3
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2789
    check-cast p1, [[Ljava/lang/Object;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$3;->onProgressUpdate([[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs onProgressUpdate([[Ljava/lang/Object;)V
    .locals 7
    .parameter "progress"

    .prologue
    const/4 v6, 0x0

    .line 2810
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 2814
    aget-object v2, p1, v6

    aget-object v1, v2, v6

    check-cast v1, Landroid/view/View;

    .line 2815
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .line 2817
    .local v0, attInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    iget-wide v2, v0, Lcom/android/email/AttachmentInfo;->mMessageKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v4, v4, Lcom/android/email/activity/MessageViewFragmentBase;->mMessageId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->findAttachmentInfoFromView(J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3300(Lcom/android/email/activity/MessageViewFragmentBase;J)Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2820
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2821
    iget-object v2, p0, Lcom/android/email/activity/MessageViewFragmentBase$3;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$3400(Lcom/android/email/activity/MessageViewFragmentBase;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2824
    :cond_0
    return-void
.end method
