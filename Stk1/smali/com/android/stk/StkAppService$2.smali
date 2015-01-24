.class Lcom/android/stk/StkAppService$2;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0
    .parameter

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0xa

    .line 1485
    const/4 v1, 0x0

    .line 1486
    .local v1, sim_id:I
    const-string v2, "Stk-SAS "

    const-string v3, "mCallDisConnHandler"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1501
    :goto_0
    const-string v2, "Stk-SAS "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send OP_EVDL_CALL_DISCONN_TIMEOUT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v2, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1600(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1504
    .local v0, msg1:Landroid/os/Message;
    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 1505
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 1506
    iget-object v2, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    #getter for: Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;
    invoke-static {v2}, Lcom/android/stk/StkAppService;->access$1600(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;

    move-result-object v2

    const-wide/16 v3, 0x1f40

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1508
    return-void

    .line 1489
    .end local v0           #msg1:Landroid/os/Message;
    :pswitch_0
    const/4 v1, 0x0

    .line 1490
    goto :goto_0

    .line 1492
    :pswitch_1
    const/4 v1, 0x1

    .line 1493
    goto :goto_0

    .line 1495
    :pswitch_2
    const/4 v1, 0x2

    .line 1496
    goto :goto_0

    .line 1498
    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    .line 1487
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
