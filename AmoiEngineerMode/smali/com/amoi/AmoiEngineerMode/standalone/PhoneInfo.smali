.class public Lcom/amoi/AmoiEngineerMode/standalone/PhoneInfo;
.super Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;
.source "PhoneInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/PhoneInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 11
    const v1, 0x7f070012

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/PhoneInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 12
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 14
    const v1, 0x7f070013

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/PhoneInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 15
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    const v1, 0x7f070014

    invoke-virtual {p0, v1}, Lcom/amoi/AmoiEngineerMode/standalone/PhoneInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #button:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 18
    .restart local v0       #button:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 19
    return-void
.end method
