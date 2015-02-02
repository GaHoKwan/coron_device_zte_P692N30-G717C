.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;
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
    .line 364
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 368
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeIndex:I
    invoke-static {v0, p3}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1402(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I

    .line 369
    const-string v0, "EM/WiFi_Tx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The mModeIndex is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z
    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$4;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-static {v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1408(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)I

    .line 375
    :cond_0
    return-void
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
    .line 378
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-void
.end method
