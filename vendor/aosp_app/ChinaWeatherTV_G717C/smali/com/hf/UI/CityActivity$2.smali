.class Lcom/hf/UI/CityActivity$2;
.super Ljava/lang/Object;
.source "CityActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/CityActivity;
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
    iput-object p1, p0, Lcom/hf/UI/CityActivity$2;->this$0:Lcom/hf/UI/CityActivity;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 221
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 222
    .local v0, len:I
    if-nez v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/hf/UI/CityActivity$2;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 224
    .local v1, message:Landroid/os/Message;
    const/16 v2, 0x3ea

    iput v2, v1, Landroid/os/Message;->what:I

    .line 225
    iget-object v2, p0, Lcom/hf/UI/CityActivity$2;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    :goto_0
    return-void

    .line 227
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/hf/UI/CityActivity$2;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 228
    .restart local v1       #message:Landroid/os/Message;
    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 229
    iget-object v2, p0, Lcom/hf/UI/CityActivity$2;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/hf/UI/CityActivity;->access$12(Lcom/hf/UI/CityActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 218
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/hf/UI/CityActivity$2;->this$0:Lcom/hf/UI/CityActivity;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/hf/UI/CityActivity;->queryCity(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/hf/UI/CityActivity;->access$11(Lcom/hf/UI/CityActivity;Ljava/lang/String;)V

    .line 214
    return-void
.end method
