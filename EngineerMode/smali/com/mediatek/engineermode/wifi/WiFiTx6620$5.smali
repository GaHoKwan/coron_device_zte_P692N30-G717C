.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;
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
    .line 391
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

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
    .line 395
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$5;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    add-int/2addr v0, p3

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I
    invoke-static {v1, v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$802(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I

    .line 397
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

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
    .line 400
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return-void
.end method
