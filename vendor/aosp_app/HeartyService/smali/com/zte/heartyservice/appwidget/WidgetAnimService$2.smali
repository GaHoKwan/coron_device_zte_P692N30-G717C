.class Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;
.super Landroid/os/Handler;
.source "WidgetAnimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/WidgetAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    .line 186
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish2:Z
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1100(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish3:Z
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1200(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    const-class v4, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 192
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 196
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->removeMessages(I)V

    .line 197
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->removeMessages(I)V

    .line 198
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->removeMessages(I)V

    .line 199
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->removeMessages(I)V

    .line 200
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->removeMessages(I)V

    .line 201
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-virtual {v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->stopService()V

    goto :goto_0

    .line 204
    :pswitch_2
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1310(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    .line 205
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->toastLock:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1300(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->showToast()V
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1400(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)V

    .line 207
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 211
    :pswitch_3
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentNew:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$900(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 212
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentNew:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$900(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1602(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I

    .line 213
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1600(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentNew:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$900(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I
    invoke-static {v2, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1602(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->step:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1600(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1512(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)I

    .line 217
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v2

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->setMemPercent(I)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1700(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)V

    .line 218
    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v5, v1, v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 214
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->percentOld:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)I

    move-result v3

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->setMemPercent(I)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1700(Lcom/zte/heartyservice/appwidget/WidgetAnimService;I)V

    .line 221
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #setter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->finish3:Z
    invoke-static {v2, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1202(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Z)Z

    .line 222
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 226
    :pswitch_4
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    const/4 v3, 0x0

    #calls: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->showWidgetProgress(Z)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1800(Lcom/zte/heartyservice/appwidget/WidgetAnimService;Z)V

    .line 227
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$500(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/WidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/WidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/WidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->access$1900(Lcom/zte/heartyservice/appwidget/WidgetAnimService;)Lcom/zte/heartyservice/appwidget/WidgetAnimService$SpeedUpServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/zte/heartyservice/appwidget/WidgetAnimService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
