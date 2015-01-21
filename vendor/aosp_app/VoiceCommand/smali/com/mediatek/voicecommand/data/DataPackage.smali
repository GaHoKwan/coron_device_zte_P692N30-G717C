.class public Lcom/mediatek/voicecommand/data/DataPackage;
.super Ljava/lang/Object;
.source "DataPackage.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public static packageErrorResult(I)Landroid/os/Bundle;
    .locals 2
    .parameter "errorid"

    .prologue
    .line 125
    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static packageResultInfo(III)Landroid/os/Bundle;
    .locals 2
    .parameter "resultid"
    .parameter "extrainfo"
    .parameter "extrainfo1"

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "Result_Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v1, "Reslut_INfo1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    return-object v0
.end method

.method public static packageResultInfo(IILjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "resultid"
    .parameter "extrainfo"
    .parameter "extrainfo1"

    .prologue
    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 55
    const-string v1, "Result_Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string v1, "Reslut_INfo1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method

.method public static packageResultInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "resultid"
    .parameter "extrainfo"
    .parameter "extrainfo1"

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "Result_Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "Reslut_INfo1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v0
.end method

.method public static packageResultInfo(IZLjava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "resultid"
    .parameter "extrainfo"
    .parameter "extrainfo1"

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string v1, "Result_Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    const-string v1, "Reslut_INfo1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

.method public static packageResultInfo(I[Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2
    .parameter "resultid"
    .parameter "extrainfo"
    .parameter "extrainfo1"

    .prologue
    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 114
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    const-string v1, "Result_Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 117
    const-string v1, "Reslut_INfo1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    return-object v0
.end method

.method public static packageResultInfo(I[Ljava/lang/String;[I)Landroid/os/Bundle;
    .locals 2
    .parameter "resultid"
    .parameter "extrainfo"
    .parameter "extrainfo1"

    .prologue
    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "Result"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 103
    const-string v1, "Result_Info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    const-string v1, "Reslut_INfo1"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 108
    return-object v0
.end method

.method public static packageSuccessResult()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 130
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/voicecommand/data/DataPackage;->packageResultInfo(IILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
