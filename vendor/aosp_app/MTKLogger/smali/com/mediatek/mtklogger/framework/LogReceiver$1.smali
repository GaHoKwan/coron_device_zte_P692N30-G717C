.class final Lcom/mediatek/mtklogger/framework/LogReceiver$1;
.super Landroid/os/Handler;
.source "LogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/framework/LogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 241
    iget v0, p1, Landroid/os/Message;->what:I

    .line 242
    .local v0, what:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    const-string v1, "MTKLogger/LogReceiver"

    const-string v2, "Get a self-kill command. Need to kill me now"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-boolean v1, Lcom/mediatek/mtklogger/framework/LogReceiver;->canKillSelf:Z

    if-eqz v1, :cond_1

    .line 245
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    const-string v1, "MTKLogger/LogReceiver"

    const-string v2, "But Log service was started already, maybe user enter UI.Do not kill self any more."

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
