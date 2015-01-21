.class public Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;
.super Landroid/widget/TextView;
.source "EllipsizeTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;
    }
.end annotation


# instance fields
.field private mOnDrawnListener:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const-string v0, " "

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->mOnDrawnListener:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->mOnDrawnListener:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;

    invoke-interface {v0}, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;->onDrawn()V

    .line 61
    :cond_0
    return-void
.end method

.method public removeOnDrawnListener()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->mOnDrawnListener:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;

    .line 53
    return-void
.end method

.method public setOnDrawnListener(Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;)V
    .locals 0
    .parameter "onDrawnListener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/EllipsizeTextView;->mOnDrawnListener:Lcom/mediatek/email/emailvip/utils/EllipsizeTextView$OnDrawnListener;

    .line 49
    return-void
.end method
