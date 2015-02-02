.class public Lcom/amoi/AmoiEngineerMode/auto/SpeakerAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/SpeakerBase;
.source "SpeakerAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/SpeakerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 15
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 17
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 20
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 21
    return-void
.end method
