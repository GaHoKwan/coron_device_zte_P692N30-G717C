.class Lcom/hf/service/WeatherReceiver$1;
.super Landroid/os/Handler;
.source "WeatherReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/service/WeatherReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/service/WeatherReceiver;


# direct methods
.method constructor <init>(Lcom/hf/service/WeatherReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/service/WeatherReceiver$1;->this$0:Lcom/hf/service/WeatherReceiver;

    .line 43
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 45
    iget v4, p1, Landroid/os/Message;->what:I

    .line 47
    .local v4, what:I
    const-string v5, "WeatherReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "what = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/16 v5, 0xc9

    if-ne v4, v5, :cond_1

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.hf.location.FAILED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/hf/service/WeatherReceiver$1;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/16 v5, 0xca

    if-ne v4, v5, :cond_0

    .line 54
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.hf.location.SUCCESSED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/hf/model/CityModel;

    .line 56
    .local v0, city:Lcom/hf/model/CityModel;
    const-string v5, "cityID"

    iget-object v6, v0, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v2, v0, Lcom/hf/model/CityModel;->lat:Ljava/lang/String;

    .line 58
    .local v2, lat:Ljava/lang/String;
    const-string v5, "lat"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v3, v0, Lcom/hf/model/CityModel;->lng:Ljava/lang/String;

    .line 60
    .local v3, lng:Ljava/lang/String;
    const-string v5, "lng"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v5, p0, Lcom/hf/service/WeatherReceiver$1;->this$0:Lcom/hf/service/WeatherReceiver;

    #getter for: Lcom/hf/service/WeatherReceiver;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/hf/service/WeatherReceiver;->access$0(Lcom/hf/service/WeatherReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
