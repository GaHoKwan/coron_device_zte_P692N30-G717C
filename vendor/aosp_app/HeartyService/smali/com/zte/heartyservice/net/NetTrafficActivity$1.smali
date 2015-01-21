.class Lcom/zte/heartyservice/net/NetTrafficActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "NetTrafficActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/NetTrafficActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$1;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "arg0"
    .parameter "intent"

    .prologue
    .line 109
    if-nez p2, :cond_1

    .line 110
    const-string v1, "NetTrafficActivity"

    const-string v2, "onReceive: intent == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, action:Ljava/lang/String;
    const-string v1, "NetTrafficActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v1, "com.zte.heartyservice.TRAFFIC_CORRECTION_FINISH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity$1;->this$0:Lcom/zte/heartyservice/net/NetTrafficActivity;

    const/4 v2, 0x0

    #calls: Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V
    invoke-static {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficActivity;->access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V

    goto :goto_0
.end method
