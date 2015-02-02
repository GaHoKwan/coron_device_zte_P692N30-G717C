.class Lcom/mediatek/engineermode/cwtest/ClientSocket$1;
.super Ljava/lang/Object;
.source "ClientSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/cwtest/ClientSocket;-><init>(Lcom/mediatek/engineermode/cwtest/CWTest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/cwtest/ClientSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 92
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$100(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$002(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    const-string v5, "CWTEST/ClientSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queue take command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$000(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #calls: Lcom/mediatek/engineermode/cwtest/ClientSocket;->openClient()V
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$200(Lcom/mediatek/engineermode/cwtest/ClientSocket;)V

    .line 100
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$300(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$400(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataInputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 104
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$300(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$000(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 105
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$300(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 106
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$300(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 107
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$300(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, result:Ljava/lang/String;
    const/4 v3, 0x0

    .line 110
    .local v3, line:I
    const/4 v0, -0x1

    .line 111
    .local v0, count:I
    :cond_0
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataInput:Ljava/io/DataInputStream;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$400(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/io/DataInputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataBuffer:[B
    invoke-static {v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$500(Lcom/mediatek/engineermode/cwtest/ClientSocket;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    new-instance v4, Ljava/lang/String;

    .end local v4           #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mDataBuffer:[B
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$500(Lcom/mediatek/engineermode/cwtest/ClientSocket;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([BII)V

    .line 114
    .restart local v4       #result:Ljava/lang/String;
    const-string v5, "CWTEST/ClientSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "line: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sentence: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v5, "PMTK817"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #setter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$602(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    const-string v5, "CWTEST/ClientSocket"

    const-string v6, "Get response from MNL"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v0           #count:I
    .end local v3           #line:I
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$700(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Lcom/mediatek/engineermode/cwtest/CWTest;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 137
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCallBack:Lcom/mediatek/engineermode/cwtest/CWTest;
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$700(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Lcom/mediatek/engineermode/cwtest/CWTest;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #getter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$600(Lcom/mediatek/engineermode/cwtest/ClientSocket;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/engineermode/cwtest/CWTest;->onResponse(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$002(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    #calls: Lcom/mediatek/engineermode/cwtest/ClientSocket;->closeClient()V
    invoke-static {v5}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$800(Lcom/mediatek/engineermode/cwtest/ClientSocket;)V

    goto/16 :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v5, "CWTEST/ClientSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Take command interrupted:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 121
    .end local v2           #ie:Ljava/lang/InterruptedException;
    .restart local v0       #count:I
    .restart local v3       #line:I
    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    const/16 v5, 0x3e8

    if-le v3, v5, :cond_0

    .line 122
    :try_start_2
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    const-string v6, "TIMEOUT"

    #setter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$602(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 126
    .end local v0           #count:I
    .end local v3           #line:I
    .end local v4           #result:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 127
    .local v1, e:Ljava/io/IOException;
    const-string v5, "CWTEST/ClientSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendCommand IOException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    const-string v6, "ERROR"

    #setter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$602(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 133
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const-string v5, "CWTEST/ClientSocket"

    const-string v6, "out is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v5, p0, Lcom/mediatek/engineermode/cwtest/ClientSocket$1;->this$0:Lcom/mediatek/engineermode/cwtest/ClientSocket;

    const-string v6, "ERROR"

    #setter for: Lcom/mediatek/engineermode/cwtest/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/engineermode/cwtest/ClientSocket;->access$602(Lcom/mediatek/engineermode/cwtest/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1
.end method
