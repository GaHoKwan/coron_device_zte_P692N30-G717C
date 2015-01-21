.class Lcom/android/mms/ui/SearchProgressDialogUtil;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProgressDialog(Landroid/content/Context;)Lcom/android/mms/ui/NewProgressDialog;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 3740
    new-instance v0, Lcom/android/mms/ui/NewProgressDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3741
    .local v0, dialog:Lcom/android/mms/ui/NewProgressDialog;
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 3742
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 3743
    const v1, 0x7f0b0238

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3744
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 3746
    new-instance v1, Lcom/android/mms/ui/SearchProgressDialogUtil$1;

    invoke-direct {v1}, Lcom/android/mms/ui/SearchProgressDialogUtil$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 3751
    return-object v0
.end method
