.class public Lcom/amoi/AmoiEngineerMode/TestUI;
.super Landroid/app/Activity;
.source "TestUI.java"


# static fields
.field private static final REQUESTCODE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 20
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 21
    invoke-virtual {p0}, Lcom/amoi/AmoiEngineerMode/TestUI;->finish()V

    .line 22
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 14
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/amoi/AmoiEngineerMode/AmoiEngineerMode;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 15
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/amoi/AmoiEngineerMode/TestUI;->startActivityForResult(Landroid/content/Intent;I)V

    .line 16
    return-void
.end method
