.class public Lcom/mediatek/engineermode/hqanfc/ReceiveThread;
.super Ljava/lang/Object;
.source "ReceiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputStream:Ljava/io/DataInputStream;

.field private mRunning:Z


# direct methods
.method public constructor <init>(Ljava/io/DataInputStream;Landroid/content/Context;)V
    .locals 1
    .parameter "is"
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mContext:Landroid/content/Context;

    .line 41
    iput-object p1, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mInputStream:Ljava/io/DataInputStream;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    .line 43
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    return v0
.end method

.method public run()V
    .locals 15

    .prologue
    .line 54
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mInputStream:Ljava/io/DataInputStream;

    if-nez v12, :cond_1

    .line 55
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "[ReceiveThread]The dispatcher or stream object is null!"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    .line 59
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->getInstance(Landroid/content/Context;)Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;

    move-result-object v3

    .line 60
    .local v3, commandHandler:Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;
    :goto_1
    iget-boolean v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    if-eqz v12, :cond_6

    .line 62
    const/16 v12, 0x400

    :try_start_0
    new-array v0, v12, [B

    .line 63
    .local v0, b:[B
    iget-object v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v12, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 64
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    array-length v12, v0

    if-ge v6, v12, :cond_2

    .line 65
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget-byte v14, v0, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 67
    :cond_2
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v13, "done receive"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 69
    .local v1, buffer:Ljava/nio/ByteBuffer;
    const/4 v12, 0x4

    new-array v11, v12, [B

    .line 70
    .local v11, type:[B
    invoke-virtual {v1, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 71
    invoke-static {v11}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->byteToInt([B)I

    move-result v10

    .line 72
    .local v10, msgType:I
    const-string v12, "EM/HQA/NFC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ReceiveThread:info]Recieved data message type is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/16 v12, 0xcc

    if-le v10, v12, :cond_3

    .line 75
    const-string v12, "EM/HQA/NFC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ReceiveThread]receive message is not the correct msg and the content: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v0           #b:[B
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    .end local v6           #i:I
    .end local v10           #msgType:I
    .end local v11           #type:[B
    :catch_0
    move-exception v4

    .line 95
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 96
    .local v5, errorMsg:Ljava/lang/String;
    const-string v12, "Try again"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 102
    :goto_3
    const-string v12, "EM/HQA/NFC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ReceiveThread]receive thread IOException: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #errorMsg:Ljava/lang/String;
    .restart local v0       #b:[B
    .restart local v1       #buffer:Ljava/nio/ByteBuffer;
    .restart local v6       #i:I
    .restart local v10       #msgType:I
    .restart local v11       #type:[B
    :cond_3
    const/4 v12, 0x4

    :try_start_1
    new-array v7, v12, [B

    .line 80
    .local v7, lenght:[B
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-static {v7}, Lcom/mediatek/engineermode/hqanfc/NfcCommand$DataConvert;->byteToInt([B)I

    move-result v9

    .line 82
    .local v9, msgLen:I
    const-string v12, "EM/HQA/NFC"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[ReceiveThread:info]Recieved data message lenght is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-nez v9, :cond_4

    .line 86
    new-instance v8, Lcom/mediatek/engineermode/hqanfc/NfcCommand;

    const/4 v12, 0x0

    invoke-direct {v8, v10, v12}, Lcom/mediatek/engineermode/hqanfc/NfcCommand;-><init>(ILjava/nio/ByteBuffer;)V

    .line 92
    .local v8, mainMessage:Lcom/mediatek/engineermode/hqanfc/NfcCommand;
    :goto_4
    invoke-virtual {v3, v8}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->execute(Lcom/mediatek/engineermode/hqanfc/NfcCommand;)Z

    goto/16 :goto_1

    .line 88
    .end local v8           #mainMessage:Lcom/mediatek/engineermode/hqanfc/NfcCommand;
    :cond_4
    new-array v2, v9, [B

    .line 89
    .local v2, bufferCont:[B
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 90
    new-instance v8, Lcom/mediatek/engineermode/hqanfc/NfcCommand;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-direct {v8, v10, v12}, Lcom/mediatek/engineermode/hqanfc/NfcCommand;-><init>(ILjava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v8       #mainMessage:Lcom/mediatek/engineermode/hqanfc/NfcCommand;
    goto :goto_4

    .line 99
    .end local v0           #b:[B
    .end local v1           #buffer:Ljava/nio/ByteBuffer;
    .end local v2           #bufferCont:[B
    .end local v6           #i:I
    .end local v7           #lenght:[B
    .end local v8           #mainMessage:Lcom/mediatek/engineermode/hqanfc/NfcCommand;
    .end local v9           #msgLen:I
    .end local v10           #msgType:I
    .end local v11           #type:[B
    .restart local v4       #e:Ljava/io/IOException;
    .restart local v5       #errorMsg:Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    .line 100
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 106
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #errorMsg:Ljava/lang/String;
    :cond_6
    iget-boolean v12, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    if-nez v12, :cond_0

    .line 107
    invoke-virtual {v3}, Lcom/mediatek/engineermode/hqanfc/NfcCommandHandler;->destroy()V

    goto/16 :goto_0
.end method

.method public setRunning(Z)V
    .locals 0
    .parameter "running"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/mediatek/engineermode/hqanfc/ReceiveThread;->mRunning:Z

    .line 50
    return-void
.end method
