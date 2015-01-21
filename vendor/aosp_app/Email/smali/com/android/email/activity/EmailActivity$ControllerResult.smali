.class Lcom/android/email/activity/EmailActivity$ControllerResult;
.super Lcom/android/email/Controller$Result;
.source "EmailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/EmailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerResult"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/EmailActivity;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/EmailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/EmailActivity;Lcom/android/email/activity/EmailActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 518
    invoke-direct {p0, p1}, Lcom/android/email/activity/EmailActivity$ControllerResult;-><init>(Lcom/android/email/activity/EmailActivity;)V

    return-void
.end method

.method private handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 4
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 557
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    if-nez p1, :cond_2

    .line 561
    if-lez p4, :cond_0

    .line 563
    iget-object v2, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    #getter for: Lcom/android/email/activity/EmailActivity;->mLastErrorAccountId:J
    invoke-static {v2}, Lcom/android/email/activity/EmailActivity;->access$100(Lcom/android/email/activity/EmailActivity;)J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    .line 564
    iget-object v2, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    #calls: Lcom/android/email/activity/EmailActivity;->dismissErrorMessage()V
    invoke-static {v2}, Lcom/android/email/activity/EmailActivity;->access$200(Lcom/android/email/activity/EmailActivity;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p2, p3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 569
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    invoke-static {v2, p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, message:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    #getter for: Lcom/android/email/activity/EmailActivity;->mErrorBanner:Lcom/android/email/activity/BannerController;
    invoke-static {v2}, Lcom/android/email/activity/EmailActivity;->access$300(Lcom/android/email/activity/EmailActivity;)Lcom/android/email/activity/BannerController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/email/activity/BannerController;->show(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    iget-object v2, p0, Lcom/android/email/activity/EmailActivity$ControllerResult;->this$0:Lcom/android/email/activity/EmailActivity;

    #setter for: Lcom/android/email/activity/EmailActivity;->mLastErrorAccountId:J
    invoke-static {v2, p2, p3}, Lcom/android/email/activity/EmailActivity;->access$102(Lcom/android/email/activity/EmailActivity;J)J

    goto :goto_0
.end method


# virtual methods
.method public loadAttachmentCallback(Lcom/android/emailcommon/mail/MessagingException;JJJII)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "attachmentId"
    .parameter "progress"
    .parameter "statuscode"

    .prologue
    .line 546
    invoke-direct {p0, p1, p2, p3, p8}, Lcom/android/email/activity/EmailActivity$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 547
    return-void
.end method

.method public loadMessageForViewCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 552
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/EmailActivity$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 553
    return-void
.end method

.method public sendMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "messageId"
    .parameter "progress"

    .prologue
    .line 522
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/EmailActivity$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 523
    return-void
.end method

.method public serviceCheckMailCallback(Lcom/android/emailcommon/mail/MessagingException;JJIJ)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "tag"

    .prologue
    .line 528
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/EmailActivity$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 529
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJIILjava/util/ArrayList;)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/emailcommon/mail/MessagingException;",
            "JJII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p8, addedMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/android/email/activity/EmailActivity$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 535
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .locals 0
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    .line 540
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/EmailActivity$ControllerResult;->handleError(Lcom/android/emailcommon/mail/MessagingException;JI)V

    .line 541
    return-void
.end method
