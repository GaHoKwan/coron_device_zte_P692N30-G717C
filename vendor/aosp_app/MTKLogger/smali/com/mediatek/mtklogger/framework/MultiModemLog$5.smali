.class Lcom/mediatek/mtklogger/framework/MultiModemLog$5;
.super Ljava/util/TimerTask;
.source "MultiModemLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/mtklogger/framework/MultiModemLog;->showResetModemDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/framework/MultiModemLog;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$5;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/mediatek/mtklogger/framework/MultiModemLog$5;->this$0:Lcom/mediatek/mtklogger/framework/MultiModemLog;

    #getter for: Lcom/mediatek/mtklogger/framework/MultiModemLog;->mMessageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/mediatek/mtklogger/framework/MultiModemLog;->access$2300(Lcom/mediatek/mtklogger/framework/MultiModemLog;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x36

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 847
    return-void
.end method
