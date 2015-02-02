.class public Lcom/amoi/AmoiEngineerMode/standalone/RefMicTest;
.super Lcom/amoi/AmoiEngineerMode/base/DoulMicBase;
.source "RefMicTest.java"


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
    .line 13
    sget v0, Lcom/amoi/AmoiEngineerMode/standalone/RefMicTest;->AP_REF_MIC_AFE_LOOPBACK:I

    return v0
.end method

.method protected getTitleId()I
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f0600e9

    return v0
.end method

.method protected initButton()V
    .locals 0

    .prologue
    .line 10
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 11
    return-void
.end method
