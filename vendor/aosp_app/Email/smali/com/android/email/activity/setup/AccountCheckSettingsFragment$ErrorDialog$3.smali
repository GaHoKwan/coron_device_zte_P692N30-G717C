.class Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;
.super Ljava/lang/Object;
.source "AccountCheckSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

.field final synthetic val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    iput-object p2, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;->this$0:Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1009
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountCheckSettingsFragment$ErrorDialog$3;->val$target:Lcom/android/email/activity/setup/AccountCheckSettingsFragment;

    #calls: Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->onErrorDialogEditButton()V
    invoke-static {v0}, Lcom/android/email/activity/setup/AccountCheckSettingsFragment;->access$400(Lcom/android/email/activity/setup/AccountCheckSettingsFragment;)V

    .line 1010
    return-void
.end method