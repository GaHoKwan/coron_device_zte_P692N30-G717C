.class public Lcom/mediatek/launcher2/plugin/Op09OperatorChecker;
.super Lcom/mediatek/launcher2/ext/DefaultOperatorChecker;
.source "Op09OperatorChecker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Op09OperatorChecker"


# instance fields
.field private final WORKSPACE_ICON_TEXT_LINE_NUM:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mediatek/launcher2/ext/DefaultOperatorChecker;-><init>()V

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/launcher2/plugin/Op09OperatorChecker;->WORKSPACE_ICON_TEXT_LINE_NUM:I

    .line 12
    return-void
.end method


# virtual methods
.method public setWorkSpaceIconTextLine(Landroid/widget/TextView;)V
    .locals 2
    .parameter "tv"

    .prologue
    .line 28
    const-string v0, "Op09OperatorChecker"

    const-string v1, "Op09OperatorChecker setWorkSpaceIconTextLine called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 30
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 31
    return-void
.end method

.method public supportAppListCycleSliding()Z
    .locals 2

    .prologue
    .line 22
    const-string v0, "Op09OperatorChecker"

    const-string v1, "Op09OperatorChecker supportAppListCycleSliding called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 v0, 0x1

    return v0
.end method

.method public supportEditAndHideApps()Z
    .locals 2

    .prologue
    .line 16
    const-string v0, "Op09OperatorChecker"

    const-string v1, "Op09OperatorChecker supportEditAndHideApps called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v0, 0x1

    return v0
.end method
