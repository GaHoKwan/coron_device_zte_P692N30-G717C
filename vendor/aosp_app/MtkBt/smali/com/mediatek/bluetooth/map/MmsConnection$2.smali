.class Lcom/mediatek/bluetooth/map/MmsConnection$2;
.super Landroid/content/BroadcastReceiver;
.source "MmsConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MmsConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/bluetooth/map/MmsConnection;


# direct methods
.method constructor <init>(Lcom/mediatek/bluetooth/map/MmsConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/MmsConnection$2;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "receive intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$000(Ljava/lang/String;)V

    .line 228
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 229
    const-string v6, "simId"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 230
    .local v2, simId:I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 231
    .local v1, b:Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 232
    const-string v6, "networkInfo"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 233
    .local v0, a:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 251
    .end local v0           #a:Landroid/net/NetworkInfo;
    .end local v1           #b:Landroid/os/Bundle;
    .end local v2           #simId:I
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0       #a:Landroid/net/NetworkInfo;
    .restart local v1       #b:Landroid/os/Bundle;
    .restart local v2       #simId:I
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 237
    .local v3, state:Landroid/net/NetworkInfo$State;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 238
    .local v5, type:I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    .line 239
    .local v4, subtype:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connectivity type name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", subtype is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "state is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "sim id is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/bluetooth/map/MmsConnection;->log(Ljava/lang/String;)V
    invoke-static {v6}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$000(Ljava/lang/String;)V

    .line 244
    if-eqz v5, :cond_2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    :cond_2
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v6, :cond_0

    .line 246
    iget-object v6, p0, Lcom/mediatek/bluetooth/map/MmsConnection$2;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$800(Lcom/mediatek/bluetooth/map/MmsConnection;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/bluetooth/map/MmsConnection$2;->this$0:Lcom/mediatek/bluetooth/map/MmsConnection;

    #getter for: Lcom/mediatek/bluetooth/map/MmsConnection;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/mediatek/bluetooth/map/MmsConnection;->access$800(Lcom/mediatek/bluetooth/map/MmsConnection;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
