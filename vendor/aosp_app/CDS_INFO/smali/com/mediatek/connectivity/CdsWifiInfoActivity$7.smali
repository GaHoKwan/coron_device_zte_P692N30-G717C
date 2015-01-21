.class Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;
.super Ljava/lang/Object;
.source "CdsWifiInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/connectivity/CdsWifiInfoActivity;->updatePingState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 594
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/high16 v3, -0x1

    const v2, -0xff0100

    .line 596
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1000(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 597
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1100(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1200(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 603
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1300(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 608
    :goto_1
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1400(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Pass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 609
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1500(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 614
    :goto_2
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1100(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddrResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1000(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1300(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostnameResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1200(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1500(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTestResult:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1400(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingIpAddr:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1100(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 605
    :cond_1
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mPingHostname:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1300(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsWifiInfoActivity$7;->this$0:Lcom/mediatek/connectivity/CdsWifiInfoActivity;

    #getter for: Lcom/mediatek/connectivity/CdsWifiInfoActivity;->mHttpClientTest:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/mediatek/connectivity/CdsWifiInfoActivity;->access$1500(Lcom/mediatek/connectivity/CdsWifiInfoActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method
