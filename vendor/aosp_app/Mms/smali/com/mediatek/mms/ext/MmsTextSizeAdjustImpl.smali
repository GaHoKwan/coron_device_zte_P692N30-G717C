.class public Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;
.super Landroid/content/ContextWrapper;
.source "MmsTextSizeAdjustImpl.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;


# instance fields
.field private mHost:Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;->mHost:Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;

    .line 50
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getHost()Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;->mHost:Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;

    return-object v0
.end method

.method public init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V
    .locals 0
    .parameter "host"
    .parameter "activity"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/mediatek/mms/ext/MmsTextSizeAdjustImpl;->mHost:Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;

    .line 59
    return-void
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method
