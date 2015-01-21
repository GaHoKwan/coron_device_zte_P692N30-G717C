.class public Lcom/hf/UI/HFTextView;
.super Landroid/widget/TextView;
.source "HFTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TestView"


# instance fields
.field private mContents:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFontHeight:F

.field private mHeight:I

.field private mPaint:Landroid/text/TextPaint;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/hf/UI/HFTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/hf/UI/HFTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    iput-object p1, p0, Lcom/hf/UI/HFTextView;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {p0}, Lcom/hf/UI/HFTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/hf/UI/HFTextView;->mPaint:Landroid/text/TextPaint;

    .line 41
    iget-object v0, p0, Lcom/hf/UI/HFTextView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 42
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    .line 44
    return-void
.end method

.method private init()V
    .locals 14

    .prologue
    const/16 v13, 0x3000

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 62
    invoke-virtual {p0}, Lcom/hf/UI/HFTextView;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/hf/UI/HFTextView;->mWidth:I

    .line 63
    invoke-virtual {p0}, Lcom/hf/UI/HFTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, content:Ljava/lang/String;
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_0

    .line 65
    const-string v8, "TestView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "initHeight : content = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 68
    .local v3, len:I
    const/4 v6, 0x0

    .line 69
    .local v6, width:F
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 70
    .local v5, metrics:Landroid/graphics/Paint$FontMetrics;
    iget v8, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v9, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/hf/UI/HFTextView;->mFontHeight:F

    .line 71
    const-string v4, ""

    .line 72
    .local v4, lineText:Ljava/lang/String;
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 73
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 130
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_1

    .line 131
    const-string v8, "TestView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "mContents.size() = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; mFontHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/hf/UI/HFTextView;->mFontHeight:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_1
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/hf/UI/HFTextView;->mFontHeight:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x4120

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcom/hf/UI/HFTextView;->mHeight:I

    .line 135
    return-void

    .line 74
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 75
    .local v0, ch:C
    const/16 v8, 0x9

    if-ne v0, v8, :cond_4

    .line 76
    new-array v7, v12, [F

    .line 77
    .local v7, widths:[F
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mPaint:Landroid/text/TextPaint;

    const-string v9, " "

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 78
    const/high16 v8, 0x4080

    aget v9, v7, v11

    mul-float/2addr v8, v9

    add-float/2addr v6, v8

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    :goto_1
    add-int/lit8 v8, v3, -0x1

    if-ne v2, v8, :cond_3

    .line 124
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 125
    const-string v4, ""

    .line 126
    const/4 v6, 0x0

    .line 73
    .end local v7           #widths:[F
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_4
    const/16 v8, 0xa

    if-ne v0, v8, :cond_6

    .line 81
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_5

    .line 84
    const-string v8, "TestView"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "initHeight : \\n : lineText = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_5
    const-string v4, ""

    .line 88
    const/4 v6, 0x0

    .line 89
    goto :goto_2

    .line 91
    :cond_6
    new-array v7, v12, [F

    .line 92
    .restart local v7       #widths:[F
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mPaint:Landroid/text/TextPaint;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 93
    aget v8, v7, v11

    add-float/2addr v6, v8

    .line 94
    iget v8, p0, Lcom/hf/UI/HFTextView;->mWidth:I

    int-to-float v8, v8

    cmpl-float v8, v6, v8

    if-lez v8, :cond_b

    .line 96
    const v8, 0xff0c

    if-eq v0, v8, :cond_7

    .line 97
    const/16 v8, 0x3002

    if-eq v0, v8, :cond_7

    .line 98
    const v8, 0xff1a

    if-eq v0, v8, :cond_7

    .line 99
    const/16 v8, 0x3001

    if-eq v0, v8, :cond_7

    .line 100
    const v8, 0xff01

    if-eq v0, v8, :cond_7

    .line 101
    const v8, 0xff1b

    if-eq v0, v8, :cond_7

    .line 102
    if-eq v0, v13, :cond_7

    .line 103
    const v8, 0xff1f

    if-ne v0, v8, :cond_a

    .line 104
    :cond_7
    if-ne v0, v13, :cond_9

    .line 105
    const/16 v0, 0x20

    .line 109
    :cond_8
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 111
    const-string v4, ""

    .line 112
    const/4 v6, 0x0

    .line 113
    goto/16 :goto_1

    .line 106
    :cond_9
    const v8, 0xff00

    if-le v0, v8, :cond_8

    const v8, 0xff5f

    if-ge v0, v8, :cond_8

    .line 107
    const v8, 0xfee0

    sub-int v8, v0, v8

    int-to-char v0, v8

    goto :goto_3

    .line 114
    :cond_a
    iget-object v8, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v8, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 116
    aget v6, v7, v11

    .line 118
    goto/16 :goto_1

    .line 119
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 139
    iget-object v2, p0, Lcom/hf/UI/HFTextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    :cond_0
    return-void

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 144
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 145
    iget-object v2, p0, Lcom/hf/UI/HFTextView;->mContents:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    iget v4, p0, Lcom/hf/UI/HFTextView;->mFontHeight:F

    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/hf/UI/HFTextView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 50
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 51
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/hf/UI/HFTextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/hf/utils/Util;->isChinese(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/hf/UI/HFTextView;->init()V

    .line 53
    iget v0, p0, Lcom/hf/UI/HFTextView;->mHeight:I

    invoke-virtual {p0, v0}, Lcom/hf/UI/HFTextView;->setMinHeight(I)V

    .line 56
    :cond_0
    return-void
.end method
