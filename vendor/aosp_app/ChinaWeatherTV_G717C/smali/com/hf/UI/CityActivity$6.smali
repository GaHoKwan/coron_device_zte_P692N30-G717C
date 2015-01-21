.class Lcom/hf/UI/CityActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->registBoradCast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    .line 385
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 389
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, action:Ljava/lang/String;
    sget-boolean v2, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v2, :cond_0

    .line 392
    const-string v2, "CityActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    const-string v2, "com.hf.UPDATE_ALL_WEATHER"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 397
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 398
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    const-string v2, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 400
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 401
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x3f3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 402
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 404
    .end local v1           #message:Landroid/os/Message;
    :cond_3
    const-string v2, "com.hf.UPDATE_WEATHER"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 405
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 406
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x3ec

    iput v2, v1, Landroid/os/Message;->what:I

    .line 407
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cityID"

    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 409
    .end local v1           #message:Landroid/os/Message;
    :cond_4
    const-string v2, "com.hf.ADD_CITY"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 410
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 411
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x3f0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 412
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 413
    .end local v1           #message:Landroid/os/Message;
    :cond_5
    const-string v2, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 414
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mWeatherAdapter:Lcom/hf/UI/CityActivity$WeatherAdapter;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$6(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/CityActivity$WeatherAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/hf/UI/CityActivity$WeatherAdapter;->notifyDataSetChanged()V

    .line 415
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #calls: Lcom/hf/UI/CityActivity;->setDefCityWeather()V
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$5(Lcom/hf/UI/CityActivity;)V

    goto/16 :goto_0

    .line 416
    :cond_6
    const-string v2, "com.hf.RELOAD"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 418
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x3f4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 419
    iget-object v2, p0, Lcom/hf/UI/CityActivity$6;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
