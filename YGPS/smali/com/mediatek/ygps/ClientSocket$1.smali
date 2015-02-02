.class Lcom/mediatek/ygps/ClientSocket$1;
.super Ljava/lang/Object;
.source "ClientSocket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ygps/ClientSocket;-><init>(Lcom/mediatek/ygps/YgpsActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ygps/ClientSocket;


# direct methods
.method constructor <init>(Lcom/mediatek/ygps/ClientSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0xa

    .line 91
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mCommandQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$100(Lcom/mediatek/ygps/ClientSocket;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    #setter for: Lcom/mediatek/ygps/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v6, v5}, Lcom/mediatek/ygps/ClientSocket;->access$002(Lcom/mediatek/ygps/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    const-string v5, "YGPS/ClientSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Queue take command:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v7}, Lcom/mediatek/ygps/ClientSocket;->access$000(Lcom/mediatek/ygps/ClientSocket;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #calls: Lcom/mediatek/ygps/ClientSocket;->openClient()V
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$200(Lcom/mediatek/ygps/ClientSocket;)V

    .line 99
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$300(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataInput:Ljava/io/DataInputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$400(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataInputStream;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 103
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$300(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/ygps/ClientSocket;->access$000(Lcom/mediatek/ygps/ClientSocket;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 104
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$300(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 105
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$300(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/io/DataOutputStream;->write(I)V

    .line 106
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataOutput:Ljava/io/DataOutputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$300(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataOutputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/DataOutputStream;->flush()V

    .line 107
    const/4 v4, 0x0

    .line 108
    .local v4, result:Ljava/lang/String;
    const/4 v3, 0x0

    .line 109
    .local v3, line:I
    const/4 v0, -0x1

    .line 110
    .local v0, count:I
    :cond_0
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataInput:Ljava/io/DataInputStream;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$400(Lcom/mediatek/ygps/ClientSocket;)Ljava/io/DataInputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataBuffer:[B
    invoke-static {v6}, Lcom/mediatek/ygps/ClientSocket;->access$500(Lcom/mediatek/ygps/ClientSocket;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_1

    .line 111
    add-int/lit8 v3, v3, 0x1

    .line 112
    new-instance v4, Ljava/lang/String;

    .end local v4           #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mDataBuffer:[B
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$500(Lcom/mediatek/ygps/ClientSocket;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>([BII)V

    .line 113
    .restart local v4       #result:Ljava/lang/String;
    const-string v5, "YGPS/ClientSocket"

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

    .line 115
    const-string v5, "PMTK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #setter for: Lcom/mediatek/ygps/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/mediatek/ygps/ClientSocket;->access$602(Lcom/mediatek/ygps/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    const-string v5, "YGPS/ClientSocket"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get response from MNL: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .end local v0           #count:I
    .end local v3           #line:I
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mCallBack:Lcom/mediatek/ygps/YgpsActivity;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$700(Lcom/mediatek/ygps/ClientSocket;)Lcom/mediatek/ygps/YgpsActivity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 137
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mCallBack:Lcom/mediatek/ygps/YgpsActivity;
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$700(Lcom/mediatek/ygps/ClientSocket;)Lcom/mediatek/ygps/YgpsActivity;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #getter for: Lcom/mediatek/ygps/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v6}, Lcom/mediatek/ygps/ClientSocket;->access$600(Lcom/mediatek/ygps/ClientSocket;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mediatek/ygps/YgpsActivity;->onResponse(Ljava/lang/String;)V

    .line 139
    :cond_2
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    const/4 v6, 0x0

    #setter for: Lcom/mediatek/ygps/ClientSocket;->mCommand:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/ygps/ClientSocket;->access$002(Lcom/mediatek/ygps/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    #calls: Lcom/mediatek/ygps/ClientSocket;->closeClient()V
    invoke-static {v5}, Lcom/mediatek/ygps/ClientSocket;->access$800(Lcom/mediatek/ygps/ClientSocket;)V

    goto/16 :goto_0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, ie:Ljava/lang/InterruptedException;
    const-string v5, "YGPS/ClientSocket"

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

    .line 96
    return-void

    .line 121
    .end local v2           #ie:Ljava/lang/InterruptedException;
    .restart local v0       #count:I
    .restart local v3       #line:I
    .restart local v4       #result:Ljava/lang/String;
    :cond_3
    if-le v3, v8, :cond_0

    .line 122
    :try_start_2
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    const-string v6, "TIMEOUT"

    #setter for: Lcom/mediatek/ygps/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/ygps/ClientSocket;->access$602(Lcom/mediatek/ygps/ClientSocket;Ljava/lang/String;)Ljava/lang/String;
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
    const-string v5, "YGPS/ClientSocket"

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
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    const-string v6, "ERROR"

    #setter for: Lcom/mediatek/ygps/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/ygps/ClientSocket;->access$602(Lcom/mediatek/ygps/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 133
    .end local v1           #e:Ljava/io/IOException;
    :cond_4
    const-string v5, "YGPS/ClientSocket"

    const-string v6, "out is null"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v5, p0, Lcom/mediatek/ygps/ClientSocket$1;->this$0:Lcom/mediatek/ygps/ClientSocket;

    const-string v6, "ERROR"

    #setter for: Lcom/mediatek/ygps/ClientSocket;->mResponse:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/mediatek/ygps/ClientSocket;->access$602(Lcom/mediatek/ygps/ClientSocket;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
