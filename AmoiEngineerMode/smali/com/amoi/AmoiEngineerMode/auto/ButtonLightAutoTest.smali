.class public Lcom/amoi/AmoiEngineerMode/auto/ButtonLightAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;
.source "ButtonLightAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/ButtonLightBase;-><init>()V

    return-void
.end method


# virtual methods
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