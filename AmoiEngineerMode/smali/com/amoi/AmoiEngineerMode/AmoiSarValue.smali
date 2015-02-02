.class public Lcom/amoi/AmoiEngineerMode/AmoiSarValue;
.super Landroid/app/Activity;
.source "AmoiSarValue.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 9
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/AmoiSarValue;->setContentView(I)V

    .line 11
    return-void
.end method
