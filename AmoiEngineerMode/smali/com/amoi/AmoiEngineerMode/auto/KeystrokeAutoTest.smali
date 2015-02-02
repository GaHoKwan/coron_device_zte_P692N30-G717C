.class public Lcom/amoi/AmoiEngineerMode/auto/KeystrokeAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;
.source "KeystrokeAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/KeystrokeBase;-><init>()V

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

.method protected showButton()V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showAutoButtons(Landroid/app/Activity;)V

    .line 16
    return-void
.end method
