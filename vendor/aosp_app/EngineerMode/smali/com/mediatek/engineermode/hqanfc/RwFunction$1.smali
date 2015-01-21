.class Lcom/mediatek/engineermode/hqanfc/RwFunction$1;
.super Landroid/content/BroadcastReceiver;
.source "RwFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/RwFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/RwFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 50
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[RwFunction]mReceiver onReceive"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    #setter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$002(Lcom/mediatek/engineermode/hqanfc/RwFunction;[B)[B

    .line 53
    const-string v2, "com.mediatek.hqanfc.104"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$000(Lcom/mediatek/engineermode/hqanfc/RwFunction;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$000(Lcom/mediatek/engineermode/hqanfc/RwFunction;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 57
    .local v1, buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;-><init>()V

    #setter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$102(Lcom/mediatek/engineermode/hqanfc/RwFunction;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    .line 58
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mOptRsp:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$100(Lcom/mediatek/engineermode/hqanfc/RwFunction;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermOptRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 59
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$200(Lcom/mediatek/engineermode/hqanfc/RwFunction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v2, "com.mediatek.hqanfc.118"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$000(Lcom/mediatek/engineermode/hqanfc/RwFunction;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 64
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$000(Lcom/mediatek/engineermode/hqanfc/RwFunction;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 66
    .restart local v1       #buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mReceivedReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$300(Lcom/mediatek/engineermode/hqanfc/RwFunction;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 67
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$200(Lcom/mediatek/engineermode/hqanfc/RwFunction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 69
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_2
    const-string v2, "com.mediatek.hqanfc.117"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$000(Lcom/mediatek/engineermode/hqanfc/RwFunction;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$000(Lcom/mediatek/engineermode/hqanfc/RwFunction;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 73
    .restart local v1       #buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;-><init>()V

    #setter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$402(Lcom/mediatek/engineermode/hqanfc/RwFunction;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    .line 74
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mPollingNty:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$400(Lcom/mediatek/engineermode/hqanfc/RwFunction;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmPollingNty;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 75
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/RwFunction$1;->this$0:Lcom/mediatek/engineermode/hqanfc/RwFunction;

    #getter for: Lcom/mediatek/engineermode/hqanfc/RwFunction;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/RwFunction;->access$200(Lcom/mediatek/engineermode/hqanfc/RwFunction;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 78
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_3
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[RwFunction]Other response"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
