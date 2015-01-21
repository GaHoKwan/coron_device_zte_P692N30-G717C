.class public Lzte/com/cn/customerservice_surfing/Serviceguide;
.super Landroid/app/Activity;
.source "Serviceguide.java"


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
    .line 8
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 9
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lzte/com/cn/customerservice_surfing/Serviceguide;->setContentView(I)V

    .line 10
    return-void
.end method
