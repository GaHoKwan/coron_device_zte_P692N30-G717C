.class public Lcom/amoi/AmoiEngineerMode/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHardwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const-string v0, "V1.0"

    .line 13
    .local v0, version:Ljava/lang/String;
    return-object v0
.end method
