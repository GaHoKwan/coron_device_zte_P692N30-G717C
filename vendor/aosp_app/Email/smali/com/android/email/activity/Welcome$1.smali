.class Lcom/android/email/activity/Welcome$1;
.super Ljava/lang/Object;
.source "Welcome.java"

# interfaces
.implements Lcom/android/email/activity/MailboxFinder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/Welcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/Welcome;


# direct methods
.method constructor <init>(Lcom/android/email/activity/Welcome;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/Welcome;->mInboxFinder:Lcom/android/email/activity/MailboxFinder;
    invoke-static {v0, v1}, Lcom/android/email/activity/Welcome;->access$002(Lcom/android/email/activity/Welcome;Lcom/android/email/activity/MailboxFinder;)Lcom/android/email/activity/MailboxFinder;

    .line 517
    return-void
.end method


# virtual methods
.method public onAccountNotFound()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    .line 521
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$1;->cleanUp()V

    .line 525
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mMailboxId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/Welcome;->access$102(Lcom/android/email/activity/Welcome;J)J

    .line 526
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mMessageId:J
    invoke-static {v2, v3, v4}, Lcom/android/email/activity/Welcome;->access$202(Lcom/android/email/activity/Welcome;J)J

    .line 527
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    const/4 v3, 0x0

    #setter for: Lcom/android/email/activity/Welcome;->mAccountUuid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/email/activity/Welcome;->access$302(Lcom/android/email/activity/Welcome;Ljava/lang/String;)Ljava/lang/String;

    .line 530
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #getter for: Lcom/android/email/activity/Welcome;->mContext:Lcom/android/email/activity/Welcome;
    invoke-static {v2}, Lcom/android/email/activity/Welcome;->access$400(Lcom/android/email/activity/Welcome;)Lcom/android/email/activity/Welcome;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->hasConnectivity(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 532
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 533
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v2, "MyConnectionAlertDialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;

    .line 536
    .local v0, dialogFragment:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 539
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #getter for: Lcom/android/email/activity/Welcome;->mContext:Lcom/android/email/activity/Welcome;
    invoke-static {v2}, Lcom/android/email/activity/Welcome;->access$400(Lcom/android/email/activity/Welcome;)Lcom/android/email/activity/Welcome;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->newInstance(Lcom/android/email/activity/Welcome;)Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;

    move-result-object v0

    .line 540
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "MyConnectionAlertDialog"

    invoke-virtual {v2, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 545
    .end local v0           #dialogFragment:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;
    .end local v1           #fm:Landroid/app/FragmentManager;
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #calls: Lcom/android/email/activity/Welcome;->resolveAccount()V
    invoke-static {v2}, Lcom/android/email/activity/Welcome;->access$500(Lcom/android/email/activity/Welcome;)V

    goto :goto_0
.end method

.method public onAccountSecurityHold(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$1;->cleanUp()V

    .line 557
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/ActivityHelper;->showSecurityHoldDialog(Landroid/app/Activity;J)V

    .line 558
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 559
    return-void
.end method

.method public onMailboxFound(JJ)V
    .locals 1
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/email/activity/Welcome$1;->cleanUp()V

    .line 564
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #setter for: Lcom/android/email/activity/Welcome;->mMailboxId:J
    invoke-static {v0, p3, p4}, Lcom/android/email/activity/Welcome;->access$102(Lcom/android/email/activity/Welcome;J)J

    .line 566
    iget-object v0, p0, Lcom/android/email/activity/Welcome$1;->this$0:Lcom/android/email/activity/Welcome;

    #calls: Lcom/android/email/activity/Welcome;->startEmailActivity()V
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->access$600(Lcom/android/email/activity/Welcome;)V

    .line 567
    return-void
.end method

.method public onMailboxNotFound(J)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/android/email/activity/Welcome$1;->onAccountNotFound()V

    .line 551
    return-void
.end method
