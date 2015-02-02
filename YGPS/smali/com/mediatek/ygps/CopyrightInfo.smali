.class public Lcom/mediatek/ygps/CopyrightInfo;
.super Landroid/app/Activity;
.source "CopyrightInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 52
    return-void
.end method
