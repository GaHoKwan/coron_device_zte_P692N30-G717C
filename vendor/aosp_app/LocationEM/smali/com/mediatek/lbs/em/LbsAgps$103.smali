.class Lcom/mediatek/lbs/em/LbsAgps$103;
.super Ljava/lang/Thread;
.source "LbsAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->connectionTest(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iput-object p2, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->val$ip:Ljava/lang/String;

    iput p3, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->val$port:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1661
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectionTest ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->val$ip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " port="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->val$port:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/lbs/em/LbsAgps;->access$000(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;)V

    .line 1662
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .line 1663
    .local v4, socket:Ljava/net/Socket;
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->val$ip:Ljava/lang/String;

    iget v6, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->val$port:I

    invoke-direct {v2, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 1665
    .local v2, isa:Ljava/net/InetSocketAddress;
    const/16 v5, 0x1388

    :try_start_0
    invoke-virtual {v4, v2, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 1666
    invoke-virtual {v4}, Ljava/net/Socket;->close()V

    .line 1667
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    const-string v6, "success"

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/mediatek/lbs/em/LbsAgps;->access$000(Lcom/mediatek/lbs/em/LbsAgps;Ljava/lang/String;)V

    .line 1669
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1670
    .local v3, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1671
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v5, 0x0

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1672
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1673
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsAgps;->access$7400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    :goto_0
    return-void

    .line 1675
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #m:Landroid/os/Message;
    :catch_0
    move-exception v1

    .line 1676
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1678
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1679
    .restart local v3       #m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1680
    .restart local v0       #bundle:Landroid/os/Bundle;
    const/4 v5, 0x1

    iput v5, v3, Landroid/os/Message;->what:I

    .line 1681
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1682
    iget-object v5, p0, Lcom/mediatek/lbs/em/LbsAgps$103;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/mediatek/lbs/em/LbsAgps;->access$7400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
