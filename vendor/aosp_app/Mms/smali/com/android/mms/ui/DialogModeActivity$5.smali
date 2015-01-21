.class Lcom/android/mms/ui/DialogModeActivity$5;
.super Ljava/lang/Object;
.source "DialogModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/DialogModeActivity;->checkConditionsAndSendMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DialogModeActivity;

.field final synthetic val$bCEM:Z

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DialogModeActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1837
    iput-object p1, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iput p2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->val$slotId:I

    iput-boolean p3, p0, Lcom/android/mms/ui/DialogModeActivity$5;->val$bCEM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1839
    const-string v2, "Mms/DialogMode"

    const-string v3, "mCellMgr.run"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1841
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getResult()I

    move-result v0

    .line 1842
    .local v0, nRet:I
    const-string v2, "Mms/DialogMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "serviceComplete result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->resultToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v0, :cond_1

    .line 1845
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$100(Lcom/android/mms/ui/DialogModeActivity;)V

    .line 1866
    .end local v0           #nRet:I
    :goto_0
    return-void

    .line 1848
    .restart local v0       #nRet:I
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->val$slotId:I

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    invoke-static {v3}, Lcom/android/mms/ui/DialogModeActivity;->access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getPreferSlot()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 1849
    const-string v2, "Mms/DialogMode"

    const-string v3, "111"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-object v3, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #getter for: Lcom/android/mms/ui/DialogModeActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    invoke-static {v3}, Lcom/android/mms/ui/DialogModeActivity;->access$600(Lcom/android/mms/ui/DialogModeActivity;)Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getPreferSlot()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 1853
    .local v1, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v1, :cond_2

    .line 1854
    const-string v2, "Mms/DialogMode"

    const-string v3, "serviceComplete siminfo is null"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    #calls: Lcom/android/mms/ui/DialogModeActivity;->updateSendButtonState()V
    invoke-static {v2}, Lcom/android/mms/ui/DialogModeActivity;->access$100(Lcom/android/mms/ui/DialogModeActivity;)V

    goto :goto_0

    .line 1858
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v3, v3

    #setter for: Lcom/android/mms/ui/DialogModeActivity;->mSelectedSimId:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/DialogModeActivity;->access$402(Lcom/android/mms/ui/DialogModeActivity;I)I

    .line 1865
    .end local v1           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/DialogModeActivity$5;->this$0:Lcom/android/mms/ui/DialogModeActivity;

    iget-boolean v3, p0, Lcom/android/mms/ui/DialogModeActivity$5;->val$bCEM:Z

    #calls: Lcom/android/mms/ui/DialogModeActivity;->sendMessage(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/DialogModeActivity;->access$700(Lcom/android/mms/ui/DialogModeActivity;Z)V

    goto :goto_0

    .line 1862
    .end local v0           #nRet:I
    :cond_4
    const-string v2, "Mms/DialogMode"

    const-string v3, "mCellMgr is null "

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
