.class public Lcom/amoi/AmoiEngineerMode/auto/TPPanelAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;
.source "TPPanelAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/TPPanelBase;-><init>()V

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

.method protected showButton()V
    .locals 0

    .prologue
    .line 14
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->showExitButton(Landroid/app/Activity;)V

    .line 15
    return-void
.end method
