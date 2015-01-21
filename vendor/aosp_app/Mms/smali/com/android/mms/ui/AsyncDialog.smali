.class public Lcom/android/mms/ui/AsyncDialog;
.super Ljava/lang/Object;
.source "AsyncDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mShowProgressDialogRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/android/mms/ui/AsyncDialog$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog$1;-><init>(Lcom/android/mms/ui/AsyncDialog;)V

    iput-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    .line 41
    iput-object p1, p0, Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/AsyncDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/AsyncDialog;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/AsyncDialog;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/AsyncDialog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clearPendingProgressDialog()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/AsyncDialog;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 87
    :cond_0
    return-void
.end method

.method public dimissProgressDialog()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 191
    :cond_0
    return-void
.end method

.method public resetShowProgressDialog()V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/AsyncDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 197
    :cond_0
    return-void
.end method

.method public runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "backgroundTask"
    .parameter "postExecuteTask"
    .parameter "dialogStringId"

    .prologue
    .line 57
    new-instance v0, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/mms/ui/AsyncDialog$ModalDialogAsyncTask;-><init>(Lcom/android/mms/ui/AsyncDialog;ILjava/lang/Runnable;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Runnable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    return-void
.end method
