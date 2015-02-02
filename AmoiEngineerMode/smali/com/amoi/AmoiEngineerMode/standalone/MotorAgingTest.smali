.class public Lcom/amoi/AmoiEngineerMode/standalone/MotorAgingTest;
.super Lcom/amoi/AmoiEngineerMode/base/VibratorBase;
.source "MotorAgingTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/VibratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 9
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 10
    return-void
.end method

.method protected isAgingTest()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method protected showButton()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showExitButton(Landroid/app/Activity;)V

    .line 15
    return-void
.end method
