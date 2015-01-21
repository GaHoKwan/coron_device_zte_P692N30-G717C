.class Lcom/android/calculator2/ColorButton;
.super Landroid/widget/Button;
.source "ColorButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final CLICK_FEEDBACK_DURATION:I = 0x15e

.field static final CLICK_FEEDBACK_INTERVAL:I = 0xa


# instance fields
.field CLICK_FEEDBACK_COLOR:I

.field mAnimStart:J

.field mListener:Landroid/view/View$OnClickListener;

.field mTextX:F

.field mTextY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/android/calculator2/Calculator;

    .line 42
    .local v0, calc:Lcom/android/calculator2/Calculator;
    iget-object v1, v0, Lcom/android/calculator2/Calculator;->mListener:Lcom/android/calculator2/EventListener;

    iput-object v1, p0, Lcom/android/calculator2/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    .line 43
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method private measureText()V
    .locals 4

    .prologue
    const/high16 v3, 0x4000

    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 57
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/calculator2/ColorButton;->mTextX:F

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/calculator2/ColorButton;->mTextY:F

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/calculator2/ColorButton;->mListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 48
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->measureText()V

    .line 53
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/calculator2/ColorButton;->measureText()V

    .line 64
    return-void
.end method
