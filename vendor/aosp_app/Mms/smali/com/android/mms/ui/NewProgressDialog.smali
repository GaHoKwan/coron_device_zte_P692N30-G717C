.class Lcom/android/mms/ui/NewProgressDialog;
.super Landroid/app/ProgressDialog;
.source "MessageUtils.java"


# instance fields
.field private mIsDismiss:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 3758
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 3756
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NewProgressDialog;->mIsDismiss:Z

    .line 3759
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 3762
    invoke-virtual {p0}, Lcom/android/mms/ui/NewProgressDialog;->isDismiss()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3763
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 3765
    :cond_0
    return-void
.end method

.method public declared-synchronized isDismiss()Z
    .locals 1

    .prologue
    .line 3772
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/NewProgressDialog;->mIsDismiss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDismiss(Z)V
    .locals 1
    .parameter "isDismiss"

    .prologue
    .line 3768
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/mms/ui/NewProgressDialog;->mIsDismiss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3769
    monitor-exit p0

    return-void

    .line 3768
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
