.class public Lcom/amoi/AmoiEngineerMode/util/Common;
.super Landroid/app/Activity;
.source "Common.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected initButton()V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/util/ButtonHelper;->initOnlyExitButton(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;->next(Landroid/app/Activity;)V

    .line 31
    return-void
.end method
