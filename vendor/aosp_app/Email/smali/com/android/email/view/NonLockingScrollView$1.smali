.class Lcom/android/email/view/NonLockingScrollView$1;
.super Landroid/os/Handler;
.source "NonLockingScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/view/NonLockingScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mOverHandleInterval:Z

.field final synthetic this$0:Lcom/android/email/view/NonLockingScrollView;


# direct methods
.method constructor <init>(Lcom/android/email/view/NonLockingScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/email/view/NonLockingScrollView$1;->this$0:Lcom/android/email/view/NonLockingScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView$1;->mOverHandleInterval:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/email/view/NonLockingScrollView$1;->mOverHandleInterval:Z

    if-eqz v0, :cond_0

    .line 110
    iput-boolean v5, p0, Lcom/android/email/view/NonLockingScrollView$1;->mOverHandleInterval:Z

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NonLockingScrollView handleMessage toggling loading actually !!! spend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/view/NonLockingScrollView$1;->this$0:Lcom/android/email/view/NonLockingScrollView;

    #getter for: Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J
    invoke-static {v3}, Lcom/android/email/view/NonLockingScrollView;->access$000(Lcom/android/email/view/NonLockingScrollView;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView$1;->this$0:Lcom/android/email/view/NonLockingScrollView;

    #getter for: Lcom/android/email/view/NonLockingScrollView;->mOnOverScrollListener:Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;
    invoke-static {v0}, Lcom/android/email/view/NonLockingScrollView;->access$100(Lcom/android/email/view/NonLockingScrollView;)Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/email/view/NonLockingScrollView$OnOverScrollListener;->onOverScrolled()V

    .line 114
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView$1;->this$0:Lcom/android/email/view/NonLockingScrollView;

    #setter for: Lcom/android/email/view/NonLockingScrollView;->mToggleLoading:Z
    invoke-static {v0, v5}, Lcom/android/email/view/NonLockingScrollView;->access$202(Lcom/android/email/view/NonLockingScrollView;Z)Z

    .line 115
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView$1;->this$0:Lcom/android/email/view/NonLockingScrollView;

    const-wide/16 v1, 0x0

    #setter for: Lcom/android/email/view/NonLockingScrollView;->mElapsedOverScrolled:J
    invoke-static {v0, v1, v2}, Lcom/android/email/view/NonLockingScrollView;->access$002(Lcom/android/email/view/NonLockingScrollView;J)J

    .line 116
    iget-object v0, p0, Lcom/android/email/view/NonLockingScrollView$1;->this$0:Lcom/android/email/view/NonLockingScrollView;

    #getter for: Lcom/android/email/view/NonLockingScrollView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/email/view/NonLockingScrollView;->access$300(Lcom/android/email/view/NonLockingScrollView;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/email/view/NonLockingScrollView$1$1;

    invoke-direct {v1, p0}, Lcom/android/email/view/NonLockingScrollView$1$1;-><init>(Lcom/android/email/view/NonLockingScrollView$1;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
