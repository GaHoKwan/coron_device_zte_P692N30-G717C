.class public Lcom/amoi/AmoiEngineerMode/auto/SubCameraAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SubCameraBase;
.source "SubCameraAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SubCameraBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 13
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 18
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/SubCameraBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const-string v0, "EngineerMode"

    const-string v1, "SubCameraAutoTest onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method
