.class public Lcom/android/email/activity/MessageCompose$EditQuotedTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditQuotedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .locals 1
    .parameter

    .prologue
    .line 3900
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 3901
    #getter for: Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 3902
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3898
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 15
    .parameter "params"

    .prologue
    .line 3906
    const-string v11, "MessageCompose"

    const-string v12, "EditQuotedTask doInBackground..."

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    const-string v2, ""

    .line 3908
    .local v2, htmlBody:Ljava/lang/String;
    const-string v9, ""

    .line 3909
    .local v9, textBody:Ljava/lang/String;
    const-string v5, ""

    .line 3910
    .local v5, introText:Ljava/lang/String;
    const-string v11, "com.android.email.intent.action.REPLY"

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.android.email.intent.action.REPLY_ALL"

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "com.android.email.intent.action.FORWARD"

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3913
    :cond_0
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 3914
    const-string v11, "MessageCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appendQuotedText from source message "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3917
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    .line 3918
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v9, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 3921
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3922
    .local v1, fromAsString:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->isForward()Z
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3923
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v8, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 3924
    .local v8, subject:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3925
    .local v10, to:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3926
    .local v0, cc:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v12, 0x7f0800db

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v1, v13, v14

    const/4 v14, 0x2

    if-eqz v10, :cond_4

    .end local v10           #to:Ljava/lang/String;
    :goto_0
    aput-object v10, v13, v14

    const/4 v14, 0x3

    if-eqz v0, :cond_5

    .end local v0           #cc:Ljava/lang/String;
    :goto_1
    aput-object v0, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 3948
    .end local v1           #fromAsString:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_9

    const/4 v3, 0x1

    .line 3950
    .local v3, htmlFlag:Z
    :goto_3
    move-object v6, v2

    .line 3951
    .local v6, quotedText:Ljava/lang/String;
    if-eqz v3, :cond_b

    .line 3952
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    .line 3954
    .local v4, htmlLength:I
    const v11, 0xafc8

    if-le v4, v11, :cond_a

    .line 3956
    const/4 v11, 0x0

    const v12, 0xafc8

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/emailcommon/utility/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3965
    .end local v4           #htmlLength:I
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3966
    .local v7, sb:Ljava/lang/StringBuilder;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 3967
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3969
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 3970
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3972
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 3926
    .end local v3           #htmlFlag:Z
    .end local v6           #quotedText:Ljava/lang/String;
    .end local v7           #sb:Ljava/lang/StringBuilder;
    .restart local v0       #cc:Ljava/lang/String;
    .restart local v1       #fromAsString:Ljava/lang/String;
    .restart local v8       #subject:Ljava/lang/String;
    .restart local v10       #to:Ljava/lang/String;
    :cond_4
    const-string v10, ""

    goto :goto_0

    .end local v10           #to:Ljava/lang/String;
    :cond_5
    const-string v0, ""

    goto :goto_1

    .line 3931
    .end local v0           #cc:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v12, 0x7f0800dc

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 3936
    .end local v1           #fromAsString:Ljava/lang/String;
    :cond_7
    const-string v11, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 3937
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 3938
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v9, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 3939
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$1500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v5, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto :goto_2

    .line 3942
    :cond_8
    const-string v11, "MessageCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ACTION which should not happen have happened,ACTION type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v13}, Lcom/android/email/activity/MessageCompose;->access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3948
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 3959
    .restart local v3       #htmlFlag:Z
    .restart local v4       #htmlLength:I
    .restart local v6       #quotedText:Ljava/lang/String;
    :cond_a
    invoke-static {v2}, Lcom/android/emailcommon/utility/HtmlConverter;->htmlToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 3962
    .end local v4           #htmlLength:I
    :cond_b
    move-object v6, v9

    goto/16 :goto_4
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4003
    invoke-super {p0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onPreExecute()V

    .line 4005
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 4006
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$5600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 4007
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3898
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess(Ljava/lang/String;)V
    .locals 7
    .parameter "result"

    .prologue
    const/16 v6, 0x2710

    const/4 v5, 0x1

    .line 3977
    invoke-super {p0, p1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->onSuccess(Ljava/lang/Object;)V

    .line 3978
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3979
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 3980
    .local v1, length:I
    const-string v2, "MessageCompose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quoted text result lenght is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3981
    if-le v1, v6, :cond_0

    .line 3982
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3983
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3984
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-static {}, Lcom/android/email/activity/EditQuotedConfirmDialog;->newInstance()Lcom/android/email/activity/EditQuotedConfirmDialog;

    move-result-object v3

    const-string v4, "EditQuotedConfirmDialog"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 3989
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #setter for: Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;
    invoke-static {v2, p1}, Lcom/android/email/activity/MessageCompose;->access$3902(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    .line 3997
    .end local v0           #fm:Landroid/app/FragmentManager;
    .end local v1           #length:I
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 3998
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->access$5600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setClickable(Z)V

    .line 3999
    return-void

    .line 3991
    .restart local v1       #length:I
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose$EditQuotedTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->updateQuotedText(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/android/email/activity/MessageCompose;->access$5400(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V

    goto :goto_0

    .line 3994
    .end local v1           #length:I
    :cond_1
    const-string v2, "MessageCompose"

    const-string v3, "result is null, no need append quoted text."

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
