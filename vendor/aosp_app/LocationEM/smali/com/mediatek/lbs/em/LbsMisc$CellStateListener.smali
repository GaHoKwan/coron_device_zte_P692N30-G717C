.class Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "LbsMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em/LbsMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CellStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em/LbsMisc;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em/LbsMisc;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " incomingNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$1100(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 3
    .parameter "location"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellLocationChanged location="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$1100(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->updateCellInfo()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMisc;->access$1200(Lcom/mediatek/lbs/em/LbsMisc;)V

    .line 255
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " networkType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$1100(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->updateCellInfo()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMisc;->access$1200(Lcom/mediatek/lbs/em/LbsMisc;)V

    .line 260
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/lbs/em/LbsMisc;->access$1100(Lcom/mediatek/lbs/em/LbsMisc;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/mediatek/lbs/em/LbsMisc$CellStateListener;->this$0:Lcom/mediatek/lbs/em/LbsMisc;

    #calls: Lcom/mediatek/lbs/em/LbsMisc;->updateCellInfo()V
    invoke-static {v0}, Lcom/mediatek/lbs/em/LbsMisc;->access$1200(Lcom/mediatek/lbs/em/LbsMisc;)V

    .line 265
    return-void
.end method
