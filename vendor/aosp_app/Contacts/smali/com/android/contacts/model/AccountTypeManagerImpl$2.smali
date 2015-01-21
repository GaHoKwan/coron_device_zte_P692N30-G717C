.class Lcom/android/contacts/model/AccountTypeManagerImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "AccountTypeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/contacts/model/AccountTypeManagerImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    .line 250
    const-string v3, "AccountTypeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received Intent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, iccState:Ljava/lang/String;
    const-string v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    const-string v3, "AccountTypeManager"

    const-string v4, "Received Sim Ready Intent"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 258
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 265
    .end local v1           #iccState:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 262
    .restart local v2       #msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->this$0:Lcom/android/contacts/model/AccountTypeManagerImpl;

    #getter for: Lcom/android/contacts/model/AccountTypeManagerImpl;->mListenerHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManagerImpl;->access$100(Lcom/android/contacts/model/AccountTypeManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
