.class Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
.super Ljava/lang/Thread;
.source "CdsUtilityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsUtilityActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressThread"
.end annotation


# static fields
.field private static final STATE_DONE:I = 0x0

.field private static final STATE_RUNNING:I = 0x1


# instance fields
.field mHandler:Landroid/os/Handler;

.field private mState:I

.field final synthetic this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsUtilityActivity;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "h"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->this$0:Lcom/mediatek/connectivity/CdsUtilityActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mState:I

    .line 351
    iput-object p2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    .line 352
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 355
    invoke-virtual {p0, v4}, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->setState(I)V

    .line 357
    :goto_0
    iget v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mState:I

    if-ne v4, v2, :cond_0

    .line 359
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 365
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x3001

    iput v2, v1, Landroid/os/Message;->what:I

    .line 366
    iget-object v2, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 360
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 361
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CdsUtilityActivity"

    const-string v3, "Thread Interrupted"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 368
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 374
    iput p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;->mState:I

    .line 375
    return-void
.end method
