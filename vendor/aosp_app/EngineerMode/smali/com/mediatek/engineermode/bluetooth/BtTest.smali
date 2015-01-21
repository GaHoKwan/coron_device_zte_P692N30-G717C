.class public Lcom/mediatek/engineermode/bluetooth/BtTest;
.super Ljava/lang/Object;
.source "BtTest.java"


# instance fields
.field private mChannels:I

.field private mFreq:I

.field private mPatter:I

.field private mPocketType:I

.field private mPocketTypeLen:I

.field private mPower:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "em_bt_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPatter:I

    .line 118
    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mChannels:I

    .line 119
    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPocketType:I

    .line 120
    iput v1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPocketTypeLen:I

    .line 121
    iput v1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mFreq:I

    .line 122
    const/4 v0, 0x7

    iput v0, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPower:I

    .line 123
    return-void
.end method


# virtual methods
.method public native doBtTest(I)I
.end method

.method public native getChipEcoNum()I
.end method

.method public native getChipId()I
.end method

.method public native getChipIdInt()I
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mFreq:I

    return v0
.end method

.method public native getPatchId()[C
.end method

.method public native getPatchLen()J
.end method

.method public getPocketType()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPocketType:I

    return v0
.end method

.method public native hciCommandRun([CI)[C
.end method

.method public native hciReadEvent()[C
.end method

.method public native init()I
.end method

.method public native isBLESupport()I
.end method

.method public native isComboSupport()I
.end method

.method public native noSigRxTestResult()[I
.end method

.method public native noSigRxTestStart(IIII)Z
.end method

.method public native pollingStart()I
.end method

.method public native pollingStop()I
.end method

.method public native relayerExit()I
.end method

.method public native relayerStart(II)I
.end method

.method public setChannels(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 154
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mChannels:I

    .line 155
    return-void
.end method

.method public native setFWDump(J)I
.end method

.method public setFreq(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 166
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mFreq:I

    .line 167
    return-void
.end method

.method public setPatter(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 150
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPatter:I

    .line 151
    return-void
.end method

.method public setPocketType(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 158
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPocketType:I

    .line 159
    return-void
.end method

.method public setPocketTypeLen(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 162
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPocketTypeLen:I

    .line 163
    return-void
.end method

.method public setPower(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 170
    iput p1, p0, Lcom/mediatek/engineermode/bluetooth/BtTest;->mPower:I

    .line 171
    return-void
.end method

.method public native setSSPDebugMode(Z)Z
.end method

.method public native unInit()I
.end method
