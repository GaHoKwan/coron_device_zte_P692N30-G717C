.class Lcom/android/mms/ui/ComposeMessageActivity$16;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mGroupMmsRunnable:Ljava/lang/Runnable;

.field private mLastRecipientAfterTextChanged:Ljava/lang/String;

.field private mLastTitleString:Ljava/lang/String;

.field private mRecipientAfterTextChanged:Ljava/lang/String;

.field private mRecipientBeforeTextChanged:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1580
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientBeforeTextChanged:Ljava/lang/String;

    .line 1581
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;

    .line 1582
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastRecipientAfterTextChanged:Ljava/lang/String;

    .line 1583
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastTitleString:Ljava/lang/String;

    .line 1585
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$16$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$16;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mGroupMmsRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ComposeMessageActivity$16;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ComposeMessageActivity$16;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastTitleString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/mms/ui/ComposeMessageActivity$16;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastTitleString:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 1678
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;

    .line 1679
    const/4 v1, 0x1

    .line 1680
    .local v1, isNeedUpdate:Z
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientBeforeTextChanged:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastRecipientAfterTextChanged:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1681
    :cond_0
    const/4 v1, 0x0

    .line 1683
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientAfterTextChanged:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mLastRecipientAfterTextChanged:Ljava/lang/String;

    .line 1684
    if-nez v1, :cond_2

    .line 1697
    :goto_0
    return-void

    .line 1687
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4600(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1688
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "afterTextChanged called with invisible mRecipientsEditor"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1691
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "Mms/compose"

    const-string v3, "RecipientsWatcher: afterTextChanged called with invisible mRecipientsEditor"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1695
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mGroupMmsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1696
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mUiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$5600(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mGroupMmsRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1656
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->mRecipientBeforeTextChanged:Ljava/lang/String;

    .line 1657
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$16;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->onUserInteraction()V

    .line 1666
    return-void
.end method
