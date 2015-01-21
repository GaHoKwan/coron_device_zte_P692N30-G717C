.class Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;
.super Ljava/lang/Object;
.source "LbsMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionThread"
.end annotation


# instance fields
.field private ip:Ljava/lang/String;

.field private mThread:Ljava/lang/Thread;

.field private port:I

.field private sessionId:I

.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method public constructor <init>(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;II)V
    .locals 1
    .parameter
    .parameter "ip"
    .parameter "port"
    .parameter "sessionId"

    .prologue
    .line 167
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->ip:Ljava/lang/String;

    .line 169
    iput p3, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->port:I

    .line 170
    iput p4, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sessionId:I

    .line 171
    new-instance v0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread$1;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread$1;-><init>(Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;Lcom/mediatek/lbs/em/LbsMisc;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->mThread:Ljava/lang/Thread;

    .line 176
    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->runFunction()V

    return-void
.end method

.method private getTimeString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 221
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 222
    .local v0, date:Ljava/util/Date;
    const-string v2, "[%02d:%02d:%02d] "

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, str:Ljava/lang/String;
    return-object v1
.end method

.method private runFunction()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 188
    :try_start_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2}, Ljava/net/Socket;-><init>()V

    .line 189
    .local v2, socket:Ljava/net/Socket;
    const/4 v3, 0x0

    const-string v4, "DNS querying"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 190
    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->ip:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->port:I

    invoke-direct {v1, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 191
    .local v1, isa:Ljava/net/InetSocketAddress;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 192
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Address="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 193
    const/4 v3, 0x0

    const-string v4, "start connection"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 194
    const/16 v3, 0x2710

    invoke-virtual {v2, v1, v3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 195
    const/4 v3, 0x0

    const-string v4, "connected"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 197
    const/4 v3, 0x0

    const-string v4, "disconnected"

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 208
    .end local v1           #isa:Ljava/net/InetSocketAddress;
    .end local v2           #socket:Ljava/net/Socket;
    :goto_0
    const/4 v3, 0x1

    const-string v4, ""

    invoke-direct {p0, v3, v4}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 209
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownHostException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_0

    .line 201
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 202
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 205
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sendMessage(ILjava/lang/String;)V

    .line 206
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private sendMessage(ILjava/lang/String;)V
    .locals 5
    .parameter "what"
    .parameter "msg"

    .prologue
    .line 212
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 213
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 214
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "msg"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->getTimeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "[id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput p1, v1, Landroid/os/Message;->what:I

    .line 216
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #getter for: Lcom/mediatek/lbs/em/LbsMisc;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsMisc;->access$800(Lcom/mediatek/lbs/em/LbsMisc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$ConnectionThread;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 184
    return-void
.end method
