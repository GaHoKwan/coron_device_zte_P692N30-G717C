.class public Lcom/amoi/AmoiEngineerMode/auto/FinishHandler;
.super Ljava/lang/Object;
.source "FinishHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exit(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 19
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 21
    return-void
.end method

.method public static next(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 29
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 31
    return-void
.end method

.method public static previous(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 41
    return-void
.end method
