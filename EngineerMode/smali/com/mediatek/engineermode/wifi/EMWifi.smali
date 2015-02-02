.class public Lcom/mediatek/engineermode/wifi/EMWifi;
.super Ljava/lang/Object;
.source "EMWifi.java"


# static fields
.field public static sEMWifiWorked:Z

.field public static sIs5GNeeded:Z

.field public static sIsInitialed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    sput-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    .line 41
    sput-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sEMWifiWorked:Z

    .line 42
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIs5GNeeded:Z

    .line 475
    const-string v0, "em_wifi_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native doCTIATestGet(J[J)I
.end method

.method public static native doCTIATestSet(JJ)I
.end method

.method public static native eepromReadByteStr(JJ[B)I
.end method

.method public static native eepromWriteByteStr(JJLjava/lang/String;)I
.end method

.method public static native getATParam(J[J)I
.end method

.method public static native getDPDLength([J)I
.end method

.method public static native getEEPRomSize([J)I
.end method

.method public static native getPacketRxStatus([JI)I
.end method

.method public static native getPacketTxStatusEx([JI)I
.end method

.method public static native getSpecEEPRomSize([J)I
.end method

.method public static native getSupportChannelList([J)I
.end method

.method public static native getSupportedRates([IJ)I
.end method

.method public static native getXtalTrimToCr([J)I
.end method

.method public static native initial()I
.end method

.method public static native queryThermoInfo([JI)I
.end method

.method public static native readDPD32(J[J)I
.end method

.method public static native readEEPRom16(J[J)I
.end method

.method public static native readMCR32(J[J)I
.end method

.method public static native readSpecEEPRom16(J[J)I
.end method

.method public static native readTxPowerFromEEPromEx(JJ[JI)I
.end method

.method public static native setATParam(JJ)I
.end method

.method public static native setAnritsu8860bTestSupportEn(J)I
.end method

.method public static native setCarrierSuppression(JJJ)I
.end method

.method public static native setChannel(J)I
.end method

.method public static native setDPDFromFile(Ljava/lang/String;)I
.end method

.method public static native setEEPRomFromFile(Ljava/lang/String;)I
.end method

.method public static native setEEPRomSize(J)I
.end method

.method public static native setEEPromCKSUpdated()I
.end method

.method public static native setLocalFrequecy(JJ)I
.end method

.method public static native setNormalMode()I
.end method

.method public static native setOperatingCountry(Ljava/lang/String;)I
.end method

.method public static native setOutputPin(JJ)I
.end method

.method public static native setOutputPower(JJI)I
.end method

.method public static native setPnpPower(J)I
.end method

.method public static native setStandBy()I
.end method

.method public static native setTestMode()I
.end method

.method public static native setThermoEn(J)I
.end method

.method public static native setXtalTrimToCr(J)I
.end method

.method public static native unInitial()I
.end method

.method public static native writeDPD32(JJ)I
.end method

.method public static native writeEEPRom16(JJ)I
.end method

.method public static native writeMCR32(JJ)I
.end method
