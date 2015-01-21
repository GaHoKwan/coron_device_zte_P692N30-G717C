.class Lcom/mediatek/lbs/em/LbsAgps$85;
.super Ljava/lang/Object;
.source "LbsAgps.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em/LbsAgps;->initWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsAgps;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsAgps;)V
    .locals 0
    .parameter

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 1523
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #calls: Lcom/mediatek/lbs/em/LbsAgps;->isNetworkAvailable()Z
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$7300(Lcom/mediatek/lbs/em/LbsAgps;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1524
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    iget-object v3, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpAddr:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/mediatek/lbs/em/LbsAgps;->access$400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mTextViewSlpPort:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/mediatek/lbs/em/LbsAgps;->access$500(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/lbs/em/LbsAgps;->connectionTest(Ljava/lang/String;I)V

    .line 1537
    :goto_0
    return-void

    .line 1528
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1529
    .local v1, m:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1530
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1531
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1532
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    #getter for: Lcom/mediatek/lbs/em/LbsAgps;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/mediatek/lbs/em/LbsAgps;->access$7400(Lcom/mediatek/lbs/em/LbsAgps;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1534
    iget-object v2, p0, Lcom/mediatek/lbs/em/LbsAgps$85;->this$0:Lcom/mediatek/lbs/em/LbsAgps;

    invoke-virtual {v2}, Lcom/mediatek/lbs/em/LbsAgps;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "network is unavailable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
