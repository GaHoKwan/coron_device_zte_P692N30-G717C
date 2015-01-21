.class Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;
.super Landroid/os/Handler;
.source "LargeWidgetAnimService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V
    .locals 0
    .parameter

    .prologue
    .line 164
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

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

    .line 166
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish2:Z
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1000(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish3:Z
    invoke-static {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1100(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    const-class v4, Lcom/zte/heartyservice/appwidget/WidgetMemUpdateService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 172
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->removeMessages(I)V

    .line 177
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->removeMessages(I)V

    .line 178
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->removeMessages(I)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->removeMessages(I)V

    .line 180
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->removeMessages(I)V

    .line 181
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-virtual {v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->stopService()V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1210(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    .line 185
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->toastLock:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->showToast()V
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1300(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)V

    .line 187
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 191
    :pswitch_3
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentNew:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 192
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentNew:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1502(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I

    .line 193
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    if-nez v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentNew:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I
    invoke-static {v4}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v4

    if-le v3, v4, :cond_2

    :goto_1
    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I
    invoke-static {v2, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1502(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->step:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1500(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1412(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)I

    .line 197
    iget-object v1, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v2

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->setMemPercent(I)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)V

    .line 198
    const-wide/16 v1, 0x64

    invoke-virtual {p0, v5, v1, v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 194
    :cond_2
    const/4 v1, -0x1

    goto :goto_1

    .line 200
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->percentOld:I
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1400(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)I

    move-result v3

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->setMemPercent(I)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1600(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;I)V

    .line 201
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #setter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->finish3:Z
    invoke-static {v2, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1102(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Z)Z

    .line 202
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 206
    :pswitch_4
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    const/4 v3, 0x0

    #calls: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->showWidgetProgress(Z)V
    invoke-static {v2, v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1700(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;Z)V

    .line 207
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mISpeedUpService:Lcom/zte/heartyservice/speedup/ISpeedUpService;
    invoke-static {v2}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$200(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/speedup/ISpeedUpService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.intent.action.startService.SPEEDUPSERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, serviceIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    iget-object v3, p0, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$2;->this$0:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;

    #getter for: Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->mSpeedUpServiceConnection:Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;
    invoke-static {v3}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->access$1800(Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;)Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService$SpeedUpServiceConnection;

    move-result-object v3

    invoke-virtual {v2, v0, v3, v1}, Lcom/zte/heartyservice/appwidget/LargeWidgetAnimService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto/16 :goto_0

    .line 166
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
