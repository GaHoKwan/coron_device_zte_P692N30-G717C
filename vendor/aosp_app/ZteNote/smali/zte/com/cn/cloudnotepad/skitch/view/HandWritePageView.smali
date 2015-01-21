.class public Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;
.super Landroid/view/View;
.source "HandWritePageView.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/IHandWrite;
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;
    }
.end annotation


# instance fields
.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private cursorColor:I

.field private cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

.field private firstDraw:Z

.field private handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

.field private isWritting:Z

.field private mDensity:D

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->init()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->drawCursor(Z)V

    return-void
.end method

.method private calCursorPosition()Landroid/graphics/Point;
    .locals 8

    .prologue
    .line 64
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v5}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getWordWidthList()Ljava/util/List;

    move-result-object v2

    .line 65
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    new-instance v3, Landroid/graphics/Point;

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    sget v6, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->PADDING_TOP:I

    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 66
    .local v3, point:Landroid/graphics/Point;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/graphics/Bitmap;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 87
    return-object v3

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 71
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget-object v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->RETURN_CHARACTER:Landroid/graphics/Bitmap;

    if-ne v0, v5, :cond_1

    .line 72
    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    sget v7, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 76
    :cond_1
    iget v5, v3, Landroid/graphics/Point;->x:I

    sget v6, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    add-int/2addr v5, v6

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharWidth(Landroid/graphics/Bitmap;)I

    move-result v6

    add-int v4, v5, v6

    .line 78
    .local v4, x:I
    iget v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_WIDTH:I

    if-le v4, v5, :cond_2

    .line 80
    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharWidth(Landroid/graphics/Bitmap;)I

    move-result v6

    add-int/2addr v5, v6

    sget v6, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    add-int v4, v5, v6

    .line 81
    iget v5, v3, Landroid/graphics/Point;->y:I

    sget v6, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 85
    :cond_2
    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private calScreenTopY(Landroid/graphics/Point;)I
    .locals 4
    .parameter "point"

    .prologue
    .line 92
    iget v1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_HEIGHT:I

    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->PADDING_BOTTOM:I

    sub-int/2addr v1, v2

    sget v2, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    sub-int v0, v1, v2

    .line 93
    .local v0, y:I
    iget v1, p1, Landroid/graphics/Point;->y:I

    if-le v1, v0, :cond_0

    .line 95
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_HEIGHT:I

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    mul-int/2addr v2, v3

    sub-int v0, v1, v2

    .line 99
    :goto_0
    return v0

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawCursor(Z)V
    .locals 1
    .parameter "isVisible"

    .prologue
    .line 105
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getPaintColor()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorColor:I

    .line 111
    :goto_0
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->isWritting:Z

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->postInvalidate()V

    .line 114
    :cond_0
    return-void

    .line 108
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorColor:I

    goto :goto_0
.end method

.method private drawHandwrites(IILandroid/graphics/Canvas;)V
    .locals 1
    .parameter "top"
    .parameter "bottom"
    .parameter "canvas"

    .prologue
    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->drawHandwrites(IILandroid/graphics/Canvas;Z)V

    .line 119
    return-void
.end method

.method private drawHandwrites(IILandroid/graphics/Canvas;Z)V
    .locals 19
    .parameter "top"
    .parameter "bottom"
    .parameter "canvas"
    .parameter "withLines"

    .prologue
    .line 124
    move-object/from16 v0, p0

    iget-object v13, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    const/high16 v14, -0x100

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    if-eqz p4, :cond_0

    .line 126
    invoke-direct/range {p0 .. p3}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->drawLines(IILandroid/graphics/Canvas;)V

    .line 128
    :cond_0
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    sget v14, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->PADDING_BOTTOM:I

    sub-int v12, v13, v14

    .line 129
    .local v12, y_loc:I
    sget v11, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    .line 131
    .local v11, x_loc:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v13}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getWordWidthList()Ljava/util/List;

    move-result-object v7

    .line 132
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 136
    .local v3, count:I
    const/4 v6, 0x0

    .local v6, index:I
    :goto_0
    if-lt v6, v3, :cond_1

    .line 177
    return-void

    .line 137
    :cond_1
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 138
    .local v2, bitmap:Landroid/graphics/Bitmap;
    sget-object v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->RETURN_CHARACTER:Landroid/graphics/Bitmap;

    if-ne v2, v13, :cond_3

    .line 139
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int/2addr v12, v13

    .line 140
    sget v11, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    .line 136
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 142
    :cond_3
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharWidth(Landroid/graphics/Bitmap;)I

    move-result v14

    add-int v8, v13, v14

    .line 143
    .local v8, offset:I
    add-int v13, v11, v8

    move-object/from16 v0, p0

    iget v14, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_WIDTH:I

    if-le v13, v14, :cond_6

    .line 144
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int/2addr v12, v13

    .line 145
    move/from16 v0, p1

    if-ge v12, v0, :cond_4

    .line 146
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    add-int v11, v13, v8

    goto :goto_1

    .line 147
    :cond_4
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int v13, v13, p1

    if-ge v12, v13, :cond_5

    .line 148
    new-instance v9, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 149
    .local v9, src:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    sget v14, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    sub-int v14, v12, v14

    sub-int v14, v14, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharWidth(Landroid/graphics/Bitmap;)I

    move-result v15

    sget v16, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    add-int v15, v15, v16

    sub-int v16, v12, p1

    move/from16 v0, v16

    invoke-direct {v4, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 150
    .local v4, dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 152
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    add-int v11, v13, v8

    goto :goto_1

    .line 153
    .end local v4           #dst:Landroid/graphics/Rect;
    .end local v9           #src:Landroid/graphics/Rect;
    :cond_5
    move/from16 v0, p2

    if-gt v12, v0, :cond_2

    .line 154
    new-instance v9, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    .restart local v9       #src:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    sget v14, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    sub-int v14, v12, v14

    sub-int v14, v14, p1

    sub-int v15, v12, p1

    invoke-direct {v4, v13, v14, v8, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 156
    .restart local v4       #dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 157
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    add-int v11, v13, v8

    goto/16 :goto_1

    .line 160
    .end local v4           #dst:Landroid/graphics/Rect;
    .end local v9           #src:Landroid/graphics/Rect;
    :cond_6
    move/from16 v0, p1

    if-lt v12, v0, :cond_7

    .line 162
    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int v13, v13, p1

    if-ge v12, v13, :cond_8

    .line 163
    const/4 v13, 0x0

    sub-int v14, v12, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharHeight(Landroid/graphics/Bitmap;)I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 164
    .local v5, dstTop:I
    const/4 v13, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharHeight(Landroid/graphics/Bitmap;)I

    move-result v15

    int-to-double v15, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->mDensity:D

    move-wide/from16 v17, v0

    mul-double v15, v15, v17

    double-to-int v15, v15

    sub-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 165
    .local v10, srcTop:I
    new-instance v9, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v9, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    .restart local v9       #src:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharWidth(Landroid/graphics/Bitmap;)I

    move-result v13

    add-int/2addr v13, v11

    sub-int v14, v12, p1

    invoke-direct {v4, v11, v5, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    .restart local v4       #dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 173
    .end local v4           #dst:Landroid/graphics/Rect;
    .end local v5           #dstTop:I
    .end local v9           #src:Landroid/graphics/Rect;
    .end local v10           #srcTop:I
    :cond_7
    :goto_2
    add-int/2addr v11, v8

    goto/16 :goto_1

    .line 168
    :cond_8
    move/from16 v0, p2

    if-gt v12, v0, :cond_7

    .line 169
    new-instance v9, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v9, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 170
    .restart local v9       #src:Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/Rect;

    sget v13, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    sub-int v13, v12, v13

    sub-int v13, v13, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getCharWidth(Landroid/graphics/Bitmap;)I

    move-result v14

    add-int/2addr v14, v11

    sub-int v15, v12, p1

    invoke-direct {v4, v11, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 171
    .restart local v4       #dst:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v9, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2
.end method

.method private drawLines(IILandroid/graphics/Canvas;)V
    .locals 7
    .parameter "top"
    .parameter "bottom"
    .parameter "canvas"

    .prologue
    .line 181
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_STROKE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    sget v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    sget v1, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    rem-int v1, p1, v1

    sub-int v6, v0, v1

    .line 186
    .local v6, y:I
    :goto_0
    if-lt v6, p2, :cond_0

    .line 190
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    return-void

    .line 187
    :cond_0
    sget v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    int-to-float v1, v0

    int-to-float v2, v6

    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getWidth()I

    move-result v0

    sget v3, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SPACING:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    int-to-float v4, v6

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 188
    sget v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_HEIGHT:I

    add-int/2addr v6, v0

    goto :goto_0
.end method

.method private getCharHeight(Landroid/graphics/Bitmap;)I
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 195
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->mDensity:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private getCharWidth(Landroid/graphics/Bitmap;)I
    .locals 4
    .parameter "bitmap"

    .prologue
    .line 200
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->mDensity:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getWidth()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_WIDTH:I

    .line 54
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getHeight()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_HEIGHT:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->firstDraw:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorColor:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->isWritting:Z

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    .line 59
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v0, v2

    iput-wide v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->mDensity:D

    .line 60
    return-void
.end method

.method private innerAddCharacter(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 205
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getWordWidthList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getPaintColor()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorColor:I

    .line 207
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay()V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->invalidateCanvas()V

    .line 211
    return-void
.end method


# virtual methods
.method public addBlank()V
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->BLANK_CHARACTER:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->innerAddCharacter(Landroid/graphics/Bitmap;)V

    .line 216
    return-void
.end method

.method public addCharacter(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "bitmap"

    .prologue
    .line 220
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    mul-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    int-to-double v4, v4

    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->mDensity:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    .line 221
    .local v3, w:I
    sget v4, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    int-to-double v4, v4

    iget-wide v6, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->mDensity:D

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 222
    .local v0, h:I
    const/4 v1, 0x0

    .line 224
    .local v1, newBitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1, v3, v0, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 225
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->innerAddCharacter(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    const/4 p1, 0x0

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v2

    .line 228
    .local v2, tr:Ljava/lang/Throwable;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "in addCharacter, createScaledBitmap exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    const/4 v1, 0x0

    .line 234
    :cond_1
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    const/4 p1, 0x0

    goto :goto_0

    .line 233
    .end local v2           #tr:Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    .line 234
    if-eqz p1, :cond_2

    .line 235
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    const/4 p1, 0x0

    .line 238
    :cond_2
    throw v4
.end method

.method public addReturn()V
    .locals 1

    .prologue
    .line 243
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->RETURN_CHARACTER:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->innerAddCharacter(Landroid/graphics/Bitmap;)V

    .line 244
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 248
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->calCursorPosition()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    add-int/2addr v4, v5

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->PADDING_BOTTOM:I

    add-int/2addr v4, v5

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->LINE_STROKE:I

    add-int/2addr v4, v5

    add-int/lit8 v2, v4, 0x1

    .line 253
    .local v2, hight:I
    const/4 v0, 0x0

    .line 255
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    iget v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_WIDTH:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 256
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 257
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v2, v1, v5}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->drawHandwrites(IILandroid/graphics/Canvas;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 266
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :goto_0
    return-object v4

    .line 259
    :catch_0
    move-exception v3

    .line 261
    .local v3, tr:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    const/4 v0, 0x0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->buildDrawingCache()V

    .line 266
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_0
.end method

.method public getPaintColor()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getPaintColor()I

    move-result v0

    return v0
.end method

.method public getPaintWidth()F
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getPaintWidth()F

    move-result v0

    return v0
.end method

.method public initSkitchMeta(Lzte/com/cn/cloudnotepad/skitch/iface/ISkitchMeta;)V
    .locals 2
    .parameter "meta"

    .prologue
    .line 282
    check-cast p1, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    .end local p1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    .line 283
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setPaintColor(I)V

    .line 286
    return-void
.end method

.method public invalidateCanvas()V
    .locals 0

    .prologue
    .line 290
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->postInvalidate()V

    .line 291
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->isEmpty()Z

    move-result v0

    .line 468
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v5, 0x1

    .line 295
    iget-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->firstDraw:Z

    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getWidth()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_WIDTH:I

    .line 297
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->getHeight()I

    move-result v0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_HEIGHT:I

    .line 298
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 299
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 300
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->firstDraw:Z

    .line 303
    :cond_0
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->calCursorPosition()Landroid/graphics/Point;

    move-result-object v7

    .line 304
    .local v7, cursorPoint:Landroid/graphics/Point;
    invoke-direct {p0, v7}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->calScreenTopY(Landroid/graphics/Point;)I

    move-result v8

    .line 305
    .local v8, top_y:I
    iget v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->SCREEN_HEIGHT:I

    add-int v6, v0, v8

    .line 306
    .local v6, bottom_y:I
    invoke-direct {p0, v8, v6, p1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->drawHandwrites(IILandroid/graphics/Canvas;)V

    .line 309
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    iget v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorColor:I

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 310
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    .line 311
    .local v1, startX:F
    iget v0, v7, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v8

    int-to-float v2, v0

    .line 312
    .local v2, startY:F
    iget v0, v7, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    .line 313
    .local v3, stopX:F
    iget v0, v7, Landroid/graphics/Point;->y:I

    sget v5, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->WORD_HEIGHT:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v8

    int-to-float v4, v0

    .line 314
    .local v4, stopY:F
    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 315
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->firstDraw:Z

    .line 320
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->invalidate()V

    .line 321
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 322
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 327
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 328
    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->stopCursorDrawer()V

    .line 331
    :cond_0
    return-void
.end method

.method public setIswritting(Z)V
    .locals 0
    .parameter "iswritting"

    .prologue
    .line 335
    iput-boolean p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->isWritting:Z

    .line 336
    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 461
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setPaintColor(I)V

    .line 462
    return-void
.end method

.method public setPaintWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 340
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0, p1}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->setPaintWidth(F)V

    .line 341
    return-void
.end method

.method public startCursorDrawer()V
    .locals 2

    .prologue
    .line 345
    monitor-enter p0

    .line 346
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    if-nez v0, :cond_0

    .line 347
    new-instance v0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;-><init>(Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    .line 349
    :cond_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->startDrawing()V

    .line 350
    const-string v0, "cursor drawer started"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    monitor-exit p0

    .line 352
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopCursorDrawer()V
    .locals 1

    .prologue
    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->stopDrawing()V

    .line 359
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    .line 356
    :cond_0
    monitor-exit p0

    .line 362
    return-void

    .line 356
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trash()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->trash()V

    .line 368
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->invalidate()V

    .line 371
    :cond_0
    return-void
.end method

.method public undo()V
    .locals 4

    .prologue
    .line 375
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getWordWidthList()Ljava/util/List;

    move-result-object v2

    .line 376
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/Bitmap;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 377
    .local v0, count:I
    if-lez v0, :cond_2

    .line 378
    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 379
    .local v1, last_bm:Landroid/graphics/Bitmap;
    sget-object v3, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->RETURN_CHARACTER:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_0

    sget-object v3, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->BLANK_CHARACTER:Landroid/graphics/Bitmap;

    if-eq v1, v3, :cond_0

    .line 380
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 383
    :cond_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->handwriteMeta:Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/meta/HandwriteMeta;->getPaintColor()I

    move-result v3

    iput v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorColor:I

    .line 384
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    if-eqz v3, :cond_1

    .line 385
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->cursorDrawer:Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView$CursorDrawer;->delay()V

    .line 387
    :cond_1
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HandWritePageView;->invalidateCanvas()V

    .line 389
    .end local v1           #last_bm:Landroid/graphics/Bitmap;
    :cond_2
    return-void
.end method
