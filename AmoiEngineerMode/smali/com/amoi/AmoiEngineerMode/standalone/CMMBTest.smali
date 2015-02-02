.class public Lcom/amoi/AmoiEngineerMode/standalone/CMMBTest;
.super Lcom/amoi/AmoiEngineerMode/base/CMMBBase;
.source "CMMBTest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/amoi/AmoiEngineerMode/base/CMMBBase;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/standalone/CMMBTest;->finish()V

    .line 13
    return-void
.end method
