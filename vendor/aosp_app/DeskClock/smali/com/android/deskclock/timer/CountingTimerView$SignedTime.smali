.class Lcom/android/deskclock/timer/CountingTimerView$SignedTime;
.super Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignedTime"
.end annotation


# instance fields
.field private mMinusWidth:F

.field final synthetic this$0:Lcom/android/deskclock/timer/CountingTimerView;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "paint"
    .parameter "label"
    .parameter "allDigits"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    .line 195
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Lcom/android/deskclock/timer/CountingTimerView$SignedTime;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "signedTime"
    .parameter "label"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;-><init>(Lcom/android/deskclock/timer/CountingTimerView;Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 200
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F
    .locals 7
    .parameter "canvas"
    .parameter "time"
    .parameter "x"
    .parameter "y"
    .parameter "yLabel"

    .prologue
    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, ii:I
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 223
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    const/high16 v1, 0x4000

    div-float v6, v0, v1

    .line 224
    .local v6, minusWidth:F
    add-float/2addr p3, v6

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p3, p4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 226
    add-float/2addr p3, v6

    .line 227
    add-int/lit8 v3, v3, 0x1

    .end local v6           #minusWidth:F
    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 229
    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F

    move-result p3

    .line 230
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #getter for: Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$000(Lcom/android/deskclock/timer/CountingTimerView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, p3, p5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v0

    add-float/2addr v0, p3

    return v0
.end method

.method protected resetWidth()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->resetWidth()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 217
    return-void
.end method

.method protected updateWidth(Ljava/lang/String;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->updateWidth(Ljava/lang/String;)V

    .line 205
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    .line 207
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    iget v2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$SignedTime;->mMinusWidth:F

    goto :goto_0
.end method
