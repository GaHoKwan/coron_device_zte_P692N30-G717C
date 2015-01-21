.class public Lcom/sohu/inputmethod/sogou/SogouKeyboardView;
.super Lcom/sohu/inputmethod/sogou/VirtualViewGroup;
.source "SourceFile"


# static fields
.field private static A:I

.field public static a:I

.field public static a:Z

.field private static final a:[I

.field public static b:I

.field public static c:I

.field public static c:Z

.field public static d:Z


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private a:F

.field private a:J

.field private a:Landroid/graphics/Canvas;

.field private a:Landroid/graphics/Paint;

.field private a:Landroid/graphics/drawable/Drawable;

.field a:Landroid/os/Handler;

.field private a:Landroid/view/GestureDetector;

.field private a:Landroid/view/View;

.field private a:Landroid/view/animation/Animation$AnimationListener;

.field private a:Lapn;

.field public a:Laup;

.field private a:Lauq;

.field private a:Lawk;

.field private a:Lawq;

.field private a:Lawx;

.field private a:Lazc;

.field private a:Lazg;

.field private a:Lcom/sohu/inputmethod/sogou/SogouIME;

.field private a:Ljava/lang/StringBuilder;

.field private a:Ljava/lang/reflect/Method;

.field private a:[Lawq;

.field private b:F

.field private b:J

.field private b:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Rect;

.field private b:Lawq;

.field private b:Ljava/lang/reflect/Method;

.field public b:Z

.field private b:[I

.field private c:F

.field private c:J

.field private final c:Landroid/graphics/Rect;

.field private c:Ljava/lang/reflect/Method;

.field private c:[I

.field private d:F

.field private d:I

.field private d:J

.field private d:Landroid/graphics/Rect;

.field private d:[I

.field private e:F

.field private e:I

.field private e:J

.field private e:Z

.field private f:F

.field private f:I

.field private f:J

.field private f:Z

.field private g:F

.field private g:I

.field private g:J

.field private g:Z

.field private h:I

.field private h:J

.field private h:Z

.field private i:I

.field private i:Z

.field private j:I

.field private j:Z

.field private k:I

.field private k:Z

.field private l:I

.field private l:Z

.field private m:I

.field private m:Z

.field private n:I

.field private n:Z

.field private o:I

.field private o:Z

.field private p:I

.field private p:Z

.field private q:I

.field private q:Z

.field private r:I

.field private r:Z

.field private s:I

.field private s:Z

.field private t:I

.field private t:Z

.field private u:I

.field private u:Z

.field private v:I

.field private v:Z

.field private w:I

.field private w:Z

.field private x:I

.field private x:Z

.field private y:I

.field private y:Z

.field private z:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, -0x5

    aput v1, v0, v2

    sput-object v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[I

    .line 250
    const/16 v0, 0xc

    sput v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->A:I

    .line 291
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Z

    .line 297
    sput v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:I

    .line 299
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    .line 301
    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Z

    .line 304
    const/16 v0, 0x8

    sput v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:I

    .line 305
    sput v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;-><init>(Landroid/content/Context;)V

    .line 113
    iput-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    .line 116
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:Z

    .line 127
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:[I

    .line 148
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:I

    .line 165
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:Z

    .line 166
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:Z

    .line 167
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:Z

    .line 168
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:Z

    .line 170
    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:Z

    .line 175
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:Z

    .line 177
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:Z

    .line 178
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    .line 179
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n:Z

    .line 180
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:Z

    .line 181
    iput-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazc;

    .line 198
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    .line 199
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    .line 204
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Landroid/graphics/Rect;

    .line 208
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    .line 212
    new-instance v0, Lazg;

    invoke-direct {v0}, Lazg;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazg;

    .line 217
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:I

    .line 220
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    .line 221
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    .line 234
    const v0, 0x7fffffff

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:I

    .line 251
    sget v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->A:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Ljava/lang/StringBuilder;

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    .line 267
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Canvas;

    .line 273
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:Z

    .line 275
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Canvas;

    .line 276
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Paint;

    .line 282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:J

    .line 286
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->A:Z

    .line 293
    iput-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    .line 295
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Z

    .line 470
    new-instance v0, Laum;

    invoke-direct {v0, p0}, Laum;-><init>(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    .line 712
    new-instance v0, Lauo;

    invoke-direct {v0, p0}, Lauo;-><init>(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/view/animation/Animation$AnimationListener;

    .line 62
    invoke-virtual {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/content/Context;)V

    .line 63
    check-cast p1, Lcom/sohu/inputmethod/sogou/SogouIME;

    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    .line 64
    return-void
.end method

.method private a(Landroid/view/MotionEvent;I)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2143
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Ljava/lang/reflect/Method;

    .line 2144
    if-eqz v0, :cond_0

    .line 2145
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2156
    :goto_0
    return v0

    .line 2153
    :catch_0
    move-exception v0

    .line 2156
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0

    .line 2151
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2149
    :catch_2
    move-exception v0

    goto :goto_1

    .line 2147
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private a(IIII[Lawq;)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/high16 v5, 0x4248

    .line 2765
    if-nez p5, :cond_0

    .line 2780
    :goto_0
    return v2

    .line 2769
    :cond_0
    if-eq p1, p3, :cond_4

    .line 2770
    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    sub-int v4, p3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x3f00

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 2771
    if-le p1, p3, :cond_2

    const/4 v0, 0x1

    .line 2780
    :cond_1
    :goto_1
    array-length v1, p5

    if-ge v0, v1, :cond_5

    :goto_2
    move v2, v0

    goto :goto_0

    .line 2771
    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    .line 2773
    :cond_3
    sub-int v3, p2, p4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v4}, Laox;->a(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    move v0, v1

    goto :goto_1

    .line 2776
    :cond_4
    sub-int v3, p2, p4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v4}, Laox;->a(Landroid/content/Context;)F

    move-result v4

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_1

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    .line 2780
    goto :goto_2
.end method

.method private a(II[I)I
    .locals 17
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v2}, Lawx;->c()Z

    .line 1273
    const/4 v6, -0x1

    .line 1274
    const/4 v4, -0x1

    .line 1275
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:I

    add-int/lit8 v3, v2, 0x1

    .line 1276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    const v5, 0x7fffffff

    invoke-static {v2, v5}, Ljava/util/Arrays;->fill([II)V

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lawx;->a(II)[I

    move-result-object v11

    .line 1278
    array-length v12, v11

    .line 1281
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v12, :cond_d

    .line 1282
    aget v2, v11, v9

    aget-object v13, v10, v2

    .line 1283
    const/4 v2, 0x0

    .line 1284
    move/from16 v0, p1

    int-to-float v5, v0

    move/from16 v0, p2

    int-to-float v7, v0

    invoke-virtual {v13, v5, v7}, Lawq;->a(FF)Z

    move-result v5

    .line 1286
    if-eqz v5, :cond_0

    .line 1287
    aget v2, v11, v9

    .line 1331
    :goto_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_9

    .line 1335
    :goto_2
    return v4

    .line 1292
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->p:Z

    if-eqz v7, :cond_1

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lawq;->a(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:I

    if-lt v2, v7, :cond_2

    :cond_1
    if-eqz v5, :cond_c

    .line 1300
    :cond_2
    iget-object v5, v13, Lawq;->a:[I

    if-eqz v5, :cond_3

    iget-object v5, v13, Lawq;->a:[I

    array-length v5, v5

    move v8, v5

    .line 1302
    :goto_3
    if-ge v2, v3, :cond_b

    .line 1304
    aget v5, v11, v9

    move v4, v2

    .line 1307
    :goto_4
    if-nez p3, :cond_4

    move v2, v4

    move v3, v5

    .line 1281
    :goto_5
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v4, v3

    move v3, v2

    goto :goto_0

    .line 1300
    :cond_3
    const/4 v5, 0x0

    move v8, v5

    goto :goto_3

    .line 1309
    :cond_4
    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    array-length v7, v7

    if-ge v3, v7, :cond_a

    .line 1310
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    aget v7, v7, v3

    if-le v7, v2, :cond_8

    .line 1313
    add-int v7, v3, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    array-length v14, v14

    if-ge v7, v14, :cond_5

    .line 1314
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    add-int v15, v3, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    sub-int v16, v16, v3

    sub-int v16, v16, v8

    move/from16 v0, v16

    invoke-static {v7, v3, v14, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1317
    :cond_5
    add-int v7, v3, v8

    move-object/from16 v0, p3

    array-length v14, v0

    if-ge v7, v14, :cond_6

    .line 1318
    add-int v7, v3, v8

    move-object/from16 v0, p3

    array-length v14, v0

    sub-int/2addr v14, v3

    sub-int/2addr v14, v8

    move-object/from16 v0, p3

    move-object/from16 v1, p3

    invoke-static {v0, v3, v1, v7, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1321
    :cond_6
    const/4 v7, 0x0

    :goto_7
    if-ge v7, v8, :cond_7

    add-int v14, v3, v7

    if-ge v14, v8, :cond_7

    .line 1322
    add-int v14, v3, v7

    iget-object v15, v13, Lawq;->a:[I

    aget v15, v15, v7

    aput v15, p3, v14

    .line 1323
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:[I

    add-int v15, v3, v7

    aput v2, v14, v15

    .line 1321
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_7
    move v2, v4

    move v3, v5

    .line 1325
    goto :goto_5

    .line 1309
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_9
    move v4, v2

    goto/16 :goto_2

    :cond_a
    move v2, v4

    move v3, v5

    goto :goto_5

    :cond_b
    move v5, v4

    move v4, v3

    goto/16 :goto_4

    :cond_c
    move v2, v3

    move v3, v4

    goto/16 :goto_5

    :cond_d
    move v2, v6

    goto/16 :goto_1
.end method

.method private a(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter

    .prologue
    .line 2179
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Ljava/lang/reflect/Method;

    .line 2180
    if-eqz v0, :cond_0

    .line 2181
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2192
    :goto_0
    return v0

    .line 2189
    :catch_0
    move-exception v0

    .line 2192
    :cond_0
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2187
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2185
    :catch_2
    move-exception v0

    goto :goto_1

    .line 2183
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)J
    .locals 2
    .parameter

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    return-wide v0
.end method

.method private a(Lawq;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1460
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    if-eqz v1, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return-object v0

    .line 1462
    :cond_1
    invoke-virtual {p1}, Lawq;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1463
    if-eqz v1, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 1468
    :cond_2
    iget-object v1, p1, Lawq;->c:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 1470
    iget-object v1, p1, Lawq;->b:Lawo;

    .line 1471
    if-eqz v1, :cond_0

    iget v2, v1, Lawo;->b:I

    if-lez v2, :cond_0

    iget v2, v1, Lawo;->c:I

    if-lez v2, :cond_0

    .line 1473
    iget-boolean v2, v1, Lawo;->b:Z

    if-eqz v2, :cond_0

    .line 1475
    invoke-direct {p0, p1, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Lawo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lawq;Lawo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1479
    iget-object v0, p2, Lawo;->a:Ljava/lang/String;

    iget v1, p2, Lawo;->b:I

    iget v2, p2, Lawo;->c:I

    invoke-static {v0, v1, v2}, Laxq;->a(Ljava/lang/String;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v8

    .line 1480
    if-eqz v8, :cond_0

    .line 1481
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1482
    if-eqz v0, :cond_0

    .line 1483
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1484
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Canvas;

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1485
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 1486
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Laxq;->a:Landroid/graphics/Rect;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Lawo;Landroid/graphics/Paint;Landroid/graphics/Canvas;IILandroid/graphics/Rect;)V

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lapn;->a(Z)V

    .line 1490
    return-object v8
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lauq;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lawk;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    return-object v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Lazg;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazg;

    return-object v0
.end method

.method private a(Lawq;)Ljava/lang/CharSequence;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1447
    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    if-eqz v1, :cond_2

    .line 1449
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1451
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Ljava/lang/StringBuilder;

    iget-object v2, p1, Lawq;->a:[I

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    iget-object v4, p1, Lawq;->a:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    :cond_0
    :goto_0
    aget v0, v2, v0

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1453
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1456
    :goto_1
    return-object v0

    .line 1451
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    goto :goto_0

    .line 1456
    :cond_2
    iget-object v0, p1, Lawq;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p1, Lawq;->b:Ljava/lang/CharSequence;

    :goto_2
    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lawq;->c:Ljava/lang/CharSequence;

    goto :goto_2
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    .line 890
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v1

    invoke-static {v1}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 896
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method private a(III)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 1566
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    if-nez v0, :cond_1

    .line 1586
    :cond_0
    :goto_0
    return-void

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1571
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v0, p1

    .line 1572
    const/high16 v0, 0x3f80

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1573
    if-gtz v0, :cond_2

    move v0, v1

    .line 1575
    :cond_2
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getLocationOnScreen([I)V

    .line 1576
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    aget v3, v3, v5

    int-to-float v3, v3

    iget v4, v2, Lawq;->a:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v4}, Lapn;->getWidth()I

    move-result v4

    iget v2, v2, Lawq;->b:I

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v3, v2

    float-to-int v2, v2

    .line 1577
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v4}, Lapn;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    sub-int/2addr v4, v2

    div-int/2addr v4, v0

    mul-int/2addr v4, v0

    add-int/2addr v2, v4

    aput v2, v3, v5

    .line 1578
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    aget v3, v3, v1

    div-int v4, p3, v0

    mul-int/2addr v0, v4

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v3}, Lapn;->getHeight()I

    move-result v3

    sub-int/2addr v0, v3

    const/high16 v3, 0x4220

    iget v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v0, v3

    aput v0, v2, v1

    .line 1580
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v4}, Lapn;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v5}, Lapn;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lapn;->a(J[III)V

    goto :goto_0
.end method

.method private a(IIIJII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1339
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJZII)V

    .line 1340
    return-void
.end method

.method private a(IIIJZII)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1344
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 1345
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v6, v0, p1

    .line 1347
    iget-object v0, v6, Lawq;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1348
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, v6, Lawq;->d:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lauq;->a(Ljava/lang/CharSequence;)V

    .line 1349
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lauq;->j(I)V

    .line 1385
    :cond_0
    :goto_0
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->B:I

    .line 1386
    iput-wide p4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    .line 1388
    :cond_1
    return-void

    .line 1350
    :cond_2
    iget-object v0, v6, Lawq;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1351
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ae:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ae:I

    .line 1352
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0, v6}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lawq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, v6, Lawq;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lauq;->b(Ljava/lang/CharSequence;)V

    .line 1354
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lauq;->j(I)V

    goto :goto_0

    .line 1357
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lawq;->a(I)I

    move-result v1

    .line 1358
    sget v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->A:I

    new-array v7, v0, [I

    .line 1359
    const/4 v0, -0x1

    invoke-static {v7, v0}, Ljava/util/Arrays;->fill([II)V

    .line 1360
    invoke-direct {p0, p2, p3, v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(II[I)I

    .line 1362
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    if-eqz v0, :cond_6

    .line 1363
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 1364
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    const/4 v1, -0x5

    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lauq;->a(I[IZII)V

    .line 1368
    :goto_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    iget-object v1, v6, Lawq;->a:[I

    array-length v1, v1

    if-lt v0, v1, :cond_5

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    .line 1369
    :cond_5
    iget-object v0, v6, Lawq;->a:[I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    aget v1, v0, v1

    .line 1371
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v0, v0, p1

    iget-object v0, v0, Lawq;->a:Laws;

    sget-object v2, Laws;->a:Laws;

    if-eq v0, v2, :cond_7

    .line 1373
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v2, v0, Lamo;->an:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lamo;->an:I

    .line 1382
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    move-object v2, v7

    move v3, p6

    move v4, p7

    move/from16 v5, p8

    invoke-interface/range {v0 .. v5}, Lauq;->a(I[IZII)V

    .line 1383
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v1}, Lauq;->j(I)V

    goto/16 :goto_0

    .line 1366
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    goto :goto_1
.end method

.method private a(ILawq;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1505
    invoke-direct {p0, p1, p2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(ILawq;)V

    .line 1506
    return-void
.end method

.method private a(JI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x2bc

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 2860
    if-ne p3, v4, :cond_1

    .line 2878
    :cond_0
    :goto_0
    return-void

    .line 2861
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v1, v0, p3

    .line 2862
    iget-object v0, v1, Lawq;->a:[I

    if-eqz v0, :cond_2

    iget-object v0, v1, Lawq;->a:[I

    array-length v0, v0

    .line 2864
    :goto_1
    iget-boolean v2, v1, Lawq;->d:Z

    if-eqz v2, :cond_4

    if-le v0, v3, :cond_4

    .line 2865
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    .line 2866
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    add-long/2addr v2, v5

    cmp-long v0, p1, v2

    if-gez v0, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->B:I

    if-ne p3, v0, :cond_3

    .line 2868
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lawq;->a:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    goto :goto_0

    .line 2862
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2871
    :cond_3
    iput v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    goto :goto_0

    .line 2875
    :cond_4
    iget-wide v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    add-long/2addr v0, v5

    cmp-long v0, p1, v0

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->B:I

    if-eq p3, v0, :cond_0

    .line 2876
    :cond_5
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k()V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2708
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-eq v0, v5, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lawq;->a(I)I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_3

    .line 2711
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazc;

    if-nez v0, :cond_1

    .line 2712
    new-instance v0, Lazc;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:F

    const/16 v4, 0x64

    invoke-direct {v0, v1, v4}, Lazc;-><init>(FI)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazc;

    .line 2714
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 2715
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazc;

    invoke-virtual {v0}, Lazc;->b()V

    .line 2716
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:Z

    .line 2717
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n:Z

    .line 2718
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:Z

    .line 2720
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n:Z

    if-eqz v0, :cond_3

    .line 2721
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lazc;

    invoke-virtual {v0, p1}, Lazc;->a(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2722
    if-ne v1, v5, :cond_4

    .line 2762
    :cond_3
    :goto_0
    return-void

    .line 2723
    :cond_4
    if-eq v1, v6, :cond_5

    if-ne v1, v7, :cond_c

    .line 2724
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2725
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2726
    invoke-direct {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(I)V

    .line 2727
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l()V

    .line 2728
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    if-eqz v0, :cond_6

    .line 2729
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->i()Z

    .line 2730
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:Z

    .line 2731
    sput-boolean v3, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    .line 2732
    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    .line 2734
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    if-eqz v0, :cond_8

    .line 2735
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2736
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:Z

    if-eqz v0, :cond_7

    .line 2737
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:Z

    .line 2738
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->k()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2739
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->d()V

    .line 2741
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    if-ne v1, v6, :cond_9

    const v1, 0xf170

    :goto_1
    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lauq;->a(I[IZII)V

    .line 2742
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:Z

    if-eqz v0, :cond_8

    .line 2743
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fy:I

    .line 2744
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:Z

    .line 2756
    :cond_8
    :goto_2
    iput-boolean v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    goto :goto_0

    .line 2741
    :cond_9
    const v1, 0xf171

    goto :goto_1

    .line 2747
    :cond_a
    if-ne v1, v6, :cond_b

    .line 2748
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0}, Lauq;->h()Z

    .line 2750
    :goto_3
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:Z

    if-eqz v0, :cond_8

    .line 2751
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->fx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->fx:I

    .line 2752
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:Z

    goto :goto_2

    .line 2749
    :cond_b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0}, Lauq;->g()Z

    goto :goto_3

    .line 2758
    :cond_c
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n:Z

    goto/16 :goto_0
.end method

.method private a(Lawq;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1391
    if-nez p1, :cond_0

    .line 1395
    :goto_0
    return-void

    .line 1392
    :cond_0
    iget v1, p1, Lawq;->a:I

    .line 1393
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lauq;->a(I[IZII)V

    .line 1394
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v1}, Lauq;->j(I)V

    goto :goto_0
.end method

.method private a(Lawq;Lawo;Landroid/graphics/Paint;Landroid/graphics/Canvas;IILandroid/graphics/Rect;)V
    .locals 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 996
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    add-int v1, v1, p5

    iget v2, p2, Lawo;->b:I

    sub-int/2addr v1, v2

    div-int/lit8 v11, v1, 0x2

    .line 997
    move-object/from16 v0, p7

    iget v1, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    add-int v1, v1, p6

    iget v2, p2, Lawo;->c:I

    sub-int/2addr v1, v2

    div-int/lit8 v12, v1, 0x2

    .line 999
    int-to-float v1, v11

    int-to-float v2, v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1001
    iget v1, p2, Lawo;->a:I

    if-nez v1, :cond_2

    const/4 v1, 0x1

    move v10, v1

    .line 1002
    :goto_0
    iget-object v1, p1, Lawq;->b:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Lawo;->a:Z

    if-eqz v1, :cond_0

    .line 1003
    invoke-static {p1}, Lawx;->a(Lawq;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lawq;->b:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1004
    :goto_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v1, :cond_5

    .line 1005
    iget-object v4, p2, Lawo;->a:Lawv;

    iget-object v5, p2, Lawo;->a:Lawt;

    if-eqz v10, :cond_4

    iget v1, p2, Lawo;->d:I

    int-to-float v6, v1

    :goto_2
    iget v1, p2, Lawo;->e:I

    int-to-float v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Ljava/lang/String;Lawv;Lawt;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1012
    :cond_0
    :goto_3
    iget-object v1, p1, Lawq;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    iget-boolean v1, p2, Lawo;->b:Z

    if-eqz v1, :cond_1

    .line 1013
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v1, :cond_8

    .line 1014
    iget-object v1, p1, Lawq;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lawo;->b:Lawv;

    iget-object v5, p2, Lawo;->b:Lawt;

    if-eqz v10, :cond_6

    iget v1, p2, Lawo;->f:I

    int-to-float v6, v1

    :goto_4
    if-eqz v10, :cond_7

    iget v1, p2, Lawo;->g:I

    int-to-long v1, v1

    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v7}, Lawx;->a()D

    move-result-wide v7

    iget v9, p2, Lawo;->c:I

    int-to-double v9, v9

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    sub-long/2addr v1, v7

    long-to-float v7, v1

    :goto_5
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Ljava/lang/String;Lawv;Lawt;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    .line 1024
    :cond_1
    :goto_6
    neg-int v1, v11

    int-to-float v1, v1

    neg-int v2, v12

    int-to-float v2, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1025
    return-void

    .line 1001
    :cond_2
    const/4 v1, 0x0

    move v10, v1

    goto :goto_0

    .line 1003
    :cond_3
    iget-object v1, p1, Lawq;->b:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1005
    :cond_4
    iget v1, p2, Lawo;->d:I

    int-to-long v1, v1

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v6}, Lawx;->b()D

    move-result-wide v6

    iget v8, p2, Lawo;->b:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-float v6, v1

    goto :goto_2

    .line 1009
    :cond_5
    iget-object v4, p2, Lawo;->a:Lawv;

    iget-object v5, p2, Lawo;->a:Lawt;

    iget v1, p2, Lawo;->d:I

    int-to-float v6, v1

    iget v1, p2, Lawo;->e:I

    int-to-float v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Ljava/lang/String;Lawv;Lawt;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1014
    :cond_6
    iget v1, p2, Lawo;->f:I

    int-to-long v1, v1

    iget-object v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v6}, Lawx;->c()D

    move-result-wide v6

    iget v8, p2, Lawo;->b:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    add-long/2addr v1, v6

    long-to-float v6, v1

    goto :goto_4

    :cond_7
    iget v1, p2, Lawo;->g:I

    int-to-float v7, v1

    goto :goto_5

    .line 1019
    :cond_8
    iget-object v1, p1, Lawq;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lawo;->b:Lawv;

    iget-object v5, p2, Lawo;->b:Lawt;

    iget v1, p2, Lawo;->f:I

    int-to-float v6, v1

    iget v1, p2, Lawo;->g:I

    int-to-float v7, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Ljava/lang/String;Lawv;Lawt;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_6
.end method

.method private final a(Lawq;Ljava/lang/String;Lawv;Lawt;FFLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 959
    iget-boolean v2, p3, Lawv;->a:Z

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 962
    iget-boolean v2, p1, Lawq;->a:Z

    if-eqz v2, :cond_2

    .line 963
    iget v2, p3, Lawv;->c:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 964
    iget v2, p4, Lawt;->d:F

    iget v3, p4, Lawt;->e:F

    iget v4, p4, Lawt;->f:F

    iget v5, p4, Lawt;->b:I

    invoke-static {v5}, Lawh;->a(I)I

    move-result v5

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 970
    :goto_0
    iget-boolean v2, p1, Lawq;->c:Z

    if-eqz v2, :cond_0

    .line 971
    const/16 v2, 0x40

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 972
    :cond_0
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v2, :cond_3

    .line 973
    iget v2, p3, Lawv;->a:I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v3}, Lawx;->r()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 976
    :goto_1
    sget-boolean v2, Laox;->b:Z

    if-eqz v2, :cond_1

    .line 977
    iget-object v2, p3, Lawv;->a:Landroid/graphics/Typeface;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 978
    :cond_1
    iget-object v2, p3, Lawv;->a:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 980
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    add-float v3, p6, v2

    .line 981
    const/4 v2, 0x1

    .line 982
    :goto_2
    move-object/from16 v0, p7

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-double v4, v4

    iget v6, p1, Lawq;->b:I

    int-to-double v6, v6

    const-wide v8, 0x3fe999999999999aL

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 983
    iget v4, p3, Lawv;->a:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 984
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 966
    :cond_2
    iget v2, p3, Lawv;->b:I

    invoke-static {v2}, Lawh;->a(I)I

    move-result v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 967
    iget v2, p4, Lawt;->a:F

    iget v3, p4, Lawt;->b:F

    iget v4, p4, Lawt;->c:F

    iget v5, p4, Lawt;->a:I

    invoke-static {v5}, Lawh;->a(I)I

    move-result v5

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 975
    :cond_3
    iget v2, p3, Lawv;->a:I

    int-to-float v2, v2

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 986
    :cond_4
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-virtual {v0, p2, p5, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 989
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 990
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 991
    const/4 v2, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 992
    return-void
.end method

.method private a(Lawx;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 930
    if-nez p1, :cond_1

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    .line 932
    if-eqz v2, :cond_0

    .line 933
    array-length v3, v2

    move v1, v0

    .line 935
    :goto_1
    if-ge v0, v3, :cond_2

    .line 936
    aget-object v4, v2, v0

    .line 937
    iget v5, v4, Lawq;->b:I

    iget v6, v4, Lawq;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v4, v4, Lawq;->d:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 935
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 939
    :cond_2
    if-ltz v1, :cond_0

    if-eqz v3, :cond_0

    .line 940
    int-to-float v0, v1

    const v1, 0x3fb33333

    mul-float/2addr v0, v1

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:I

    .line 941
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:I

    goto :goto_0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;IIIJII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct/range {p0 .. p7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJII)V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 2903
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2046
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 2062
    :cond_0
    :goto_0
    return v3

    .line 2050
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:Z

    .line 2051
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    .line 2052
    iget-object v1, v0, Lawq;->a:Lawq;

    if-eqz v1, :cond_0

    .line 2053
    iget-object v1, v0, Lawq;->a:Lawq;

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    .line 2054
    iget-object v1, v0, Lawq;->a:Lawq;

    iget-object v1, v1, Lawq;->b:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v0, Lawq;->a:Lawq;

    iget-object v1, v1, Lawq;->c:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    iget-object v1, v0, Lawq;->a:Lawq;

    iget-object v1, v1, Lawq;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 2058
    :cond_2
    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v2, v0, Lawq;->a:Lawq;

    invoke-direct {p0, v1, v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(ILawq;)V

    .line 2060
    :cond_3
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v0, v0, Lawq;->a:Lawq;

    invoke-virtual {v0, v3}, Lawq;->a(I)I

    move-result v0

    invoke-interface {v1, v0}, Lauq;->i(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;Z)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 2314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v9, v0, v1

    .line 2315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v1

    sub-int v8, v0, v1

    .line 2316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2317
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 2318
    const/4 v1, 0x0

    invoke-direct {p0, v9, v8, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(II[I)I

    move-result v1

    .line 2319
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:Z

    .line 2332
    if-eqz v0, :cond_0

    .line 2333
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;)V

    .line 2334
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    .line 2336
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lawq;->c:Z

    if-eqz v2, :cond_1

    .line 2337
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()V

    .line 2338
    const/4 v0, 0x1

    .line 2681
    :goto_0
    return v0

    .line 2341
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Z

    .line 2343
    packed-switch v0, :pswitch_data_0

    .line 2679
    :cond_2
    :goto_1
    iput v9, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:I

    .line 2680
    iput v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:I

    .line 2681
    const/4 v0, 0x1

    goto :goto_0

    .line 2345
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:J

    .line 2346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Z

    .line 2347
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    .line 2348
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:Z

    .line 2349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->q:Z

    .line 2350
    iput v9, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:I

    .line 2351
    iput v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n:I

    .line 2352
    iput v9, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->p:I

    .line 2353
    iput v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->q:I

    .line 2354
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:J

    .line 2355
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    .line 2356
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:I

    .line 2357
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    .line 2358
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    .line 2359
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:J

    .line 2360
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:J

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:J

    .line 2361
    invoke-direct {p0, v6, v7, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(JI)V

    .line 2362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    .line 2363
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;)V

    .line 2365
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0}, Lauq;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2366
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v9, v8}, Lauq;->a(II)V

    .line 2368
    :cond_3
    if-ltz v1, :cond_9

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v0, v0

    if-ge v1, v0, :cond_9

    .line 2369
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    const/4 v0, -0x1

    if-eq v1, v0, :cond_a

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v0, v0, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lawq;->a(I)I

    move-result v0

    :goto_2
    invoke-interface {v2, v0}, Lauq;->h(I)V

    .line 2373
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v0, v0, v1

    .line 2375
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget v3, v0, Lawq;->a:I

    invoke-virtual {v2, v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->g(I)V

    .line 2377
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    .line 2378
    invoke-virtual {v0}, Lawq;->a()V

    .line 2379
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)V

    .line 2380
    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->f()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v2

    invoke-static {v2}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2382
    iget v2, v0, Lawq;->a:I

    const/16 v3, 0x32

    if-lt v2, v3, :cond_4

    iget v2, v0, Lawq;->a:I

    const/16 v3, 0x39

    if-le v2, v3, :cond_5

    :cond_4
    iget v2, v0, Lawq;->a:I

    const/16 v3, 0x61

    if-lt v2, v3, :cond_7

    iget v2, v0, Lawq;->a:I

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_7

    .line 2386
    :cond_5
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Z

    .line 2387
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    .line 2389
    iget-object v2, v0, Lawq;->a:Laws;

    sget-object v3, Laws;->a:Laws;

    if-eq v2, v3, :cond_6

    .line 2391
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v2

    iget v3, v2, Lamo;->an:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lamo;->an:I

    .line 2393
    :cond_6
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:Z

    if-eqz v2, :cond_b

    iget v2, v0, Lawq;->a:I

    const/16 v3, 0x61

    if-lt v2, v3, :cond_b

    iget v2, v0, Lawq;->a:I

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_b

    .line 2394
    invoke-static {}, Laux;->a()Laux;

    move-result-object v2

    iget v3, v0, Lawq;->a:I

    iget v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:I

    sub-int/2addr v4, v8

    invoke-virtual {v2, v3, v9, v4}, Laux;->a(III)Lava;

    move-result-object v2

    .line 2398
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    iget v4, v2, Lava;->a:I

    iget v2, v2, Lava;->b:I

    invoke-direct {p0, v3, v4, v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;II)V

    .line 2415
    :cond_7
    :goto_3
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:Z

    if-eqz v2, :cond_c

    .line 2416
    iget-boolean v2, v0, Lawq;->i:Z

    if-eqz v2, :cond_8

    .line 2417
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d(I)V

    .line 2424
    :cond_8
    :goto_4
    iget-object v2, v0, Lawq;->a:Lawq;

    if-eq v0, v2, :cond_d

    .line 2425
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2426
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2442
    :cond_9
    :goto_5
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    goto/16 :goto_1

    .line 2369
    :cond_a
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 2402
    :cond_b
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;II)V

    goto :goto_3

    .line 2419
    :cond_c
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:Z

    if-eqz v2, :cond_8

    iget v2, v0, Lawq;->a:I

    invoke-static {v2}, Lmy;->a(I)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-boolean v2, v0, Lawq;->i:Z

    if-eqz v2, :cond_8

    .line 2421
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d(I)V

    goto :goto_4

    .line 2427
    :cond_d
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lawq;->f:Z

    if-eqz v2, :cond_9

    .line 2428
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lawq;->a(I)I

    move-result v2

    const/4 v3, -0x5

    if-ne v2, v3, :cond_e

    .line 2429
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2430
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2431
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 2433
    :cond_e
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    .line 2434
    iget v2, v0, Lawq;->a:F

    float-to-int v2, v2

    iget v0, v0, Lawq;->b:F

    float-to-int v3, v0

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJII)V

    .line 2436
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2437
    const/4 v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2438
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    .line 2447
    :pswitch_1
    const/4 v0, 0x0

    .line 2448
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 2449
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    .line 2450
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:J

    sub-long v2, v6, v2

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    .line 2451
    const/4 v2, -0x1

    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:I

    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    .line 2508
    :cond_f
    :goto_6
    if-nez v0, :cond_10

    .line 2510
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2512
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->s()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    .line 2513
    const/4 v0, -0x1

    if-eq v1, v0, :cond_10

    .line 2520
    :cond_10
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->s()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:Z

    if-eqz v0, :cond_2

    .line 2528
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2529
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    .line 2530
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n:Z

    .line 2531
    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2532
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    :goto_7
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    .line 2534
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawq;->a(I)I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_11

    .line 2537
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    invoke-direct {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(ILawq;)V

    .line 2539
    :cond_11
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:I

    .line 2540
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aw:I

    goto/16 :goto_1

    .line 2453
    :cond_12
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ne v1, v2, :cond_13

    .line 2454
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:J

    sub-long v4, v6, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    .line 2455
    const/4 v0, 0x1

    .line 2456
    const/4 v2, -0x1

    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    goto/16 :goto_6

    .line 2457
    :cond_13
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ltz v2, :cond_f

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v3, v3

    if-ge v2, v3, :cond_f

    .line 2459
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->s()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    const/4 v0, -0x1

    if-eq v1, v0, :cond_16

    .line 2461
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_14

    .line 2462
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k()V

    .line 2463
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:I

    .line 2464
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->p:I

    .line 2465
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->q:I

    .line 2466
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    add-long/2addr v2, v6

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:J

    .line 2469
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lawq;->a(ZZ)V

    .line 2470
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)V

    .line 2472
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lawq;->a()V

    .line 2473
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)V

    .line 2474
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    .line 2475
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    .line 2478
    :cond_14
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2479
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 2480
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->dismiss()V

    .line 2505
    :cond_15
    :goto_8
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 2482
    :cond_16
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->s()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_15

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:Z

    if-eqz v0, :cond_15

    .line 2485
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    if-nez v0, :cond_15

    .line 2486
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v2

    iget v0, v0, Lawq;->a:F

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v2, v2, v3

    iget v2, v2, Lawq;->b:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v3, v0

    .line 2487
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v2

    iget v0, v0, Lawq;->b:F

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v2, v2, v4

    iget v2, v2, Lawq;->c:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v4, v0

    .line 2489
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    .line 2490
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v2, v2, v5

    iget v2, v2, Lawq;->l:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_17

    .line 2491
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v2, v2, v5

    iget-object v7, v2, Lawq;->d:[Lawq;

    move-object v2, p0

    move v5, v9

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIII[Lawq;)I

    move-result v2

    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    .line 2495
    :cond_17
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_18

    .line 2496
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    invoke-direct {p0, v0, v9, v8}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(III)V

    goto :goto_8

    .line 2499
    :cond_18
    if-nez v0, :cond_15

    .line 2500
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(I)V

    goto :goto_8

    .line 2532
    :cond_19
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lawq;->d:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    aget-object v0, v0, v1

    goto/16 :goto_7

    .line 2541
    :cond_1a
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawq;->a(I)I

    move-result v0

    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    .line 2543
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    :goto_9
    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    .line 2545
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:I

    .line 2546
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->aw:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->aw:I

    goto/16 :goto_1

    .line 2543
    :cond_1b
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lawq;->d:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:I

    aget-object v0, v0, v1

    goto :goto_9

    .line 2554
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:J

    .line 2555
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2556
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2557
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ne v1, v0, :cond_20

    .line 2558
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:J

    sub-long v4, v6, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    .line 2573
    :goto_a
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_27

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_27

    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:Z

    if-nez v0, :cond_27

    .line 2578
    iget v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->p:I

    .line 2579
    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->q:I

    .line 2581
    :goto_b
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ne v0, v1, :cond_21

    .line 2582
    invoke-direct {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(I)V

    .line 2614
    :goto_c
    const/4 v0, 0x0

    .line 2615
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ltz v2, :cond_1c

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lawq;->a:Z

    if-eqz v2, :cond_1c

    .line 2617
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lawq;->a(Z)V

    .line 2618
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)V

    .line 2619
    const/4 v0, 0x1

    .line 2623
    :cond_1c
    sget-boolean v2, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Z

    if-eqz v2, :cond_22

    .line 2625
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Lawq;)V

    .line 2629
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    .line 2667
    :cond_1d
    :goto_d
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ne v1, v2, :cond_1e

    if-nez v0, :cond_1f

    .line 2668
    :cond_1e
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)V

    .line 2669
    :cond_1f
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    move v8, v5

    move v9, v4

    .line 2670
    goto/16 :goto_1

    .line 2560
    :cond_20
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k()V

    .line 2561
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->o:I

    .line 2562
    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    add-long/2addr v2, v6

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:J

    .line 2566
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:J

    goto :goto_a

    .line 2584
    :cond_21
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(I)V

    goto :goto_c

    .line 2632
    :cond_22
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1d

    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->q:Z

    if-nez v2, :cond_1d

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    if-eqz v2, :cond_1d

    .line 2633
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ne v2, v1, :cond_26

    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:Z

    if-nez v2, :cond_26

    .line 2634
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ltz v2, :cond_25

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v3, v3

    if-ge v2, v3, :cond_25

    .line 2635
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v2, v2, v3

    .line 2636
    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    if-nez v3, :cond_24

    iget-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:Z

    if-eqz v3, :cond_24

    sget-object v3, Lcom/sohu/inputmethod/sogou/SogouIME;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v3

    invoke-static {v3}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, v2, Lawq;->a:I

    const/16 v8, 0x61

    if-lt v3, v8, :cond_24

    iget v3, v2, Lawq;->a:I

    const/16 v8, 0x7a

    if-gt v3, v8, :cond_24

    .line 2641
    invoke-static {}, Laux;->a()Laux;

    move-result-object v3

    iget v2, v2, Lawq;->a:I

    iget v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:I

    sub-int/2addr v8, v5

    invoke-virtual {v3, v2, v4, v8}, Laux;->a(III)Lava;

    move-result-object v2

    .line 2645
    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget v8, v2, Lava;->a:I

    iget v9, v2, Lava;->b:I

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJII)V

    .line 2662
    :cond_23
    :goto_e
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    goto/16 :goto_d

    .line 2648
    :cond_24
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    if-nez v2, :cond_23

    .line 2649
    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJII)V

    goto :goto_e

    .line 2654
    :cond_25
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    if-nez v2, :cond_23

    .line 2655
    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJII)V

    goto :goto_e

    .line 2659
    :cond_26
    iget-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m:Z

    if-nez v2, :cond_23

    .line 2660
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(Lawq;)V

    goto :goto_e

    .line 2673
    :pswitch_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()V

    goto/16 :goto_1

    :cond_27
    move v5, v8

    move v4, v9

    goto/16 :goto_b

    .line 2343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lawq;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1977
    invoke-virtual {p1}, Lawq;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lawq;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1978
    iget-object v1, p1, Lawq;->a:[Lawq;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lawq;->a:[Lawq;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lawq;->a:[Lawq;

    aget-object v1, v1, v0

    iget v1, v1, Lawq;->a:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1981
    const/4 v0, 0x1

    .line 1983
    :cond_0
    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i()Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:Z

    return p1
.end method

.method public static synthetic a(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)[Lawq;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    return-object v0
.end method

.method private b(Landroid/view/MotionEvent;I)F
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2161
    :try_start_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Ljava/lang/reflect/Method;

    .line 2162
    if-eqz v0, :cond_0

    .line 2163
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2174
    :goto_0
    return v0

    .line 2171
    :catch_0
    move-exception v0

    .line 2174
    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0

    .line 2169
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2167
    :catch_2
    move-exception v0

    goto :goto_1

    .line 2165
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    return v0
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    return p1
.end method

.method private b(ILawq;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1509
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->b()V

    .line 1520
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v0, p1

    .line 1522
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v3, v2, Lawq;->a:Laxn;

    invoke-virtual {v0, v3}, Lapn;->a(Laxn;)V

    .line 1523
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0, v1}, Lapn;->a(Z)V

    .line 1524
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1525
    if-eqz v0, :cond_2

    .line 1526
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v3, v0}, Lapn;->a(Landroid/graphics/drawable/Drawable;)V

    .line 1544
    :cond_0
    :goto_0
    iget-object v0, v2, Lawq;->b:Lawo;

    iget v0, v0, Lawo;->h:I

    if-nez v0, :cond_5

    const/high16 v0, -0x8000

    .line 1545
    :goto_1
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v3, v0}, Lapn;->a(I)I

    move-result v0

    .line 1546
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget v4, v2, Lawq;->b:I

    iget v5, v2, Lawq;->c:I

    invoke-virtual {v3, v4, v5}, Lapn;->a(II)V

    .line 1547
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v3, v0}, Lapn;->a(I)I

    .line 1549
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getLocationOnScreen([I)V

    .line 1550
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:[I

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    aget v3, v3, v1

    int-to-float v3, v3

    iget v4, v2, Lawq;->a:F

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v4}, Lapn;->getWidth()I

    move-result v4

    iget v5, v2, Lawq;->b:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v1

    .line 1551
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:[I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:[I

    aget v1, v1, v6

    int-to-float v1, v1

    iget v3, v2, Lawq;->b:F

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v3}, Lapn;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, v2, Lawq;->a:Laxn;

    iget v3, v3, Laxn;->a:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v3}, Lawx;->q()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v6

    .line 1555
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p2, v2, :cond_1

    .line 1556
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v1, v2, Lawq;->a:Laxn;

    iget v1, v1, Laxn;->f:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lapn;->a(J)V

    .line 1558
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1559
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v1, v2, Lawq;->a:Laxn;

    iget v1, v1, Laxn;->e:I

    int-to-long v1, v1

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:[I

    invoke-virtual {v0, v1, v2, v3}, Lapn;->a(J[I)V

    .line 1563
    :goto_2
    return-void

    .line 1528
    :cond_2
    iget-object v0, p2, Lawq;->b:Lawo;

    iget-object v0, v0, Lawo;->a:Lawv;

    if-eqz v0, :cond_3

    .line 1529
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v3, p2, Lawq;->b:Lawo;

    iget-object v3, v3, Lawo;->a:Lawv;

    invoke-virtual {v0, v3}, Lapn;->a(Lawv;)V

    .line 1530
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v3, p2, Lawq;->b:Lawo;

    iget-object v3, v3, Lawo;->a:Lawt;

    invoke-virtual {v0, v3}, Lapn;->a(Lawt;)V

    .line 1535
    :goto_3
    invoke-direct {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1536
    if-eqz v0, :cond_4

    .line 1537
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lapn;->a(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1532
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v3, v2, Lawq;->b:Lawo;

    iget-object v3, v3, Lawo;->a:Lawv;

    invoke-virtual {v0, v3}, Lapn;->a(Lawv;)V

    .line 1533
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    iget-object v3, v2, Lawq;->b:Lawo;

    iget-object v3, v3, Lawo;->a:Lawt;

    invoke-virtual {v0, v3}, Lapn;->a(Lawt;)V

    goto :goto_3

    .line 1539
    :cond_4
    invoke-virtual {p2}, Lawq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1540
    if-eqz v0, :cond_0

    .line 1541
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v3, v0}, Lapn;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 1544
    goto/16 :goto_1

    .line 1561
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:[I

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v4}, Lapn;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v5}, Lapn;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lapn;->a(J[III)V

    goto :goto_2
.end method

.method private b(Lawq;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1398
    if-nez p1, :cond_0

    .line 1417
    :goto_0
    return-void

    .line 1401
    :cond_0
    iget-object v0, p1, Lawq;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, p1, Lawq;->d:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lauq;->a(Ljava/lang/CharSequence;)V

    .line 1403
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v2}, Lauq;->j(I)V

    .line 1415
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k()V

    .line 1416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:Z

    goto :goto_0

    .line 1404
    :cond_1
    iget-object v0, p1, Lawq;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1405
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ae:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ae:I

    .line 1406
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, p1, Lawq;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lauq;->b(Ljava/lang/CharSequence;)V

    .line 1411
    :goto_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v2}, Lauq;->j(I)V

    goto :goto_1

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, p1, Lawq;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lauq;->b(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1413
    :cond_3
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawq;

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->a(Lawq;)V

    goto :goto_1
.end method

.method private b(Z)V
    .locals 20
    .parameter

    .prologue
    .line 1079
    const/4 v2, 0x0

    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    if-eqz v3, :cond_2

    .line 1081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lawk;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1086
    :goto_0
    if-nez v2, :cond_0

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lawk;->b(II)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lawk;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1089
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    .line 1092
    :cond_0
    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Canvas;

    if-nez v3, :cond_3

    .line 1268
    :cond_1
    :goto_1
    return-void

    .line 1083
    :cond_2
    new-instance v3, Lawk;

    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lawk;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    .line 1084
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    const-string v4, "KeyboardView"

    invoke-virtual {v3, v4}, Lawk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1094
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Canvas;

    .line 1095
    invoke-virtual {v6, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1097
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v2, :cond_1

    .line 1101
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Paint;

    .line 1103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Landroid/graphics/Rect;

    .line 1104
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Rect;

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v12

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v13

    .line 1107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    .line 1108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    .line 1112
    const/16 v2, 0xff

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1118
    const/4 v2, 0x0

    .line 1119
    if-eqz v15, :cond_11

    invoke-virtual {v6, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1128
    iget v4, v15, Lawq;->a:F

    int-to-float v7, v12

    add-float/2addr v4, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v4, v7

    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_11

    iget v4, v15, Lawq;->b:F

    int-to-float v7, v13

    add-float/2addr v4, v7

    const/high16 v7, 0x3f80

    sub-float/2addr v4, v7

    iget v7, v3, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_11

    iget v4, v15, Lawq;->a:F

    iget v7, v15, Lawq;->b:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    int-to-float v7, v12

    add-float/2addr v4, v7

    const/high16 v7, 0x3f80

    add-float/2addr v4, v7

    iget v7, v3, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_11

    iget v4, v15, Lawq;->b:F

    iget v7, v15, Lawq;->c:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    int-to-float v7, v13

    add-float/2addr v4, v7

    const/high16 v7, 0x3f80

    add-float/2addr v4, v7

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v3, v4, v3

    if-ltz v3, :cond_11

    .line 1132
    const/4 v2, 0x1

    move v10, v2

    .line 1136
    :goto_2
    array-length v0, v14

    move/from16 v16, v0

    .line 1137
    const/4 v2, 0x0

    move v11, v2

    :goto_3
    move/from16 v0, v16

    if-ge v11, v0, :cond_10

    .line 1138
    aget-object v3, v14, v11

    .line 1139
    if-eqz v10, :cond_4

    if-eq v15, v3, :cond_4

    .line 1137
    :goto_4
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_3

    .line 1143
    :cond_4
    iget v2, v3, Lawq;->a:F

    int-to-float v4, v12

    add-float/2addr v2, v4

    iget v4, v3, Lawq;->b:F

    int-to-float v7, v13

    add-float/2addr v4, v7

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    iget-boolean v2, v2, Lawx;->b:Z

    if-nez v2, :cond_d

    iget-object v2, v3, Lawq;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    iget-object v2, v3, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_d

    iget v2, v3, Lawq;->a:I

    invoke-static {v2}, Lmy;->a(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v2}, Lawx;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v3, Lawq;->a:Laws;

    sget-object v4, Laws;->a:Laws;

    if-eq v2, v4, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v2}, Lawx;->b()Z

    move-result v2

    if-nez v2, :cond_d

    iget-object v2, v3, Lawq;->a:Laws;

    sget-object v4, Laws;->a:Laws;

    if-eq v2, v4, :cond_d

    .line 1152
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v2}, Lawx;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1153
    iget-object v2, v3, Lawq;->e:Landroid/graphics/drawable/Drawable;

    .line 1165
    :goto_5
    if-eqz v2, :cond_7

    .line 1166
    invoke-virtual {v3}, Lawq;->a()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1167
    const/4 v4, 0x0

    const/4 v7, 0x0

    iget v8, v3, Lawq;->b:I

    iget v0, v3, Lawq;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v4, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1168
    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1169
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    :cond_7
    :goto_6
    invoke-virtual {v3}, Lawq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1195
    if-eqz v7, :cond_f

    invoke-virtual {v3}, Lawq;->e()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1196
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 1197
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1198
    sget-boolean v8, Laox;->c:Z

    if-eqz v8, :cond_8

    .line 1199
    sget v8, Laox;->c:F

    .line 1200
    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 1201
    int-to-float v2, v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 1203
    :cond_8
    iget v8, v3, Lawq;->b:I

    iget v0, v9, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    add-int v8, v8, v17

    iget v0, v9, Landroid/graphics/Rect;->right:I

    move/from16 v17, v0

    sub-int v8, v8, v17

    sub-int/2addr v8, v4

    div-int/lit8 v8, v8, 0x2

    .line 1204
    iget v0, v3, Lawq;->c:I

    move/from16 v17, v0

    iget v0, v9, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    add-int v17, v17, v18

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    sub-int v17, v17, v2

    div-int/lit8 v17, v17, 0x2

    .line 1205
    int-to-float v0, v8

    move/from16 v18, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1206
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1208
    invoke-static {v7}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1210
    instance-of v2, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_9

    move-object v2, v4

    .line 1211
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1212
    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1215
    :cond_9
    neg-int v2, v8

    int-to-float v2, v2

    move/from16 v0, v17

    neg-int v4, v0

    int-to-float v4, v4

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1238
    :cond_a
    :goto_7
    iget v2, v3, Lawq;->a:F

    neg-float v2, v2

    int-to-float v4, v12

    sub-float/2addr v2, v4

    iget v3, v3, Lawq;->b:F

    neg-float v3, v3

    int-to-float v4, v13

    sub-float/2addr v3, v4

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 1156
    :cond_b
    :try_start_0
    iget-object v2, v3, Lawq;->a:Laws;

    invoke-virtual {v2}, Laws;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lawq;->a:Laws;

    invoke-virtual {v4}, Laws;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1159
    iget-object v4, v3, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1160
    :catch_0
    move-exception v2

    .line 1161
    iget-object v2, v3, Lawq;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_c

    iget-object v2, v3, Lawq;->d:Landroid/graphics/drawable/Drawable;

    .line 1162
    :goto_8
    invoke-virtual {v3}, Lawq;->a()[I

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_5

    .line 1161
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_8

    .line 1174
    :cond_d
    iget-object v2, v3, Lawq;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    iget-object v2, v3, Lawq;->d:Landroid/graphics/drawable/Drawable;

    .line 1175
    :goto_9
    if-eqz v2, :cond_7

    .line 1178
    invoke-virtual {v3}, Lawq;->a()[I

    move-result-object v4

    .line 1179
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1180
    const/4 v4, 0x0

    const/4 v7, 0x0

    iget v8, v3, Lawq;->b:I

    iget v0, v3, Lawq;->c:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v2, v4, v7, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1181
    invoke-static {v2}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1185
    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_6

    .line 1174
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_9

    .line 1216
    :cond_f
    iget-object v2, v3, Lawq;->b:Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    .line 1217
    iget-object v4, v3, Lawq;->a:Lawo;

    iget v7, v3, Lawq;->b:I

    iget v8, v3, Lawq;->c:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Lawo;Landroid/graphics/Paint;Landroid/graphics/Canvas;IILandroid/graphics/Rect;)V

    goto :goto_7

    .line 1240
    :cond_10
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    .line 1263
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    if-eqz v2, :cond_1

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sogou/SogouIME;->Z()V

    goto/16 :goto_1

    :cond_11
    move v10, v2

    goto/16 :goto_2
.end method

.method private b(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 2090
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2091
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v9, v1

    .line 2092
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v10, v1

    .line 2095
    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v8

    .line 2136
    :cond_1
    :goto_1
    iput v9, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:I

    .line 2137
    iput v10, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:I

    .line 2138
    return v4

    .line 2098
    :pswitch_0
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:Z

    .line 2099
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->u:Z

    move v4, v8

    .line 2100
    goto :goto_1

    .line 2103
    :pswitch_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:I

    sub-int/2addr v0, v9

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:I

    sub-int/2addr v1, v9

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:I

    sub-int/2addr v1, v10

    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:I

    sub-int/2addr v2, v10

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 2104
    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:I

    if-le v0, v1, :cond_2

    .line 2106
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:Z

    if-nez v0, :cond_1

    .line 2107
    iput-boolean v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:Z

    .line 2109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:I

    int-to-float v5, v5

    iget v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l:I

    int-to-float v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2112
    invoke-super {p0, v0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2113
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_1

    .line 2116
    :cond_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2122
    :pswitch_2
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:Z

    if-eqz v0, :cond_0

    .line 2125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    int-to-float v5, v9

    int-to-float v6, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move v4, v8

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2128
    invoke-super {p0, v0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2129
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 2130
    iput-boolean v8, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:Z

    goto :goto_0

    .line 2095
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic b(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:Z

    return v0
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)I
    .locals 1
    .parameter

    .prologue
    .line 57
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->u:I

    return v0
.end method

.method private c(I)V
    .locals 4
    .parameter

    .prologue
    .line 1494
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    long-to-int v0, v0

    .line 1496
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lapn;->a(J)V

    .line 1497
    return-void

    .line 1494
    :cond_0
    iget-wide v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:J

    iget-wide v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v2, p1

    iget-object v2, v2, Lawq;->a:Laxn;

    iget v2, v2, Laxn;->f:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private c(Lawq;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1421
    if-nez p1, :cond_0

    .line 1440
    :goto_0
    return-void

    .line 1422
    :cond_0
    iget-object v0, p1, Lawq;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, p1, Lawq;->d:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lauq;->a(Ljava/lang/CharSequence;)V

    .line 1424
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v2}, Lauq;->j(I)V

    .line 1438
    :goto_1
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k()V

    .line 1439
    iput-boolean v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:Z

    goto :goto_0

    .line 1425
    :cond_1
    iget-object v0, p1, Lawq;->c:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1426
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lamo;->a(Landroid/content/Context;)Lamo;

    move-result-object v0

    iget v1, v0, Lamo;->ae:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lamo;->ae:I

    .line 1427
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1428
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, p1, Lawq;->c:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lauq;->b(Ljava/lang/CharSequence;)V

    .line 1432
    :goto_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v2}, Lauq;->j(I)V

    goto :goto_1

    .line 1431
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    iget-object v1, p1, Lawq;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lauq;->b(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1434
    :cond_3
    iget v1, p1, Lawq;->a:I

    .line 1435
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-interface/range {v0 .. v5}, Lauq;->a(I[IZII)V

    .line 1436
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, v1}, Lauq;->j(I)V

    goto :goto_1
.end method

.method public static synthetic c(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)Z
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:Z

    return v0
.end method

.method private d(I)V
    .locals 1
    .parameter

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:Z

    if-nez v0, :cond_0

    .line 1502
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v0, v0, p1

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(ILawq;)V

    goto :goto_0
.end method

.method private i()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2784
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    move v6, v7

    .line 2787
    :goto_0
    return v6

    .line 2785
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    aget-object v0, v0, v1

    .line 2786
    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget v2, v0, Lawq;->a:F

    float-to-int v2, v2

    iget v0, v0, Lawq;->b:F

    float-to-int v3, v0

    iget-wide v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    move-object v0, p0

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(IIIJZII)V

    goto :goto_0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 505
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lawq;->a:Z

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2}, Lawq;->a(ZZ)V

    .line 508
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->r:I

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)V

    .line 510
    :cond_0
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 513
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Laun;

    invoke-direct {v2, p0}, Laun;-><init>(Lcom/sohu/inputmethod/sogou/SogouKeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/view/GestureDetector;

    .line 587
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 588
    return-void
.end method

.method private n()V
    .locals 15

    .prologue
    .line 1641
    const/4 v0, 0x0

    .line 1642
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    if-eqz v1, :cond_2

    .line 1643
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawk;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1648
    :goto_0
    if-nez v0, :cond_0

    .line 1649
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lawk;->b(II)V

    .line 1650
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lawk;->a(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1651
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    :cond_0
    move-object v8, v0

    .line 1654
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_3

    .line 1950
    :cond_1
    :goto_1
    return-void

    .line 1645
    :cond_2
    new-instance v1, Lawk;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lawk;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    .line 1646
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    const-string v2, "KeyboardView"

    invoke-virtual {v1, v2}, Lawk;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_3
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Canvas;

    .line 1657
    invoke-virtual {v4, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1658
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1660
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v0, :cond_1

    .line 1662
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Paint;

    .line 1664
    iget-object v7, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Rect;

    .line 1665
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v9

    .line 1666
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v10

    .line 1668
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    .line 1669
    if-eqz v1, :cond_1

    .line 1673
    iget v0, v1, Lawq;->a:F

    int-to-float v2, v9

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v1, Lawq;->b:I

    add-int/2addr v0, v2

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    iget v2, v1, Lawq;->a:F

    int-to-float v5, v9

    add-float/2addr v2, v5

    float-to-int v2, v2

    sub-int v5, v0, v2

    .line 1677
    :goto_2
    iget v0, v1, Lawq;->b:F

    int-to-float v2, v10

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v1, Lawq;->c:I

    add-int/2addr v0, v2

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_6

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget v2, v1, Lawq;->b:F

    int-to-float v6, v10

    add-float/2addr v2, v6

    float-to-int v2, v2

    sub-int v6, v0, v2

    .line 1681
    :goto_3
    const/16 v0, 0xff

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1682
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Z

    if-eqz v0, :cond_e

    iget v0, v1, Lawq;->a:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_e

    iget v0, v1, Lawq;->a:I

    const/16 v2, -0x17

    if-eq v0, v2, :cond_e

    .line 1684
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iput-object v1, v0, Laup;->a:Lawq;

    .line 1685
    new-instance v11, Landroid/graphics/Rect;

    iget v0, v1, Lawq;->a:F

    int-to-float v2, v9

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v1, Lawq;->b:F

    int-to-float v12, v10

    add-float/2addr v2, v12

    float-to-int v2, v2

    iget v12, v1, Lawq;->a:F

    int-to-float v13, v9

    add-float/2addr v12, v13

    int-to-float v13, v5

    add-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v1, Lawq;->b:F

    int-to-float v14, v10

    add-float/2addr v13, v14

    int-to-float v14, v6

    add-float/2addr v13, v14

    float-to-int v13, v13

    invoke-direct {v11, v0, v2, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1687
    new-instance v12, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {v12, v0, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1689
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 1690
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Laup;->a:Landroid/graphics/Bitmap;

    .line 1691
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iput v5, v0, Laup;->a:I

    .line 1692
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iput v6, v0, Laup;->b:I

    .line 1694
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v2, v2, Laup;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1710
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v12, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1711
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v13}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1712
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, v8, v11, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1713
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    const/4 v2, 0x1

    iput-boolean v2, v0, Laup;->a:Z

    .line 1714
    iget v0, v1, Lawq;->a:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPhoneKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1717
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/util/SparseArray;

    iget v2, v1, Lawq;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1718
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_e

    .line 1721
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1722
    invoke-virtual {v4, v0, v12, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1724
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1725
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    goto/16 :goto_1

    .line 1673
    :cond_5
    iget v5, v1, Lawq;->b:I

    goto/16 :goto_2

    .line 1677
    :cond_6
    iget v6, v1, Lawq;->c:I

    goto/16 :goto_3

    .line 1696
    :cond_7
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v0, v0, Laup;->a:I

    if-gt v5, v0, :cond_8

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v0, v0, Laup;->b:I

    if-le v6, v0, :cond_4

    .line 1698
    :cond_8
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1699
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1700
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    const/4 v2, 0x0

    iput-object v2, v0, Laup;->a:Landroid/graphics/Bitmap;

    .line 1702
    :cond_9
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v0, v0, Laup;->a:I

    if-le v5, v0, :cond_a

    move v0, v5

    .line 1703
    :goto_5
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v2, v2, Laup;->b:I

    if-le v6, v2, :cond_b

    move v2, v6

    .line 1704
    :goto_6
    iget-object v13, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    sget-object v14, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v14}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    iput-object v14, v13, Laup;->a:Landroid/graphics/Bitmap;

    .line 1705
    iget-object v13, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iput v0, v13, Laup;->a:I

    .line 1706
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iput v2, v0, Laup;->b:I

    .line 1707
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v2, v2, Laup;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    .line 1702
    :cond_a
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v0, v0, Laup;->a:I

    goto :goto_5

    .line 1703
    :cond_b
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v2, v2, Laup;->b:I

    goto :goto_6

    .line 1731
    :cond_c
    iget v0, v1, Lawq;->a:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_d

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1733
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->b:Landroid/graphics/Bitmap;

    .line 1734
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_e

    .line 1737
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1738
    invoke-virtual {v4, v0, v12, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1740
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    goto/16 :goto_1

    .line 1747
    :cond_d
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPhoneKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1750
    iget v0, v1, Lawq;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1756
    if-eqz v0, :cond_e

    .line 1757
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v13, 0x32

    if-lt v2, v13, :cond_e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_e

    .line 1758
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v2, v2, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1759
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v5, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, v6, :cond_e

    .line 1762
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1763
    invoke-virtual {v4, v0, v12, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1765
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    goto/16 :goto_1

    .line 1778
    :cond_e
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-boolean v0, v0, Laup;->a:Z

    if-eqz v0, :cond_f

    iget v0, v1, Lawq;->a:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_f

    iget v0, v1, Lawq;->a:I

    const/16 v2, -0x17

    if-eq v0, v2, :cond_f

    .line 1781
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Lawq;

    if-ne v1, v0, :cond_f

    .line 1783
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Lawq;->a:F

    int-to-float v7, v9

    add-float/2addr v2, v7

    float-to-int v2, v2

    iget v7, v1, Lawq;->b:F

    int-to-float v8, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    iget v8, v1, Lawq;->a:F

    int-to-float v9, v9

    add-float/2addr v8, v9

    int-to-float v5, v5

    add-float/2addr v5, v8

    float-to-int v5, v5

    iget v1, v1, Lawq;->b:F

    int-to-float v6, v6

    add-float/2addr v1, v6

    int-to-float v6, v10

    add-float/2addr v1, v6

    float-to-int v1, v1

    invoke-direct {v0, v2, v7, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1786
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1787
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v1, v1, Laup;->a:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1789
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    const/4 v1, 0x0

    iput-boolean v1, v0, Laup;->a:Z

    .line 1790
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    const/4 v1, 0x0

    iput-object v1, v0, Laup;->a:Lawq;

    .line 1792
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    goto/16 :goto_1

    .line 1801
    :cond_f
    const/4 v0, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1802
    iget v0, v1, Lawq;->a:F

    int-to-float v2, v9

    add-float/2addr v0, v2

    iget v2, v1, Lawq;->b:F

    int-to-float v11, v10

    add-float/2addr v2, v11

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1804
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    iget-boolean v0, v0, Lawx;->b:Z

    if-nez v0, :cond_18

    iget-object v0, v1, Lawq;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget-object v0, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_18

    iget v0, v1, Lawq;->a:I

    invoke-static {v0}, Lmy;->a(I)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Lawq;->a:Laws;

    sget-object v2, Laws;->a:Laws;

    if-eq v0, v2, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->b()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, v1, Lawq;->a:Laws;

    sget-object v2, Laws;->a:Laws;

    if-eq v0, v2, :cond_18

    .line 1811
    :cond_11
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->b()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1812
    iget-object v0, v1, Lawq;->e:Landroid/graphics/drawable/Drawable;

    .line 1824
    :goto_7
    if-eqz v0, :cond_12

    .line 1825
    invoke-virtual {v1}, Lawq;->a()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1826
    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1827
    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1828
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1855
    :cond_12
    :goto_8
    invoke-virtual {v1}, Lawq;->a()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1859
    if-eqz v11, :cond_1a

    invoke-virtual {v1}, Lawq;->e()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 1861
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1862
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1863
    sget-boolean v3, Laox;->c:Z

    if-eqz v3, :cond_13

    .line 1864
    sget v3, Laox;->c:F

    .line 1865
    int-to-float v2, v2

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1866
    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 1868
    :cond_13
    iget v3, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    iget v12, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v12

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    .line 1869
    iget v12, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v6

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v12, v7

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    .line 1870
    int-to-float v12, v3

    int-to-float v13, v7

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1871
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1873
    invoke-static {v11}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1875
    instance-of v0, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_14

    move-object v0, v2

    .line 1876
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1880
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1884
    :cond_14
    neg-int v0, v3

    int-to-float v0, v0

    neg-int v2, v7

    int-to-float v2, v2

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1893
    :cond_15
    :goto_9
    iget v0, v1, Lawq;->a:F

    neg-float v0, v0

    int-to-float v2, v9

    sub-float/2addr v0, v2

    iget v2, v1, Lawq;->b:F

    neg-float v2, v2

    int-to-float v3, v10

    sub-float/2addr v2, v3

    invoke-virtual {v4, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1895
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    .line 1897
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1899
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Z

    if-eqz v0, :cond_1

    iget v0, v1, Lawq;->a:I

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 1901
    iget v0, v1, Lawq;->a:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPhoneKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1904
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/util/SparseArray;

    iget v2, v1, Lawq;->a:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1905
    if-nez v0, :cond_1

    .line 1907
    iget v0, v1, Lawq;->a:F

    int-to-float v2, v9

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, v1, Lawq;->b:F

    int-to-float v3, v10

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v8, v0, v2, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1908
    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v2, v2, Laup;->a:Landroid/util/SparseArray;

    iget v1, v1, Lawq;->a:I

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1815
    :cond_16
    :try_start_0
    iget-object v0, v1, Lawq;->a:Laws;

    invoke-virtual {v0}, Laws;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lawq;->a:Laws;

    invoke-virtual {v2}, Laws;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1818
    iget-object v2, v1, Lawq;->b:[Landroid/graphics/drawable/Drawable;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_7

    .line 1819
    :catch_0
    move-exception v0

    .line 1820
    iget-object v0, v1, Lawq;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_17

    iget-object v0, v1, Lawq;->d:Landroid/graphics/drawable/Drawable;

    .line 1821
    :goto_a
    invoke-virtual {v1}, Lawq;->a()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_7

    .line 1820
    :cond_17
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_a

    .line 1834
    :cond_18
    iget-object v0, v1, Lawq;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_19

    iget-object v0, v1, Lawq;->d:Landroid/graphics/drawable/Drawable;

    .line 1835
    :goto_b
    if-eqz v0, :cond_12

    .line 1841
    invoke-virtual {v1}, Lawq;->a()[I

    move-result-object v2

    .line 1842
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1843
    const/4 v2, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1844
    invoke-static {v0}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1848
    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    .line 1834
    :cond_19
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    goto :goto_b

    .line 1887
    :cond_1a
    iget-object v0, v1, Lawq;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    .line 1889
    iget-object v2, v1, Lawq;->a:Lawo;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;Lawo;Landroid/graphics/Paint;Landroid/graphics/Canvas;IILandroid/graphics/Rect;)V

    goto/16 :goto_9

    .line 1910
    :cond_1b
    iget v0, v1, Lawq;->a:I

    const/16 v2, 0x20

    if-ne v0, v2, :cond_1c

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isHandwritingIME(I)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1912
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1913
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget v2, v1, Lawq;->a:F

    int-to-float v3, v9

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v1, v1, Lawq;->b:F

    int-to-float v3, v10

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v8, v2, v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Laup;->b:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 1916
    :cond_1c
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->b()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPhoneKeyboard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/sogou/SogouIME;->a()I

    move-result v0

    invoke-static {v0}, Lcom/sohu/inputmethod/engine/IMEInterface;->isPinyinIME(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1919
    iget v0, v1, Lawq;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1925
    if-eqz v2, :cond_1

    .line 1926
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x39

    if-gt v0, v3, :cond_1

    .line 1927
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v0, v0, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1928
    if-nez v0, :cond_1

    .line 1930
    iget v0, v1, Lawq;->a:F

    int-to-float v3, v9

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget v1, v1, Lawq;->b:F

    int-to-float v3, v10

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {v8, v0, v1, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1931
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    iget-object v1, v1, Laup;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 1
    .parameter

    .prologue
    .line 2197
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method public a()Lawx;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b()V

    .line 358
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    if-nez v0, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1614
    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v0, v0, p1

    .line 1618
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)V

    goto :goto_0
.end method

.method public a(ILjava/lang/CharSequence;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1987
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->d()Lawq;

    move-result-object v3

    .line 1988
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    .line 2018
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:I

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_2

    iget-object v0, v3, Lawq;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v0, v3, Lawq;->b:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    iget-object v0, v3, Lawq;->b:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, v3, Lawq;->j:Z

    if-nez v0, :cond_0

    .line 1995
    :cond_3
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lawq;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1996
    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v5, v4

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v6, v4, v1

    .line 1997
    invoke-direct {p0, v6}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1998
    invoke-virtual {v6, v2}, Lawq;->a(I)I

    move-result v0

    .line 1999
    invoke-virtual {v6, p1}, Lawq;->a(I)V

    .line 2000
    invoke-virtual {v6, v2}, Lawq;->a(I)I

    move-result v7

    .line 2001
    if-eq v0, v7, :cond_6

    .line 2002
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, v6}, Lawx;->a(Lawq;)V

    .line 2003
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->a()Ljava/util/List;

    move-result-object v0

    .line 2004
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Lawq;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawq;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    .line 2005
    if-eqz p2, :cond_4

    .line 2006
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, v2, p2}, Lawx;->a(ILjava/lang/CharSequence;)V

    .line 2007
    :cond_4
    invoke-virtual {p0, v6}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)V

    .line 1996
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 2009
    :cond_6
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, v2, p2}, Lawx;->a(ILjava/lang/CharSequence;)V

    .line 2010
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)V

    goto :goto_2

    .line 2014
    :cond_7
    if-eqz v3, :cond_0

    .line 2015
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, v2, p2}, Lawx;->a(ILjava/lang/CharSequence;)V

    .line 2016
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 314
    new-instance v0, Lapn;

    const/high16 v1, -0x8000

    invoke-direct {v0, p1, p0, v1}, Lapn;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    .line 316
    iput-object p0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/view/View;

    .line 318
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Paint;

    .line 319
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 320
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 322
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Rect;

    .line 324
    const/high16 v0, 0x41f0

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v1}, Laox;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:F

    .line 326
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:F

    .line 327
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:F

    .line 328
    const/high16 v0, 0x4396

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->u:I

    .line 330
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k()V

    .line 331
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->m()V

    .line 333
    new-instance v0, Lawk;

    invoke-direct {v0, p1}, Lawk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    .line 334
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    const-string v1, "KeyboardView"

    invoke-virtual {v0, v1}, Lawk;->a(Ljava/lang/String;)V

    .line 336
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    .line 338
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    invoke-virtual {v0}, Laup;->b()V

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    invoke-virtual {v0}, Laup;->a()V

    .line 345
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    .line 346
    const-string v1, "getPointerCount"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Ljava/lang/reflect/Method;

    .line 347
    const-string v1, "getX"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Ljava/lang/reflect/Method;

    .line 348
    const-string v1, "getY"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_1
    return-void

    .line 341
    :cond_0
    new-instance v0, Laup;

    invoke-direct {v0}, Laup;-><init>()V

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    goto :goto_0

    .line 351
    :catch_0
    move-exception v0

    goto :goto_1

    .line 349
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1042
    sget-boolean v0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Z

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lcom/sohu/inputmethod/sogou/SogouIME;

    sget v1, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:I

    invoke-virtual {v0, v1}, Lcom/sohu/inputmethod/sogou/SogouIME;->f(I)V

    .line 1048
    :cond_0
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:Z

    if-eqz v0, :cond_4

    .line 1049
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    if-nez v0, :cond_1

    .line 1076
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    if-eqz v0, :cond_2

    .line 1054
    invoke-direct {p0, v2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Z)V

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {v0, p1}, Lawk;->b(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1059
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->invalidate()V

    .line 1073
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->A:Z

    goto :goto_0

    .line 1063
    :cond_4
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    if-eqz v0, :cond_5

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Z)V

    .line 1066
    :cond_5
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {v0, p1}, Lawk;->a(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1067
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->invalidate()V

    goto :goto_1
.end method

.method public a(Lawq;)V
    .locals 6
    .parameter

    .prologue
    .line 1623
    if-nez p1, :cond_0

    .line 1637
    :goto_0
    return-void

    .line 1624
    :cond_0
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Lawq;

    .line 1625
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    iget v1, p1, Lawq;->a:F

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Lawq;->b:F

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Lawq;->a:F

    iget v4, p1, Lawq;->b:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p1, Lawq;->b:F

    iget v5, p1, Lawq;->c:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1628
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Z)V

    .line 1633
    :goto_1
    iget v0, p1, Lawq;->a:F

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Lawq;->b:F

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Lawq;->a:F

    iget v3, p1, Lawq;->b:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Lawq;->b:F

    iget v4, p1, Lawq;->c:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->invalidate(IIII)V

    goto :goto_0

    .line 1631
    :cond_1
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->n()V

    goto :goto_1
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .parameter

    .prologue
    .line 2692
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l()V

    .line 2694
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(I)V

    .line 2695
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2696
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2697
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->y:Z

    .line 597
    return-void
.end method

.method public a(ZI)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1953
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:I

    if-ne p2, v0, :cond_1

    .line 1974
    :cond_0
    return-void

    .line 1956
    :cond_1
    iput p2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->h:I

    .line 1957
    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 1958
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lawq;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1959
    if-eqz p1, :cond_3

    invoke-direct {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1957
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1962
    :cond_3
    invoke-virtual {v5, v2}, Lawq;->a(I)I

    move-result v0

    .line 1963
    invoke-virtual {v5, p2}, Lawq;->a(I)V

    .line 1964
    invoke-virtual {v5, v2}, Lawq;->a(I)I

    move-result v6

    .line 1965
    if-eq v0, v6, :cond_2

    .line 1966
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, v5}, Lawx;->a(Lawq;)V

    .line 1967
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->a()Ljava/util/List;

    move-result-object v0

    .line 1968
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lawq;

    invoke-interface {v0, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawq;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    .line 1969
    iget v0, v5, Lawq;->a:I

    const/16 v6, -0x1d

    if-eq v0, v6, :cond_2

    iget v0, v5, Lawq;->a:I

    const/16 v6, 0x31

    if-eq v0, v6, :cond_2

    .line 1970
    invoke-virtual {p0, v5}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)V

    goto :goto_1
.end method

.method public a(ZIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2021
    invoke-virtual {p0, p1, p2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(ZI)V

    .line 2022
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    .line 2023
    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->A:Z

    return v0
.end method

.method public a(IZ)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 744
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, p1, p2}, Lawx;->b(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    .line 746
    const/4 v0, 0x1

    .line 748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 776
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, p1}, Lawx;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    .line 781
    const/4 v0, 0x1

    .line 784
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(I)I
    .locals 1
    .parameter

    .prologue
    .line 2202
    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    invoke-virtual {v0}, Laup;->c()V

    .line 461
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 5
    .parameter

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    if-nez v0, :cond_1

    .line 2027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInmultitap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Ljava/lang/String;)V

    .line 2036
    :cond_0
    return-void

    .line 2030
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2031
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lawq;->d()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2033
    invoke-virtual {v3, p1}, Lawq;->b(I)V

    .line 2030
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    return v0
.end method

.method public b(IZ)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 752
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v1, :cond_0

    .line 753
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v1, p1}, Lawx;->a(I)Lawq;

    move-result-object v1

    .line 754
    if-nez v1, :cond_1

    .line 759
    :cond_0
    :goto_0
    return v0

    .line 755
    :cond_1
    iput-boolean p2, v1, Lawq;->a:Z

    .line 756
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawq;)V

    .line 757
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    invoke-virtual {v0}, Laup;->b()V

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Laup;

    .line 468
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->c()Z

    move-result v0

    .line 797
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 683
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-nez v0, :cond_0

    .line 710
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 686
    if-eqz v1, :cond_1

    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 689
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move v2, v3

    .line 695
    :goto_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/content/Context;

    invoke-static {v0}, Lafp;->a(Landroid/content/Context;)Lafp;

    move-result-object v0

    invoke-virtual {v0}, Lafp;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 696
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    move v2, v3

    .line 702
    :goto_2
    if-eqz v2, :cond_4

    .line 703
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 709
    :cond_1
    :goto_3
    invoke-static {v1}, Lawh;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 692
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    move v2, v4

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 699
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    goto :goto_2

    .line 705
    :cond_4
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    goto :goto_3
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 1601
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1595
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    .line 1597
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->invalidate()V

    .line 1598
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 2791
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0}, Lauq;->m()Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2039
    invoke-virtual {p0, v0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(ZI)V

    .line 2040
    invoke-virtual {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(I)V

    .line 2041
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 2795
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0}, Lauq;->n()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 2685
    invoke-direct {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->l()V

    .line 2686
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c(I)V

    .line 2687
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2688
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2689
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 2803
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0}, Lauq;->o()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .prologue
    .line 2700
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->t:I

    .line 2701
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 2847
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2807
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c()V

    .line 2808
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    .line 2809
    invoke-virtual {p0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2810
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/Canvas;

    .line 2811
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->a()V

    .line 2812
    :cond_0
    iput-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    .line 2813
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    invoke-virtual {v0}, Lapn;->a()V

    .line 2814
    return-void
.end method

.method public j()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2817
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()V

    .line 2818
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f()V

    .line 2820
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 2821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    .line 2822
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2852
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->B:I

    .line 2853
    iput v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->C:I

    .line 2854
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:J

    .line 2855
    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:Z

    .line 2856
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2826
    invoke-super {p0}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->onDetachedFromWindow()V

    .line 2828
    return-void
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/high16 v3, 0x4000

    .line 903
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-nez v0, :cond_0

    .line 904
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->setMeasuredDimension(II)V

    .line 921
    :goto_0
    return-void

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 908
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 910
    :cond_1
    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v1}, Lawx;->f()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 911
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 912
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 913
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 914
    invoke-super {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->onMeasure(II)V

    .line 917
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 946
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sohu/inputmethod/sogou/VirtualViewGroup;->onSizeChanged(IIII)V

    .line 947
    if-ne p3, p1, :cond_1

    if-ne p4, p2, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->a()V

    .line 951
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter

    .prologue
    .line 2210
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;)I

    move-result v8

    .line 2212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 2213
    const/4 v2, 0x0

    .line 2214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 2216
    const/4 v4, 0x1

    if-le v8, v4, :cond_0

    .line 2217
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->u:Z

    .line 2219
    :cond_0
    iget-boolean v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->u:Z

    if-eqz v4, :cond_1

    .line 2221
    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 2222
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Landroid/view/MotionEvent;)Z

    .line 2228
    :cond_1
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(I)I

    move-result v9

    .line 2229
    invoke-virtual {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(I)I

    move-result v4

    .line 2231
    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:I

    if-eq v8, v5, :cond_8

    .line 2232
    const/4 v5, 0x1

    if-ne v8, v5, :cond_3

    .line 2233
    const/4 v0, 0x1

    if-ne v3, v0, :cond_d

    .line 2234
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 2235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    .line 2236
    const/4 v1, -0x1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    move v1, v8

    .line 2308
    :goto_1
    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->v:I

    .line 2310
    :goto_2
    return v0

    .line 2224
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->u:Z

    goto :goto_0

    .line 2239
    :cond_3
    const/4 v3, 0x5

    if-ne v4, v3, :cond_d

    .line 2240
    iget v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2241
    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:F

    float-to-int v3, v3

    iget v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2242
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(II[I)I

    move-result v2

    .line 2243
    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2244
    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Landroid/view/MotionEvent;I)F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2245
    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(II[I)I

    move-result v3

    .line 2246
    iget-boolean v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    if-eqz v4, :cond_4

    if-eq v2, v3, :cond_7

    .line 2249
    :cond_4
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    if-ltz v2, :cond_6

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    if-ltz v3, :cond_6

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    iget-object v4, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    array-length v4, v4

    if-ge v3, v4, :cond_6

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lawq;->a(I)I

    move-result v3

    const/16 v4, -0x19

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    aget-object v2, v3, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lawq;->a(I)I

    move-result v2

    const/16 v3, -0x17

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lawq;->a(I)I

    move-result v2

    const/16 v3, -0x19

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:I

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lawq;->a(I)I

    move-result v2

    const/16 v3, -0x17

    if-ne v2, v3, :cond_6

    .line 2255
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 2258
    :cond_6
    const/4 v4, 0x1

    iget v5, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:F

    iget v6, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2260
    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    .line 2261
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 2263
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    .line 2268
    :cond_7
    const/4 v4, 0x0

    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Landroid/view/MotionEvent;I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2270
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 2271
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2274
    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:F

    .line 2275
    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:F

    .line 2276
    iput v9, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    move v1, v8

    .line 2277
    goto/16 :goto_1

    .line 2280
    :cond_8
    const/4 v3, 0x1

    if-ne v8, v3, :cond_b

    .line 2282
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    if-eqz v0, :cond_a

    .line 2283
    const/4 v0, 0x1

    if-ne v4, v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    .line 2284
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    .line 2285
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 2288
    :cond_a
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 2290
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:F

    .line 2291
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:F

    .line 2292
    iput v9, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    move v1, v8

    goto/16 :goto_1

    .line 2294
    :cond_b
    const/4 v3, 0x6

    if-ne v4, v3, :cond_d

    .line 2295
    iget v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    if-ne v3, v9, :cond_c

    .line 2296
    const/4 v4, 0x1

    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-direct {p0, p1, v9}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Landroid/view/MotionEvent;I)F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v7

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2298
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Landroid/view/MotionEvent;Z)Z

    move-result v0

    .line 2299
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2300
    add-int/lit8 v1, v8, -0x1

    .line 2301
    goto/16 :goto_1

    .line 2302
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->s:Z

    .line 2303
    const/4 v0, -0x1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->w:I

    :cond_d
    move v0, v2

    move v1, v8

    goto/16 :goto_1
.end method

.method public setDianhuaEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 816
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->j:Z

    .line 817
    return-void
.end method

.method public setEnableSlideCursor(Z)V
    .locals 0
    .parameter

    .prologue
    .line 820
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->k:Z

    .line 821
    return-void
.end method

.method public setFontScale(F)V
    .locals 0
    .parameter

    .prologue
    .line 848
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->c:F

    .line 849
    return-void
.end method

.method public setIsQwerty(Z)V
    .locals 0
    .parameter

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:Z

    .line 828
    return-void
.end method

.method public setKeyboard(Lawx;IZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 621
    iput-boolean p3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:Z

    .line 622
    iget-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:Z

    if-eqz v0, :cond_0

    .line 623
    invoke-static {}, Laux;->a()Laux;

    move-result-object v0

    invoke-virtual {v0, p1}, Laux;->a(Lawx;)V

    .line 626
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-ne p1, v0, :cond_3

    .line 627
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(I)V

    .line 628
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    .line 676
    :cond_2
    :goto_0
    return-void

    .line 631
    :cond_3
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g()V

    .line 632
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    .line 637
    invoke-virtual {p1}, Lawx;->a()F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:F

    .line 638
    invoke-virtual {p1}, Lawx;->h()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d:I

    .line 639
    invoke-virtual {p1}, Lawx;->i()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->i:I

    .line 640
    invoke-virtual {p1}, Lawx;->b()F

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:F

    .line 641
    invoke-virtual {p1}, Lawx;->f()I

    move-result v0

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e:I

    .line 643
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->d()V

    .line 647
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    .line 648
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 649
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 652
    :cond_4
    invoke-virtual {p1}, Lawx;->g()I

    move-result v0

    div-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:I

    .line 653
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:I

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->x:I

    .line 656
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0}, Lawx;->a()Ljava/util/List;

    move-result-object v0

    .line 657
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lawq;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawq;

    iput-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:[Lawq;

    .line 659
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->requestLayout()V

    .line 660
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->c()V

    .line 661
    iget v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    if-eqz v0, :cond_5

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->z:Z

    .line 663
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lawk;->c(II)V

    .line 664
    invoke-direct {p0, v3}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(Z)V

    .line 665
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    iget v1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    iget-object v2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1, v2}, Lawk;->a(ILandroid/view/animation/Animation$AnimationListener;)V

    .line 666
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawk;

    invoke-virtual {v0}, Lawk;->b()V

    .line 667
    iput v3, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    .line 670
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->b(I)V

    .line 671
    invoke-virtual {p0}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->e()V

    .line 672
    invoke-direct {p0, p1}, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a(Lawx;)V

    .line 673
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    if-eqz v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    invoke-interface {v0, p1}, Lauq;->a(Lawx;)V

    goto/16 :goto_0
.end method

.method public setMultiTapEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lawx;

    invoke-virtual {v0, p1}, Lawx;->a(Z)V

    .line 855
    :cond_0
    return-void
.end method

.method public setOnKeyboardActionListener(Lauq;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lauq;

    .line 601
    return-void
.end method

.method public setPlatformAnimation(I)V
    .locals 0
    .parameter

    .prologue
    .line 679
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    .line 680
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 862
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:I

    .line 863
    iput p2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:I

    .line 864
    iget-object v0, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Lapn;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lapn;->a(J)V

    .line 865
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 858
    iput-object p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->a:Landroid/view/View;

    .line 859
    return-void
.end method

.method public setPreviewEnabled(ZZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 807
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->f:Z

    .line 808
    iput-boolean p2, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->g:Z

    .line 809
    return-void
.end method

.method public setProximityCorrectionEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 874
    iput-boolean p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->p:Z

    .line 875
    return-void
.end method

.method public setSwipeGravity(I)V
    .locals 0
    .parameter

    .prologue
    .line 361
    iput p1, p0, Lcom/sohu/inputmethod/sogou/SogouKeyboardView;->D:I

    .line 362
    return-void
.end method

.method public setVerticalCorrection(I)V
    .locals 0
    .parameter

    .prologue
    .line 845
    return-void
.end method
