.class Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;
.super Landroid/os/Handler;
.source "TrafficCorrectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;->this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    .line 42
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 45
    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;->this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->trafficCorrectionStop()V

    .line 52
    const-string v1, "TrafficCorrectionReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close sInstance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$000()Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", TrafficCorrectionReceiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;->this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$000()Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$1;->this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    if-ne v1, v2, :cond_0

    .line 56
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$000()Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    move-result-object v1

    #getter for: Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->mResult:I
    invoke-static {v1}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$100(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;)I

    move-result v1

    if-nez v1, :cond_1

    .line 57
    #calls: Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->showFailedDialog()V
    invoke-static {}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$200()V

    .line 59
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->access$002(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;)Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    .line 60
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;->releaseRef()V

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TrafficCorrectionReceiver"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
