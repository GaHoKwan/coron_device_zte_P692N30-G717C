.class public abstract Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;
.super Ljava/lang/Object;
.source "AbstractTrace.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/ITrace;


# instance fields
.field private mCurrentX:F

.field private mCurrentY:F

.field private mLastX:F

.field private mLastY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mCurrentX:F

    .line 9
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mCurrentY:F

    .line 10
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mLastX:F

    .line 11
    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mLastY:F

    .line 5
    return-void
.end method

.method private innerTrace(FF)V
    .locals 1
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 15
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mCurrentX:F

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mLastX:F

    .line 16
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mCurrentY:F

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mLastY:F

    .line 17
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mCurrentX:F

    .line 18
    iput p2, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mCurrentY:F

    .line 19
    return-void
.end method


# virtual methods
.method public continueTrace(FF)V
    .locals 0
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->innerTrace(FF)V

    .line 24
    return-void
.end method

.method protected getLastX()F
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mLastX:F

    return v0
.end method

.method protected getLastY()F
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->mLastY:F

    return v0
.end method

.method public startTrace(FF)V
    .locals 0
    .parameter "fx"
    .parameter "fy"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/skitch/trace/AbstractTrace;->innerTrace(FF)V

    .line 39
    return-void
.end method
