.class public Lcom/amoi/AmoiEngineerMode/auto/RefMicAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;
.source "RefMicAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMicType()I
    .locals 1

    .prologue
    .line 17
    sget v0, Lcom/amoi/AmoiEngineerMode/auto/RefMicAutoTest;->AP_REF_MIC_AFE_LOOPBACK:I

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 21
    const v0, 0x7f0600e9

    return v0
.end method

.method protected initButton()V
    .locals 0

    .prologue
    .line 10
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 11
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 15
    return-void
.end method