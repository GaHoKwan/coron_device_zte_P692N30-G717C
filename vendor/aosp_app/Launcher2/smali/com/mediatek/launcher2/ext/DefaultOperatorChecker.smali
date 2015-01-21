.class public Lcom/mediatek/launcher2/ext/DefaultOperatorChecker;
.super Ljava/lang/Object;
.source "DefaultOperatorChecker.java"

# interfaces
.implements Lcom/mediatek/launcher2/ext/IOperatorChecker;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultOperatorChecker"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setWorkSpaceIconTextLine(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    .line 60
    const-string v0, "DefaultOperatorChecker"

    const-string v1, "default setWorkSpaceIconTextLine called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method

.method public supportAppListCycleSliding()Z
    .locals 2

    .prologue
    .line 54
    const-string v0, "DefaultOperatorChecker"

    const-string v1, "default supportAppListCycleSliding called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public supportEditAndHideApps()Z
    .locals 2

    .prologue
    .line 48
    const-string v0, "DefaultOperatorChecker"

    const-string v1, "default supportEditAndHideApps called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    return v0
.end method
