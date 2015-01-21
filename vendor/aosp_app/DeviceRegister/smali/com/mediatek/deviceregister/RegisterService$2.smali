.class Lcom/mediatek/deviceregister/RegisterService$2;
.super Ljava/lang/Thread;
.source "RegisterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/deviceregister/RegisterService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/deviceregister/RegisterService;


# direct methods
.method constructor <init>(Lcom/mediatek/deviceregister/RegisterService;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mediatek/deviceregister/RegisterService$2;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/mediatek/deviceregister/RegisterService$2;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    #calls: Lcom/mediatek/deviceregister/RegisterService;->needRegister()Z
    invoke-static {v1}, Lcom/mediatek/deviceregister/RegisterService;->access$100(Lcom/mediatek/deviceregister/RegisterService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 231
    .local v0, timer:Ljava/util/Timer;
    iget-object v1, p0, Lcom/mediatek/deviceregister/RegisterService$2;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    #getter for: Lcom/mediatek/deviceregister/RegisterService;->mTask:Ljava/util/TimerTask;
    invoke-static {v1}, Lcom/mediatek/deviceregister/RegisterService;->access$200(Lcom/mediatek/deviceregister/RegisterService;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 236
    .end local v0           #timer:Ljava/util/Timer;
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v1, "DeviceRegister/RegisterService"

    const-string v2, "Phone is not meet the requirement of register."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/mediatek/deviceregister/RegisterService$2;->this$0:Lcom/mediatek/deviceregister/RegisterService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0
.end method
