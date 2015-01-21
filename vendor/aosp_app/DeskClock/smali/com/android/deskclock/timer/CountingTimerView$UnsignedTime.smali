.class Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;
.super Ljava/lang/Object;
.source "CountingTimerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/timer/CountingTimerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnsignedTime"
.end annotation


# instance fields
.field protected mEm:F

.field protected mLabel:Ljava/lang/String;

.field private mLabelWidth:F

.field protected mPaint:Landroid/graphics/Paint;

.field private mWidest:Ljava/lang/String;

.field protected mWidth:F

.field final synthetic this$0:Lcom/android/deskclock/timer/CountingTimerView;


# direct methods
.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Landroid/graphics/Paint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter "paint"
    .parameter "label"
    .parameter "allDigits"

    .prologue
    const/4 v4, 0x0

    .line 99
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 97
    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    .line 100
    iput-object p2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    .line 101
    iput-object p3, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    .line 103
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    const-string v4, "Locale digits missing - using English"

    invoke-static {v4}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 105
    const-string p4, "0123456789"

    .line 108
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    new-array v3, v4, [F

    .line 109
    .local v3, widths:[F
    iget-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p4, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v2

    .line 110
    .local v2, ll:I
    const/4 v1, 0x0

    .line 111
    .local v1, largest:I
    const/4 v0, 0x1

    .local v0, ii:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 112
    aget v4, v3, v0

    aget v5, v3, v1

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 113
    move v1, v0

    .line 111
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_2
    aget v4, v3, v1

    iput v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    .line 118
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p4, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/android/deskclock/timer/CountingTimerView;Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "unsignedTime"
    .parameter "label"

    .prologue
    const/4 v0, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 97
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    .line 122
    iget-object v0, p2, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    .line 123
    iget v0, p2, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    .line 124
    iget v0, p2, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 125
    iget-object v0, p2, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    .line 127
    return-void
.end method


# virtual methods
.method public calcTotalWidth(Ljava/lang/String;)F
    .locals 2
    .parameter "time"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->updateWidth(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    add-float/2addr v0, v1

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->resetWidth()V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;Ljava/lang/String;FFF)F
    .locals 6
    .parameter "canvas"
    .parameter "time"
    .parameter "x"
    .parameter "y"
    .parameter "yLabel"

    .prologue
    .line 169
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F

    move-result p3

    .line 170
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #getter for: Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/deskclock/timer/CountingTimerView;->access$000(Lcom/android/deskclock/timer/CountingTimerView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, p3, p5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->getLabelWidth()F

    move-result v0

    add-float/2addr v0, p3

    return v0
.end method

.method protected drawTime(Landroid/graphics/Canvas;Ljava/lang/String;IFF)F
    .locals 3
    .parameter "canvas"
    .parameter "time"
    .parameter "ii"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 158
    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 159
    .local v0, textEm:F
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 160
    add-float/2addr p4, v0

    .line 161
    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p4, p5, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 162
    add-float/2addr p4, v0

    .line 163
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 165
    :cond_0
    return p4
.end method

.method public getLabelWidth()F
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    return v0
.end method

.method protected resetWidth()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 137
    return-void
.end method

.method protected updateWidth(Ljava/lang/String;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    .line 131
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabelWidth:F

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mEm:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mWidth:F

    .line 133
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->this$0:Lcom/android/deskclock/timer/CountingTimerView;

    #getter for: Lcom/android/deskclock/timer/CountingTimerView;->mPaintLabel:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/android/deskclock/timer/CountingTimerView;->access$000(Lcom/android/deskclock/timer/CountingTimerView;)Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/timer/CountingTimerView$UnsignedTime;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method
