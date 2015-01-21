.class public Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
.super Landroid/app/DialogFragment;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadingAttachProgressDialog"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LoadingAttachProgressDialog"

.field private static sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3566
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3569
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 3570
    return-void
.end method

.method public constructor <init>(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "loadingTask"

    .prologue
    .line 3576
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 3577
    sput-object p1, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3578
    return-void
.end method


# virtual methods
.method public isLoadingTaskNull()Z
    .locals 1

    .prologue
    .line 3585
    sget-object v0, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3607
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 3608
    const-string v0, "MessageCompose"

    const-string v1, "LoadingAttachProgressDialog is onCancel and mLoadingTask will be canceled too"

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3611
    sget-object v0, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    if-eqz v0, :cond_0

    .line 3612
    sget-object v0, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->cancel(Z)V

    .line 3613
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3615
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 3590
    const-string v2, "MessageCompose"

    const-string v3, "LoadingAttachProgressDialog onCreate."

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 3592
    .local v0, context:Landroid/content/Context;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3593
    .local v1, dialog:Landroid/app/ProgressDialog;
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3594
    const v2, 0x7f08001a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3595
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3596
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3597
    return-object v1
.end method

.method public resetLoadingTask(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "loadingTask"

    .prologue
    .line 3581
    sput-object p1, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->sLoadingTask:Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3582
    return-void
.end method
