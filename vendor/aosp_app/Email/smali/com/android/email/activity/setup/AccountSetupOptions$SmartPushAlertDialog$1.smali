.class Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog$1;
.super Ljava/lang/Object;
.source "AccountSetupOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 543
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupOptions;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mSmartPushDialogShown:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$002(Lcom/android/email/activity/setup/AccountSetupOptions;Z)Z

    .line 544
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog$1;->this$0:Lcom/android/email/activity/setup/AccountSetupOptions$SmartPushAlertDialog;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/setup/AccountSetupOptions;

    const/4 v1, 0x1

    #setter for: Lcom/android/email/activity/setup/AccountSetupOptions;->mSmartPushDialogConfirmed:Z
    invoke-static {v0, v1}, Lcom/android/email/activity/setup/AccountSetupOptions;->access$102(Lcom/android/email/activity/setup/AccountSetupOptions;Z)Z

    .line 545
    return-void
.end method
