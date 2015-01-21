.class public Lcom/android/email/activity/EditQuotedConfirmDialog;
.super Landroid/app/DialogFragment;
.source "EditQuotedConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "EditQuotedConfirmDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 20
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;

    return-object v0
.end method

.method public static newInstance()Lcom/android/email/activity/EditQuotedConfirmDialog;
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/android/email/activity/EditQuotedConfirmDialog;

    invoke-direct {v0}, Lcom/android/email/activity/EditQuotedConfirmDialog;-><init>()V

    .line 31
    .local v0, dialog:Lcom/android/email/activity/EditQuotedConfirmDialog;
    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 66
    invoke-direct {p0}, Lcom/android/email/activity/EditQuotedConfirmDialog;->getCallback()Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;->onConfirmDialogCancelPressed()V

    .line 67
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 51
    packed-switch p2, :pswitch_data_0

    .line 59
    invoke-direct {p0}, Lcom/android/email/activity/EditQuotedConfirmDialog;->getCallback()Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;->onConfirmDialogCancelPressed()V

    .line 61
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/EditQuotedConfirmDialog;->getCallback()Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;->onConfirmDialogOkPressed()V

    goto :goto_0

    .line 56
    :pswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/EditQuotedConfirmDialog;->getCallback()Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;->onConfirmDialogCancelPressed()V

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 37
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 38
    .local v3, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f08006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1010355

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08006d

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080078

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080079

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 45
    .local v2, d:Landroid/app/Dialog;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 46
    return-object v2
.end method
