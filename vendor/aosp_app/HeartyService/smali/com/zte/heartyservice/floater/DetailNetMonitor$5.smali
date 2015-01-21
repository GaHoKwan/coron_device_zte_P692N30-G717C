.class Lcom/zte/heartyservice/floater/DetailNetMonitor$5;
.super Landroid/os/Handler;
.source "DetailNetMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/floater/DetailNetMonitor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 221
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 222
    const v0, 0x123456

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-virtual {v0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/heartyservice/floater/NetworkUtil;->updateFlowData(Landroid/content/Context;I)V

    .line 224
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getFlowData()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->flowInfoStr:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$302(Lcom/zte/heartyservice/floater/DetailNetMonitor;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getFlowFloatData()F

    move-result v1

    iput v1, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->totalData:F

    .line 226
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlow:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    #getter for: Lcom/zte/heartyservice/floater/DetailNetMonitor;->flowInfoStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$300(Lcom/zte/heartyservice/floater/DetailNetMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    #calls: Lcom/zte/heartyservice/floater/DetailNetMonitor;->updateAppNetFlow()V
    invoke-static {v0}, Lcom/zte/heartyservice/floater/DetailNetMonitor;->access$400(Lcom/zte/heartyservice/floater/DetailNetMonitor;)V

    .line 229
    invoke-static {}, Lcom/zte/heartyservice/floater/NetworkUtil;->getWifiState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mClipImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlowChar:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->mClipImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/floater/DetailNetMonitor$5;->this$0:Lcom/zte/heartyservice/floater/DetailNetMonitor;

    iget-object v0, v0, Lcom/zte/heartyservice/floater/DetailNetMonitor;->netFlowChar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
