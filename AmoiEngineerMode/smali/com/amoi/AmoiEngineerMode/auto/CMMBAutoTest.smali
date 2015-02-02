.class public Lcom/amoi/AmoiEngineerMode/auto/CMMBAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/CMMBBase;
.source "CMMBAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 13
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/CMMBAutoTest;->setContentView(I)V

    .line 14
    const v1, 0x7f060060

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/CMMBAutoTest;->setTitle(I)V

    .line 16
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/CMMBAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 17
    .local v0, testingView:Landroid/widget/TextView;
    const v1, 0x7f0600b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 18
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 20
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;->onCreate(Landroid/os/Bundle;)V

    .line 21
    return-void
.end method
