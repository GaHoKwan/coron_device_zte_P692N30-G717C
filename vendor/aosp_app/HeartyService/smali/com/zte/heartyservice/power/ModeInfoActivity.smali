.class public Lcom/zte/heartyservice/power/ModeInfoActivity;
.super Landroid/app/Activity;
.source "ModeInfoActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030081

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/ModeInfoActivity;->setContentView(I)V

    .line 17
    return-void
.end method
