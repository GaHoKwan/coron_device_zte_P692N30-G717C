.class Lcom/isw/android/corp/util/WifiReceiver$MyHandler;
.super Landroid/os/Handler;
.source "WifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isw/android/corp/util/WifiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isw/android/corp/util/WifiReceiver;


# direct methods
.method constructor <init>(Lcom/isw/android/corp/util/WifiReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/isw/android/corp/util/WifiReceiver$MyHandler;->this$0:Lcom/isw/android/corp/util/WifiReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 28
    :goto_0
    return-void

    .line 21
    :pswitch_0
    invoke-static {}, Lcom/isw/android/corp/util/WifiReceiver;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "receive msg begin!"

    invoke-static {v0, v1}, Lcom/isw/android/corp/util/LOG;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/isw/android/corp/util/WifiReceiver$MyHandler;->this$0:Lcom/isw/android/corp/util/WifiReceiver;

    #getter for: Lcom/isw/android/corp/util/WifiReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/isw/android/corp/util/WifiReceiver;->access$1(Lcom/isw/android/corp/util/WifiReceiver;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isw/android/corp/util/EngineTask;->engineScheduleTask(Landroid/content/Context;)V

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
