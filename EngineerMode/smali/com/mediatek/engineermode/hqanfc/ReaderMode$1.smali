.class Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;
.super Landroid/content/BroadcastReceiver;
.source "ReaderMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/engineermode/hqanfc/ReaderMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    const-string v2, "EM/HQA/NFC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ReaderMode]mReceiver onReceive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    #setter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$002(Lcom/mediatek/engineermode/hqanfc/ReaderMode;[B)[B

    .line 91
    const-string v2, "com.mediatek.hqanfc.102"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 94
    .local v1, buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;-><init>()V

    #setter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$102(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

    .line 95
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mResponse:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$100(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermRsp;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmRsp;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 96
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$200(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const-string v2, "com.mediatek.hqanfc.118"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mRspArray:[B
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$000(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 102
    .restart local v1       #buffer:Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    new-instance v3, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    invoke-direct {v3}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;-><init>()V

    #setter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v2, v3}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$302(Lcom/mediatek/engineermode/hqanfc/ReaderMode;Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    .line 103
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mReadermNtf:Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$300(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mediatek/engineermode/hqanfc/NfcEmReqRsp$NfcEmAlsReadermNtf;->readRaw(Ljava/nio/ByteBuffer;)V

    .line 104
    iget-object v2, p0, Lcom/mediatek/engineermode/hqanfc/ReaderMode$1;->this$0:Lcom/mediatek/engineermode/hqanfc/ReaderMode;

    #getter for: Lcom/mediatek/engineermode/hqanfc/ReaderMode;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/engineermode/hqanfc/ReaderMode;->access$200(Lcom/mediatek/engineermode/hqanfc/ReaderMode;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 107
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    :cond_2
    const-string v2, "EM/HQA/NFC"

    const-string v3, "[ReaderMode]Other response"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
