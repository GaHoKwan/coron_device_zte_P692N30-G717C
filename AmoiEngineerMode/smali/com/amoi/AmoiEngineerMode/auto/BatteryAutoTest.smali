.class public Lcom/amoi/AmoiEngineerMode/auto/BatteryAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/BatteryBase;
.source "BatteryAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;

    invoke-direct {v0, p0}, Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;-><init>(Landroid/app/Activity;)V

    .line 10
    .local v0, listener:Lcom/amoi/AmoiEngineerMode/auto/AutoButtonListener;
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v1, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method protected showButton(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->prevButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->nextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/base/BatteryBase;->exitButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 20
    return-void
.end method
