.class public Lcom/android/email/activity/SafeFragment;
.super Landroid/app/Fragment;
.source "SafeFragment.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/SafeFragment;->mList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/SafeFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected addResumeRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "run"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/email/activity/SafeFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 53
    iget-object v2, p0, Lcom/android/email/activity/SafeFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 54
    .local v1, run:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/email/activity/SafeFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 56
    .end local v1           #run:Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Lcom/android/email/activity/SafeFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 57
    return-void
.end method
