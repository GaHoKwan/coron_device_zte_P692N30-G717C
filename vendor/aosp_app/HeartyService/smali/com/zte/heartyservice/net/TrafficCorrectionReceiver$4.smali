.class Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;
.super Ljava/lang/Thread;
.source "TrafficCorrectionReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

.field final synthetic val$msg:Ljava/lang/StringBuilder;

.field final synthetic val$phonenum:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;->this$0:Lcom/zte/heartyservice/net/TrafficCorrectionReceiver;

    iput-object p2, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;->val$phonenum:Ljava/lang/String;

    iput-object p3, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;->val$msg:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 198
    iget-object v0, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;->val$phonenum:Ljava/lang/String;

    iget-object v1, p0, Lcom/zte/heartyservice/net/TrafficCorrectionReceiver$4;->val$msg:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/net/Tencent/TrafficCorrection;->trafficCorrection(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method
