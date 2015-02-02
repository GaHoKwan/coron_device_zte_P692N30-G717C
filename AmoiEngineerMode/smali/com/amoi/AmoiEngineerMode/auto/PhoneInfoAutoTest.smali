.class public Lcom/amoi/AmoiEngineerMode/auto/PhoneInfoAutoTest;
.super Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;
.source "PhoneInfoAutoTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 2

    .prologue
    .line 12
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initAutoButtons(Landroid/app/Activity;)V

    .line 14
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/auto/PhoneInfoAutoTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 15
    .local v0, button:Landroid/widget/Button;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 16
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 19
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->exit(Landroid/app/Activity;)V

    .line 20
    return-void
.end method
