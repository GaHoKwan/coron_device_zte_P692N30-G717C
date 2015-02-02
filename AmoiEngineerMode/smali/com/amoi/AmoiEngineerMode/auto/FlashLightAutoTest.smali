.class public Lcom/amoi/AmoiEngineerMode/auto/FlashLightAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;
.source "FlashLightAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/FlashLightBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 9
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 10
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 19
    return-void
.end method

.method protected showButton()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showAutoButtons(Landroid/app/Activity;)V

    .line 15
    return-void
.end method
