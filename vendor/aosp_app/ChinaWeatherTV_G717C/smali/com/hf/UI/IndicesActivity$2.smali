.class Lcom/hf/UI/IndicesActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "IndicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/IndicesActivity;->registBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/IndicesActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/IndicesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    .line 349
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 353
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.hf.UPDATE_ALL_WEATHER"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 356
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x65

    iput v2, v1, Landroid/os/Message;->what:I

    .line 357
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 388
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    const-string v2, "com.hf.UPDATE_WEATHER"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 360
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x68

    iput v2, v1, Landroid/os/Message;->what:I

    .line 361
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cityID"

    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 363
    .end local v1           #message:Landroid/os/Message;
    :cond_2
    const-string v2, "com.hf.ADD_CITY"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 364
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 365
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x66

    iput v2, v1, Landroid/os/Message;->what:I

    .line 366
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cityID"

    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 369
    .end local v1           #message:Landroid/os/Message;
    :cond_3
    const-string v2, "com.hf.DELETE_CITY"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 370
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 371
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x67

    iput v2, v1, Landroid/os/Message;->what:I

    .line 372
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cityID"

    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 374
    .end local v1           #message:Landroid/os/Message;
    :cond_4
    const-string v2, "com.hf.MODIFY_CITY_NAME"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 375
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 376
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x69

    iput v2, v1, Landroid/os/Message;->what:I

    .line 377
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "cityID"

    const-string v4, "cityID"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 379
    .end local v1           #message:Landroid/os/Message;
    :cond_5
    const-string v2, "com.hf.CHANGE_DEFAULT_CITY"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 381
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x6b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 382
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 383
    .end local v1           #message:Landroid/os/Message;
    :cond_6
    const-string v2, "com.hf.RELOAD"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 385
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x6c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 386
    iget-object v2, p0, Lcom/hf/UI/IndicesActivity$2;->this$0:Lcom/hf/UI/IndicesActivity;

    #getter for: Lcom/hf/UI/IndicesActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/IndicesActivity;->access$6(Lcom/hf/UI/IndicesActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
