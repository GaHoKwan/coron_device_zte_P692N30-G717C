.class public Lcom/amoi/AmoiEngineerMode/standalone/FM;
.super Landroid/app/Activity;
.source "FM.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/FM;->setContentView(I)V

    .line 16
    return-void
.end method
