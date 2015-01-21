.class public Lcom/android/email/activity/DeleteMessageConfirmationDialog;
.super Landroid/app/DialogFragment;
.source "DeleteMessageConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
    }
.end annotation


# static fields
.field private static final COUNT_MESSAGES_ARG:Ljava/lang/String; = "count_messages"

.field public static final TAG:Ljava/lang/String; = "DeleteMessageConfirmationDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 38
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 90
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 92
    check-cast v0, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    .line 95
    .end local v0           #targetFragment:Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method public static newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;
    .locals 3
    .parameter "countMessage"
    .parameter "callbackFragment"

    .prologue
    .line 51
    new-instance v1, Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    invoke-direct {v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;-><init>()V

    .line 52
    .local v1, dialog:Lcom/android/email/activity/DeleteMessageConfirmationDialog;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "count_messages"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    if-eqz p1, :cond_0

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 58
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 81
    packed-switch p2, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->getCallback()Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;->onDeleteMessageConfirmationDialogOkPressed()V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "count_messages"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 65
    .local v2, countMessages:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 66
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 67
    .local v4, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const/4 v5, 0x1

    if-le v2, v5, :cond_0

    const v5, 0x7f0d0007

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, messageBody:Ljava/lang/String;
    :goto_0
    const v5, 0x7f080020

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080078

    invoke-virtual {v5, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f080079

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 68
    .end local v3           #messageBody:Ljava/lang/String;
    :cond_0
    const v5, 0x7f080021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
