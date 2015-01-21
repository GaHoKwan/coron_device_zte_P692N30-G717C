.class Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;
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
    .line 312
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 316
    sget-boolean v1, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 349
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    move-result-object v1

    iput p3, v1, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->mRateIndex:I

    .line 323
    const-string v1, "EM/WiFi_Tx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The mRateIndex is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    const/16 v1, 0xc

    if-lt p3, v1, :cond_2

    move v1, v2

    :goto_1
    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z
    invoke-static {v5, v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$602(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 327
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mHighRateSelected:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$600(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v4

    .line 328
    .local v0, delta:I
    :goto_2
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 329
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v5, v5, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 330
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$700(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v5, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v5, v5, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreamble:[Ljava/lang/String;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mPreambleIndex:I
    invoke-static {v1, v0}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$802(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I

    .line 332
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #calls: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->uiUpdateTxPower()V
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$300(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    .line 334
    const/4 v1, 0x4

    if-lt p3, v1, :cond_4

    .line 335
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z
    invoke-static {v1, v3}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$902(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 337
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v2, v2, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 338
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 347
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #calls: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->updateChannels()V
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1200(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)V

    .line 348
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mRate:Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;
    invoke-static {v2}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$500(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/engineermode/wifi/WiFiTx6620$RateInfo;->getUcRateGroupEep()I

    move-result v2

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mLastRateGroup:I
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1302(Lcom/mediatek/engineermode/wifi/WiFiTx6620;I)I

    goto/16 :goto_0

    .end local v0           #delta:I
    :cond_2
    move v1, v3

    .line 325
    goto :goto_1

    :cond_3
    move v0, v3

    .line 327
    goto :goto_2

    .line 341
    .restart local v0       #delta:I
    :cond_4
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$900(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #setter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mCCKRateSelected:Z
    invoke-static {v1, v2}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$902(Lcom/mediatek/engineermode/wifi/WiFiTx6620;Z)Z

    .line 343
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1000(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    iget-object v2, v2, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mMode:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2, v4}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 344
    iget-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFiTx6620$3;->this$0:Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    #getter for: Lcom/mediatek/engineermode/wifi/WiFiTx6620;->mModeSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/mediatek/engineermode/wifi/WiFiTx6620;->access$1100(Lcom/mediatek/engineermode/wifi/WiFiTx6620;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    goto :goto_3
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
    .line 352
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "EM/WiFi_Tx"

    const-string v1, "onNothingSelected"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void
.end method
