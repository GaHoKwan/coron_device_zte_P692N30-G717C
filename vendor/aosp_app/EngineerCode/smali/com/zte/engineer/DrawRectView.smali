.class public Lcom/zte/engineer/DrawRectView;
.super Landroid/view/SurfaceView;
.source "DrawRectView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawRectView"


# instance fields
.field bRectFilled:[[Z

.field private debug:Z

.field private mCenterRect:Landroid/graphics/Rect;

.field private mFirst:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mMinRect:[[Landroid/graphics/Rect;

.field private mPaint:Landroid/graphics/Paint;

.field private mStep:I

.field private mTouchPointRect:Landroid/graphics/Point;

.field private mValidRect:[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x4

    .line 34
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/engineer/DrawRectView;->mStep:I

    .line 23
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    .line 24
    new-array v0, v1, [[Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    .line 25
    new-array v0, v1, [[Z

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/DrawRectView;->mFirst:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/DrawRectView;->debug:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x4

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0x50

    iput v0, p0, Lcom/zte/engineer/DrawRectView;->mStep:I

    .line 23
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    .line 24
    new-array v0, v1, [[Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    .line 25
    new-array v0, v1, [[Z

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/engineer/DrawRectView;->mFirst:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/engineer/DrawRectView;->debug:Z

    .line 42
    invoke-direct {p0}, Lcom/zte/engineer/DrawRectView;->initPaint()V

    .line 43
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mHolder:Landroid/view/SurfaceHolder;

    .line 44
    iget-object v0, p0, Lcom/zte/engineer/DrawRectView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 45
    return-void
.end method

.method private drawHollowRect(Landroid/graphics/Canvas;)V
    .locals 19
    .parameter "canvas"

    .prologue
    .line 87
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 88
    .local v8, mX:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 90
    .local v9, mY:I
    const-string v12, "thfdebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mX = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v12, "thfdebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mY="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/16 v12, 0x1e0

    if-ne v8, v12, :cond_0

    const/16 v12, 0x320

    if-ne v9, v12, :cond_0

    .line 95
    const/16 v12, 0x50

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    .line 113
    :goto_0
    const-string v12, "thfdebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mX = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v12, "thfdebug"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mY="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v12, "DrawRectView"

    const-string v13, "______shihaijun____measure width: %d, measure height : %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    rem-int/lit8 v12, v9, 0xa

    if-nez v12, :cond_4

    .line 121
    :goto_1
    const-string v12, "DrawRectView"

    const-string v13, "______shihaijun____measure width: %d, measure height : %d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v7, 0x0

    .line 126
    .local v7, mTopRects:[Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 128
    .local v4, mBottomRects:[Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, v8, v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    div-int v1, v12, v13

    .line 129
    .local v1, hCount:I
    new-array v7, v1, [Landroid/graphics/Rect;

    .line 130
    new-array v4, v1, [Landroid/graphics/Rect;

    .line 132
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 134
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    mul-int v3, v12, v13

    .line 135
    .local v3, left:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    add-int/2addr v14, v3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    invoke-direct {v12, v3, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v7, v2

    .line 136
    aget-object v12, v7, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 137
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    sub-int v13, v9, v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    add-int/2addr v14, v3

    add-int/lit8 v15, v9, -0x1

    invoke-direct {v12, v3, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v4, v2

    .line 138
    aget-object v12, v4, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 97
    .end local v1           #hCount:I
    .end local v2           #i:I
    .end local v3           #left:I
    .end local v4           #mBottomRects:[Landroid/graphics/Rect;
    .end local v7           #mTopRects:[Landroid/graphics/Rect;
    :cond_0
    const/16 v12, 0x21c

    if-ne v8, v12, :cond_1

    const/16 v12, 0x3c0

    if-ne v9, v12, :cond_1

    .line 99
    const/16 v12, 0x3c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    goto/16 :goto_0

    .line 101
    :cond_1
    const/16 v12, 0x140

    if-ne v8, v12, :cond_2

    const/16 v12, 0x1e0

    if-ne v9, v12, :cond_2

    .line 103
    const/16 v12, 0x28

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    goto/16 :goto_0

    .line 105
    :cond_2
    const/16 v12, 0x2d0

    if-ne v8, v12, :cond_3

    const/16 v12, 0x500

    if-ne v9, v12, :cond_3

    .line 107
    const/16 v12, 0x50

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    goto/16 :goto_0

    .line 111
    :cond_3
    const/16 v12, 0x50

    move-object/from16 v0, p0

    iput v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    goto/16 :goto_0

    .line 119
    :cond_4
    div-int/lit8 v12, v9, 0xa

    mul-int/lit8 v9, v12, 0xa

    goto/16 :goto_1

    .line 141
    .restart local v1       #hCount:I
    .restart local v2       #i:I
    .restart local v4       #mBottomRects:[Landroid/graphics/Rect;
    .restart local v7       #mTopRects:[Landroid/graphics/Rect;
    :cond_5
    const/4 v5, 0x0

    .line 142
    .local v5, mLeftRects:[Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 143
    .local v6, mRightRects:[Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    div-int v11, v9, v12

    .line 144
    .local v11, vCount:I
    new-array v5, v11, [Landroid/graphics/Rect;

    .line 145
    new-array v6, v11, [Landroid/graphics/Rect;

    .line 147
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v11, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    mul-int v10, v2, v12

    .line 150
    .local v10, top:I
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    add-int/2addr v15, v10

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v12, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v5, v2

    .line 151
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    sub-int v13, v8, v13

    add-int/lit8 v14, v8, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/engineer/DrawRectView;->mStep:I

    add-int/2addr v15, v10

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v12, v13, v10, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v12, v6, v2

    .line 152
    aget-object v12, v5, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 153
    aget-object v12, v6, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 156
    .end local v10           #top:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    const/4 v13, 0x0

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    aget-object v15, v5, v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget-object v16, v5, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int/lit8 v17, v11, -0x1

    aget-object v17, v5, v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    aget-object v18, v5, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v12, v13

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    const/4 v13, 0x1

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    aget-object v15, v7, v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int/lit8 v17, v1, -0x1

    aget-object v17, v7, v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v18, v1, -0x1

    aget-object v18, v7, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v12, v13

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    const/4 v13, 0x2

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    aget-object v15, v6, v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int/lit8 v17, v11, -0x1

    aget-object v17, v6, v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    aget-object v18, v6, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v12, v13

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    const/4 v13, 0x3

    new-instance v14, Landroid/graphics/Rect;

    const/4 v15, 0x0

    aget-object v15, v4, v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    const/16 v16, 0x0

    aget-object v16, v4, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int/lit8 v17, v1, -0x1

    aget-object v17, v4, v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    add-int/lit8 v18, v1, -0x1

    aget-object v18, v4, v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v14, v12, v13

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    const/4 v13, 0x0

    aput-object v5, v12, v13

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    const/4 v13, 0x1

    aput-object v7, v12, v13

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    const/4 v13, 0x2

    aput-object v6, v12, v13

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    const/4 v13, 0x3

    aput-object v4, v12, v13

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    const/4 v13, 0x0

    new-array v14, v11, [Z

    aput-object v14, v12, v13

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    const/4 v13, 0x1

    new-array v14, v1, [Z

    aput-object v14, v12, v13

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    const/4 v13, 0x2

    new-array v14, v11, [Z

    aput-object v14, v12, v13

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    const/4 v13, 0x3

    new-array v14, v1, [Z

    aput-object v14, v12, v13

    .line 175
    new-instance v12, Landroid/graphics/Rect;

    const/4 v13, 0x0

    aget-object v13, v5, v13

    iget v13, v13, Landroid/graphics/Rect;->right:I

    const/4 v14, 0x0

    aget-object v14, v5, v14

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v15, v1, -0x1

    aget-object v15, v4, v15

    iget v15, v15, Landroid/graphics/Rect;->left:I

    add-int/lit8 v16, v1, -0x1

    aget-object v16, v4, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/zte/engineer/DrawRectView;->mCenterRect:Landroid/graphics/Rect;

    .line 179
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/zte/engineer/DrawRectView;->debug:Z

    if-eqz v12, :cond_8

    .line 181
    const/4 v2, 0x0

    .line 182
    const/4 v2, 0x0

    :goto_4
    const/4 v12, 0x4

    if-ge v2, v12, :cond_7

    .line 184
    const-string v12, "DrawRectView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "________Valid Rect :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    aget-object v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 187
    :cond_7
    const-string v12, "DrawRectView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "________Center Rect :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/engineer/DrawRectView;->mCenterRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_8
    return-void
.end method

.method private drawSolidRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "rect"

    .prologue
    .line 193
    const-string v1, "DrawRectView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "______ rect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/zte/engineer/DrawRectView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 195
    .local v0, canvas:Landroid/graphics/Canvas;
    if-nez v0, :cond_0

    .line 197
    const-string v1, "DrawRectView"

    const-string v2, "___________get canvas failure...."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object v1, p0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 202
    iget-object v1, p0, Lcom/zte/engineer/DrawRectView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method static hasFilledAll([[Z)Z
    .locals 10
    .parameter "bArray"

    .prologue
    .line 233
    move-object v8, p0

    .line 234
    .local v8, mArray:[[Z
    move-object v1, v8

    .local v1, arr$:[[Z
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[[Z
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v0, v1, v5

    .line 236
    .local v0, a1:[Z
    move-object v2, v0

    .local v2, arr$:[Z
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v7, :cond_1

    aget-boolean v3, v2, v4

    .line 238
    .local v3, b:Z
    if-nez v3, :cond_0

    .line 240
    const/4 v9, 0x0

    .line 245
    .end local v0           #a1:[Z
    .end local v2           #arr$:[Z
    .end local v3           #b:Z
    .end local v4           #i$:I
    .end local v7           #len$:I
    :goto_2
    return v9

    .line 236
    .restart local v0       #a1:[Z
    .restart local v2       #arr$:[Z
    .restart local v3       #b:Z
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 234
    .end local v3           #b:Z
    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_0

    .line 245
    .end local v0           #a1:[Z
    .end local v2           #arr$:[Z
    .end local v7           #len$:I
    :cond_2
    const/4 v9, 0x1

    goto :goto_2
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    .line 50
    iget-object v0, p0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    iget-object v0, p0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lcom/zte/engineer/DrawRectView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    return-void
.end method


# virtual methods
.method findValidRect(II)Landroid/graphics/Point;
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mCenterRect:Landroid/graphics/Rect;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-object v2

    .line 213
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mValidRect:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 220
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    .line 218
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 213
    .end local v1           #j:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 61
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 62
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 64
    .local v2, y:I
    if-eqz v0, :cond_0

    if-ne v0, v7, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/zte/engineer/DrawRectView;->findValidRect(II)Landroid/graphics/Point;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    .line 69
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    if-eqz v3, :cond_1

    .line 71
    const-string v3, "DrawRectView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "________draw solid rect : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->mMinRect:[[Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    aget-object v3, v3, v4

    invoke-direct {p0, v3}, Lcom/zte/engineer/DrawRectView;->drawSolidRect(Landroid/graphics/Rect;)V

    .line 73
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    iget-object v4, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    aget-object v3, v3, v4

    iget-object v4, p0, Lcom/zte/engineer/DrawRectView;->mTouchPointRect:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    aput-boolean v6, v3, v4

    .line 74
    iget-object v3, p0, Lcom/zte/engineer/DrawRectView;->bRectFilled:[[Z

    invoke-static {v3}, Lcom/zte/engineer/DrawRectView;->hasFilledAll([[Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "aeon.marine.test.action.finish"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "TestPass"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 80
    :cond_1
    return v6
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 254
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/zte/engineer/DrawRectView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 261
    .local v0, canvas:Landroid/graphics/Canvas;
    invoke-direct {p0, v0}, Lcom/zte/engineer/DrawRectView;->drawHollowRect(Landroid/graphics/Canvas;)V

    .line 262
    iget-object v1, p0, Lcom/zte/engineer/DrawRectView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 263
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 270
    return-void
.end method
