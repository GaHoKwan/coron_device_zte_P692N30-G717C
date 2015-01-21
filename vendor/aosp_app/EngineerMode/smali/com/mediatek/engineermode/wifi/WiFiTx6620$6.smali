.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;
.super Ljava/lang/Object;
.source "WiFiTx6620.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/engineermode/wifi/WiFiTx6620;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;


# direct methods
.method constructor <init>(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V
    .locals 0
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v1, v1, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidth:[Ljava/lang/String;

    array-length v1, v1

    if-ge p3, v1, :cond_0

    .end local p3
    :goto_0
    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1502(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I

    .line 420
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #calls: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->updateChannels()V
    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    .line 421
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result v1

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastBandwidth:I
    invoke-static {v0, v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1602(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I

    .line 422
    return-void

    .line 418
    .restart local p3
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$6;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mBandwidthIndex:I
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    move-result p3

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void
.end method
