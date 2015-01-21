.class Lcom/mediatek/apst/target/service/MainService$MainHandler;
.super Landroid/os/Handler;
.source "MainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/service/MainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/service/MainService;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/service/MainService;)V
    .locals 0
    .parameter

    .prologue
    .line 3277
    iput-object p1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 3281
    if-nez p1, :cond_1

    .line 3282
    const-string v1, "Message received is null."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 3320
    :cond_0
    :goto_0
    return-void

    .line 3286
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 3317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    goto :goto_0

    .line 3288
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->init()V
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$2000(Lcom/mediatek/apst/target/service/MainService;)V

    goto :goto_0

    .line 3292
    :pswitch_1
    const-string v1, "Check timeout for creating connection!"

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logI(Ljava/lang/String;)V

    .line 3293
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mConnector:Lcom/mediatek/apst/target/service/MainService$Connector;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$2100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$Connector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #calls: Lcom/mediatek/apst/target/service/MainService;->isConnected()Z
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$800(Lcom/mediatek/apst/target/service/MainService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3295
    :try_start_0
    const-string v1, "Create connection timeout, try to interrupt connector thread."

    invoke-static {v1}, Lcom/mediatek/apst/target/util/Debugger;->logW(Ljava/lang/String;)V

    .line 3297
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    #getter for: Lcom/mediatek/apst/target/service/MainService;->mConnector:Lcom/mediatek/apst/target/service/MainService$Connector;
    invoke-static {v1}, Lcom/mediatek/apst/target/service/MainService;->access$2100(Lcom/mediatek/apst/target/service/MainService;)Lcom/mediatek/apst/target/service/MainService$Connector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3304
    :goto_1
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 3298
    :catch_0
    move-exception v0

    .line 3299
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "Exception occurs when try to interrupt connector thread."

    invoke-static {v1, v0}, Lcom/mediatek/apst/target/util/Debugger;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3301
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 3309
    .end local v0           #e:Ljava/lang/SecurityException;
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v1}, Lcom/mediatek/apst/target/service/MainService;->safeStop()V

    goto :goto_0

    .line 3313
    :pswitch_3
    iget-object v1, p0, Lcom/mediatek/apst/target/service/MainService$MainHandler;->this$0:Lcom/mediatek/apst/target/service/MainService;

    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 3286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
