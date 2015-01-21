.class Lcom/mediatek/connectivity/CdsPdpActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CdsPdpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/connectivity/CdsPdpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsPdpActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsPdpActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsPdpActivity$2;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, response:Landroid/os/Message;
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 351
    .local v0, info:Landroid/net/NetworkInfo;
    if-nez v0, :cond_1

    .line 366
    .end local v0           #info:Landroid/net/NetworkInfo;
    .end local v1           #response:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 355
    .restart local v0       #info:Landroid/net/NetworkInfo;
    .restart local v1       #response:Landroid/os/Message;
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 356
    .local v3, type:I
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 358
    .local v2, state:Landroid/net/NetworkInfo$State;
    const-string v4, "CdsPdpActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$400()[I

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/connectivity/CdsPdpActivity$2;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #getter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mSelectApnPos:I
    invoke-static {v5}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$100(Lcom/mediatek/connectivity/CdsPdpActivity;)I

    move-result v5

    aget v4, v4, v5

    if-ne v3, v4, :cond_2

    .line 361
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsPdpActivity$2;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #getter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$500(Lcom/mediatek/connectivity/CdsPdpActivity;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsPdpActivity$2;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #getter for: Lcom/mediatek/connectivity/CdsPdpActivity;->mToast:Landroid/widget/Toast;
    invoke-static {v4}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$500(Lcom/mediatek/connectivity/CdsPdpActivity;)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 364
    :cond_2
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsPdpActivity$2;->this$0:Lcom/mediatek/connectivity/CdsPdpActivity;

    #calls: Lcom/mediatek/connectivity/CdsPdpActivity;->updateApnStatus()V
    invoke-static {v4}, Lcom/mediatek/connectivity/CdsPdpActivity;->access$600(Lcom/mediatek/connectivity/CdsPdpActivity;)V

    goto :goto_0
.end method
