.class Lcom/hf/UI/WeatherGroupActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "WeatherGroupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/WeatherGroupActivity;->registBroadCast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/WeatherGroupActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/WeatherGroupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    .line 285
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, action:Ljava/lang/String;
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 292
    const-string v3, "WeatherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const-string v3, "com.hf.ADD_CITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 297
    .local v2, message:Landroid/os/Message;
    const/16 v3, 0x64

    iput v3, v2, Landroid/os/Message;->what:I

    .line 298
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    const-string v5, "cityID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 347
    .end local v2           #message:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    const-string v3, "com.hf.DELETE_CITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 302
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x65

    iput v3, v2, Landroid/os/Message;->what:I

    .line 303
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    const-string v5, "cityID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 305
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    const-string v3, "com.hf.UPDATE_ALL_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 306
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 307
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x66

    iput v3, v2, Landroid/os/Message;->what:I

    .line 308
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 309
    .end local v2           #message:Landroid/os/Message;
    :cond_4
    const-string v3, "com.hf.UPDATE_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 310
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 311
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x6a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 312
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    const-string v5, "cityID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 314
    .end local v2           #message:Landroid/os/Message;
    :cond_5
    const-string v3, "com.hf.CHANGE_CURRENT_CITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 315
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 316
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x67

    iput v3, v2, Landroid/os/Message;->what:I

    .line 317
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    const-string v5, "cityID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 319
    .end local v2           #message:Landroid/os/Message;
    :cond_6
    const-string v3, "com.hf.UPDATE_CITY_WEATHER"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 320
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 321
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x68

    iput v3, v2, Landroid/os/Message;->what:I

    .line 322
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 323
    .end local v2           #message:Landroid/os/Message;
    :cond_7
    const-string v3, "com.hf.MODIFY_CITY_NAME"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 324
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 325
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x69

    iput v3, v2, Landroid/os/Message;->what:I

    .line 326
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 327
    .local v1, bundle:Landroid/os/Bundle;
    const-string v3, "cityID"

    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 329
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #message:Landroid/os/Message;
    :cond_8
    const-string v3, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 330
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 331
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x6b

    iput v3, v2, Landroid/os/Message;->what:I

    .line 332
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 333
    .end local v2           #message:Landroid/os/Message;
    :cond_9
    const-string v3, "com.hf.CHANGE_TEMPERATURE_TYPE"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 334
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 335
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x6c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 336
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 337
    .end local v2           #message:Landroid/os/Message;
    :cond_a
    const-string v3, "com.hf.QUERY_WEATHER_FAILED"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 338
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 339
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x6e

    iput v3, v2, Landroid/os/Message;->what:I

    .line 340
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "cityID"

    const-string v5, "cityID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 342
    .end local v2           #message:Landroid/os/Message;
    :cond_b
    const-string v3, "com.hf.RELOAD"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 344
    .restart local v2       #message:Landroid/os/Message;
    const/16 v3, 0x6f

    iput v3, v2, Landroid/os/Message;->what:I

    .line 345
    iget-object v3, p0, Lcom/hf/UI/WeatherGroupActivity$3;->this$0:Lcom/hf/UI/WeatherGroupActivity;

    #getter for: Lcom/hf/UI/WeatherGroupActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/hf/UI/WeatherGroupActivity;->access$14(Lcom/hf/UI/WeatherGroupActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
