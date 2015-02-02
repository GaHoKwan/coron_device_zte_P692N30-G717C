.class public Lcom/amoi/AmoiEngineerMode/auto/CameraAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/CameraBase;
.source "CameraAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 12
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 13
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 22
    invoke-super {p0}, Lcom/amoi/AmoiEngineerMode/base/CameraBase;->onDestroy()V

    .line 23
    const-string v0, "EngineerMode"

    const-string v1, "CameraAutoTest onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method
