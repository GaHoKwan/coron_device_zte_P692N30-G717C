.class Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mtklogger/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshStorageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mFreeStorageSize:F

.field private mUsedStorageSize:F

.field private mtkLogSize:F

.field final synthetic this$0:Lcom/mediatek/mtklogger/MainActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/mtklogger/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 823
    iput-object p1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 823
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    const/high16 v5, 0x4480

    .line 829
    iget-object v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const/4 v3, 0x1

    #setter for: Lcom/mediatek/mtklogger/MainActivity;->iWaitingRefreshStatusBar:Z
    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/MainActivity;->access$1602(Lcom/mediatek/mtklogger/MainActivity;Z)Z

    .line 830
    new-instance v1, Landroid/os/StatFs;

    iget-object v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/mtklogger/MainActivity;->access$1700(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 831
    .local v1, statFs:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    div-int/lit16 v0, v2, 0x400

    .line 832
    .local v0, blockSize:I
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iput v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mFreeStorageSize:F

    .line 833
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mFreeStorageSize:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mUsedStorageSize:F

    .line 834
    const-string v2, "MTKLogger/MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mSDCardPathStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSDCardPathStr:Ljava/lang/String;
    invoke-static {v4}, Lcom/mediatek/mtklogger/MainActivity;->access$1700(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", free size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mFreeStorageSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", used size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mUsedStorageSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/mtklogger/utils/Utils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSavePathStr:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/mtklogger/MainActivity;->access$1800(Lcom/mediatek/mtklogger/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/mtklogger/utils/Utils;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v2, v2

    iput v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mtkLogSize:F

    .line 838
    iget v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mtkLogSize:F

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_0

    .line 839
    iput v5, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mtkLogSize:F

    .line 841
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 823
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 859
    const-string v0, "MTKLogger/MainActivity"

    const-string v1, "RefreshStorageAsyncTask is cancelled."

    invoke-static {v0, v1}, Lcom/mediatek/mtklogger/utils/Utils;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 823
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x4480

    .line 846
    const-string v1, "MTKLogger/MainActivity"

    const-string v2, " -->RefreshStorageAsyncTask.refreshStatusBar()"

    invoke-static {v1, v2}, Lcom/mediatek/mtklogger/utils/Utils;->logv(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$1900(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/LinearColorBar;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/mediatek/mtklogger/LinearColorBar;->setShowingGreen(Z)V

    .line 848
    iget v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mUsedStorageSize:F

    iget v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mFreeStorageSize:F

    iget v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mUsedStorageSize:F

    add-float/2addr v2, v3

    div-float v0, v1, v2

    .line 849
    .local v0, ratio:F
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$1900(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/LinearColorBar;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mtkLogSize:F

    div-float/2addr v2, v5

    iget v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mFreeStorageSize:F

    iget v4, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mUsedStorageSize:F

    add-float/2addr v3, v4

    div-float/2addr v2, v3

    sub-float v2, v0, v2

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/mtklogger/LinearColorBar;->setGradientPaint(FF)V

    .line 851
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mSdcardRatioBar:Lcom/mediatek/mtklogger/LinearColorBar;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$1900(Lcom/mediatek/mtklogger/MainActivity;)Lcom/mediatek/mtklogger/LinearColorBar;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    sub-float/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Lcom/mediatek/mtklogger/LinearColorBar;->setRatios(FFF)V

    .line 852
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mUsedStorageText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$2000(Lcom/mediatek/mtklogger/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mUsedStorageSize:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const v4, 0x7f070014

    invoke-virtual {v3, v4}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 853
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #getter for: Lcom/mediatek/mtklogger/MainActivity;->mFreeStorageText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/mediatek/mtklogger/MainActivity;->access$2100(Lcom/mediatek/mtklogger/MainActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->mFreeStorageSize:F

    div-float/2addr v3, v5

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    const v4, 0x7f070015

    invoke-virtual {v3, v4}, Lcom/mediatek/mtklogger/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v1, p0, Lcom/mediatek/mtklogger/MainActivity$RefreshStorageAsyncTask;->this$0:Lcom/mediatek/mtklogger/MainActivity;

    #setter for: Lcom/mediatek/mtklogger/MainActivity;->iWaitingRefreshStatusBar:Z
    invoke-static {v1, v6}, Lcom/mediatek/mtklogger/MainActivity;->access$1602(Lcom/mediatek/mtklogger/MainActivity;Z)Z

    .line 855
    return-void
.end method
