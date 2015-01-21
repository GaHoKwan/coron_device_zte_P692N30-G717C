.class Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;
.super Landroid/content/BroadcastReceiver;
.source "FunctionRead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/FunctionRead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 58
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[FunctionRead]mReceiver onReceive"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.mediatek.hqanfc.104"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    #setter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRspArray:[B
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$002(Lcom/mediatek/engineermode/hqanfc/FunctionRead;[B)[B

    .line 64
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$000(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$000(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    .local v1, buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;-><init>()V

    #setter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$102(Lcom/mediatek/engineermode/hqanfc/FunctionRead;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    .line 67
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$100(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 68
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/FunctionRead$1;->this$0:Lcom/mediatek/engineermode/hqanfc/FunctionRead;

    #getter for: Lcom/mediatek/engineermode/hqanfc/FunctionRead;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/FunctionRead;->access$200(Lcom/mediatek/engineermode/hqanfc/FunctionRead;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[FunctionRead]Other response"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
