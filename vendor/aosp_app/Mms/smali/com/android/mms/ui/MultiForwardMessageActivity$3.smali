.class Lcom/android/mms/ui/MultiForwardMessageActivity$3;
.super Ljava/lang/Object;
.source "MultiForwardMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

.field final synthetic val$bCEM:Z

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultiForwardMessageActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->val$slotId:I

    iput-boolean p3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->val$bCEM:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/16 v6, 0xa7

    const/4 v5, 0x3

    .line 443
    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getResult()I

    move-result v0

    .line 444
    .local v0, nRet:I
    const-string v2, "Mms/Txn"

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

    .line 446
    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    const-string v2, "Mms/Txn"

    const-string v3, "send failed. check CellConn failed"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const/16 v3, 0xa6

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V
    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$900(Lcom/android/mms/ui/MultiForwardMessageActivity;III)V

    .line 464
    :goto_0
    return-void

    .line 452
    :cond_1
    iget v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->val$slotId:I

    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getPreferSlot()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 453
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-static {}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->getPreferSlot()I

    move-result v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v1

    .line 455
    .local v1, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v1, :cond_2

    .line 456
    const-string v2, "Mms/Txn"

    const-string v3, "serviceComplete siminfo is null"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    const/16 v3, 0xa4

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V
    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$900(Lcom/android/mms/ui/MultiForwardMessageActivity;III)V

    goto :goto_0

    .line 461
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v3

    long-to-int v3, v3

    #setter for: Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1002(Lcom/android/mms/ui/MultiForwardMessageActivity;I)I

    .line 463
    .end local v1           #si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->this$0:Lcom/android/mms/ui/MultiForwardMessageActivity;

    iget-boolean v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity$3;->val$bCEM:Z

    #calls: Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardDirectly(Z)V
    invoke-static {v2, v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->access$1100(Lcom/android/mms/ui/MultiForwardMessageActivity;Z)V

    goto :goto_0
.end method
