.class Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->finishRemoveAccount(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

.field final synthetic val$accountId:J


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iput-wide p2, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->val$accountId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    :goto_0
    return-void

    .line 858
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #getter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$800(Lcom/android/email/activity/setup/AccountSettings;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    const/4 v2, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mProgressDialog:Landroid/app/DialogFragment;
    invoke-static {v1, v2}, Lcom/android/email/activity/setup/AccountSettings;->access$802(Lcom/android/email/activity/setup/AccountSettings;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 868
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    const-string v1, "AccountSettings"

    const-string v2, "no more account, not switch the header just finsh itself."

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 873
    :cond_3
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #calls: Lcom/android/email/activity/setup/AccountSettings;->getAppPreferencesHeader()Landroid/preference/PreferenceActivity$Header;
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$900(Lcom/android/email/activity/setup/AccountSettings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 874
    .local v0, prefsHeader:Landroid/preference/PreferenceActivity$Header;
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-object v2, v0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v3, v0, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 876
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    iget-wide v2, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->val$accountId:J

    #setter for: Lcom/android/email/activity/setup/AccountSettings;->mDeletingAccountId:J
    invoke-static {v1, v2, v3}, Lcom/android/email/activity/setup/AccountSettings;->access$702(Lcom/android/email/activity/setup/AccountSettings;J)J

    .line 877
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    #calls: Lcom/android/email/activity/setup/AccountSettings;->updateAccounts()V
    invoke-static {v1}, Lcom/android/email/activity/setup/AccountSettings;->access$200(Lcom/android/email/activity/setup/AccountSettings;)V

    goto :goto_0

    .line 882
    .end local v0           #prefsHeader:Landroid/preference/PreferenceActivity$Header;
    :cond_4
    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback$1;->this$1:Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;

    iget-object v1, v1, Lcom/android/email/activity/setup/AccountSettings$RemoveAccountCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
