.class public Lcom/android/email/activity/LoadAttachmentsConfirmDialog;
.super Landroid/app/DialogFragment;
.source "LoadAttachmentsConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;
    }
.end annotation


# static fields
.field public static final EXTRA_ATTACHMENT_ADD_NUMBER:Ljava/lang/String; = "com.email.attachment.addnumber"

.field public static final EXTRA_ATTACHMENT_URIS:Ljava/lang/String; = "com.email.attachment.uris"

.field public static final TAG:Ljava/lang/String; = "LoadAttachmentsConfirmDialog"

.field private static sBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 21
    return-void
.end method

.method private getCallback()Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 71
    .local v0, targetFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 73
    check-cast v0, Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;

    .line 76
    .end local v0           #targetFragment:Landroid/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0       #targetFragment:Landroid/app/Fragment;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;

    move-object v0, v1

    goto :goto_0
.end method

.method public static newInstance(Landroid/os/Bundle;Landroid/app/Fragment;)Lcom/android/email/activity/LoadAttachmentsConfirmDialog;
    .locals 2
    .parameter "bundle"
    .parameter "callbackFragment"

    .prologue
    .line 35
    new-instance v0, Lcom/android/email/activity/LoadAttachmentsConfirmDialog;

    invoke-direct {v0}, Lcom/android/email/activity/LoadAttachmentsConfirmDialog;-><init>()V

    .line 36
    .local v0, dialog:Lcom/android/email/activity/LoadAttachmentsConfirmDialog;
    sput-object p0, Lcom/android/email/activity/LoadAttachmentsConfirmDialog;->sBundle:Landroid/os/Bundle;

    .line 37
    invoke-virtual {v0, p0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    if-eqz p1, :cond_0

    .line 39
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 41
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-direct {p0}, Lcom/android/email/activity/LoadAttachmentsConfirmDialog;->getCallback()Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;

    move-result-object v0

    sget-object v1, Lcom/android/email/activity/LoadAttachmentsConfirmDialog;->sBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;->onLoadAttachmentsConfirmDialogOkPressed(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "bundle"

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.email.attachment.addnumber"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, addNumber:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 48
    .local v2, context:Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f080018

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080016

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080078

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080079

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
