.class public Lcom/amoi/AmoiEngineerMode/auto/VibratorAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/VibratorBase;
.source "VibratorAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 14
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 23
    return-void
.end method

.method protected showButton()V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showAutoButtons(Landroid/app/Activity;)V

    .line 19
    return-void
.end method
