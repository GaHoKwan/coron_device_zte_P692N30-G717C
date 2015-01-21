.class Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Lcom/android/email/activity/setup/AccountSettingsFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountSettingsFragmentCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSettings;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSettings;Lcom/android/email/activity/setup/AccountSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 649
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;-><init>(Lcom/android/email/activity/setup/AccountSettings;)V

    return-void
.end method


# virtual methods
.method public abandonEdit()V
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 669
    return-void
.end method

.method public deleteAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->deleteAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 673
    return-void
.end method

.method public onEditQuickResponses(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onEditQuickResponses(Lcom/android/emailcommon/provider/Account;)V

    .line 657
    return-void
.end method

.method public onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 660
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onIncomingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 661
    return-void
.end method

.method public onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1}, Lcom/android/email/activity/setup/AccountSettings;->onOutgoingSettings(Lcom/android/emailcommon/provider/Account;)V

    .line 665
    return-void
.end method

.method public onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "account"
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSettings$AccountSettingsFragmentCallback;->this$0:Lcom/android/email/activity/setup/AccountSettings;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/email/activity/setup/AccountSettings;->onSettingsChanged(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/Object;)V

    .line 653
    return-void
.end method
