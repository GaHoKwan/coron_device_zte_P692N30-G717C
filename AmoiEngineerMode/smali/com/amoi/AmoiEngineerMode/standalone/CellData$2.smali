.class Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;
.super Landroid/telephony/PhoneStateListener;
.source "CellData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amoi/AmoiEngineerMode/standalone/CellData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;


# direct methods
.method constructor <init>(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 4
    .parameter "signalStrength"

    .prologue
    const/4 v1, -0x1

    .line 102
    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    .line 103
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v0, v2}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$102(Lcom/amoi/AmoiEngineerMode/standalone/CellData;I)I

    .line 105
    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v0

    const/16 v3, 0x63

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v2, v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$102(Lcom/amoi/AmoiEngineerMode/standalone/CellData;I)I

    .line 106
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v1}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x71

    #setter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->dBm:I
    invoke-static {v0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$002(Lcom/amoi/AmoiEngineerMode/standalone/CellData;I)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    iget-object v0, v0, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gsmSignalStrength:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v2}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/CellData$2;->this$0:Lcom/amoi/AmoiEngineerMode/standalone/CellData;

    #getter for: Lcom/amoi/AmoiEngineerMode/standalone/CellData;->gsmSignalStrength:I
    invoke-static {v0}, Lcom/amoi/AmoiEngineerMode/standalone/CellData;->access$100(Lcom/amoi/AmoiEngineerMode/standalone/CellData;)I

    move-result v0

    goto :goto_0
.end method
