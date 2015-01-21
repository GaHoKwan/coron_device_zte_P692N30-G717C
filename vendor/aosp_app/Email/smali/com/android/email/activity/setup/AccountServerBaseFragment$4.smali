.class Lcom/android/email/activity/setup/AccountServerBaseFragment$4;
.super Landroid/os/AsyncTask;
.source "AccountServerBaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountServerBaseFragment;->onCheckSettingsComplete(I)V
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

.field final synthetic val$settingsResult:I


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountServerBaseFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iput p2, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 420
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "params"

    .prologue
    .line 423
    iget v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    if-nez v1, :cond_1

    .line 424
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v0

    .line 425
    .local v0, mode:I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterEdit()V

    .line 432
    .end local v0           #mode:I
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 429
    .restart local v0       #mode:I
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    invoke-virtual {v1}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->saveSettingsAfterSetup()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 420
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    iget-object v0, v0, Lcom/android/email/activity/setup/AccountServerBaseFragment;->mCallback:Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;

    iget v1, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->val$settingsResult:I

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getFlowMode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/email/activity/setup/AccountServerBaseFragment$Callback;->onCheckSettingsComplete(II)V

    .line 439
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountServerBaseFragment$4;->this$0:Lcom/android/email/activity/setup/AccountServerBaseFragment;

    #calls: Lcom/android/email/activity/setup/AccountServerBaseFragment;->clearButtonBounce()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountServerBaseFragment;->access$000(Lcom/android/email/activity/setup/AccountServerBaseFragment;)V

    .line 440
    return-void
.end method
