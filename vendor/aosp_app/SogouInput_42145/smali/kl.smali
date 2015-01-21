.class public final Lkl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I

.field private static final a:Ljava/lang/String;

.field private static a:Lkl;

.field private static a:Z


# instance fields
.field private a:Landroid/graphics/Rect;

.field private a:Landroid/hardware/Camera;

.field private a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

.field private final a:Lkj;

.field private final a:Lkk;

.field private final a:Lkn;

.field private b:Landroid/graphics/Rect;

.field private b:Z

.field private c:Landroid/graphics/Rect;

.field private c:Z

.field private final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lkl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lkl;->a:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lkl;->a:Z

    .line 56
    :try_start_0
    invoke-static {}, Lazh;->a()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 61
    :goto_0
    sput v0, Lkl;->a:I

    .line 62
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lkl;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    .line 113
    new-instance v0, Lkk;

    invoke-direct {v0, p1}, Lkk;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    iput-object v0, p0, Lkl;->a:Lkk;

    .line 125
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lkl;->d:Z

    .line 129
    new-instance v0, Lkn;

    iget-object v1, p0, Lkl;->a:Lkk;

    iget-boolean v2, p0, Lkl;->d:Z

    invoke-direct {v0, v1, v2}, Lkn;-><init>(Lkk;Z)V

    iput-object v0, p0, Lkl;->a:Lkn;

    .line 131
    new-instance v0, Lkj;

    invoke-direct {v0}, Lkj;-><init>()V

    iput-object v0, p0, Lkl;->a:Lkj;

    .line 132
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([BIILandroid/graphics/Rect;)Lkh;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    iget-object v0, p0, Lkl;->a:Lkk;

    invoke-virtual {v0}, Lkk;->a()I

    move-result v0

    .line 476
    iget-object v1, p0, Lkl;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Ljava/lang/String;

    move-result-object v1

    .line 477
    packed-switch v0, :pswitch_data_0

    .line 493
    const-string v0, "yuv420p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Lkh;

    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lkh;-><init>([BIIIIII)V

    .line 498
    :goto_0
    return-object v0

    .line 486
    :pswitch_0
    new-instance v0, Lkh;

    iget v4, p4, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lkh;-><init>([BIIIIII)V

    goto :goto_0

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static a()Lkl;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lkl;->a:Lkl;

    return-object v0
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lkl;->a:Lkl;

    .line 99
    return-void
.end method

.method public static a(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 92
    sget-object v0, Lkl;->a:Lkl;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lkl;

    invoke-direct {v0, p0}, Lkl;-><init>(Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;)V

    sput-object v0, Lkl;->a:Lkl;

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 303
    iget-object v0, p0, Lkl;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 305
    iget-object v0, p0, Lkl;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 307
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    .line 310
    :cond_0
    mul-int/lit8 v0, v1, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 311
    if-le v0, v1, :cond_1

    move v0, v1

    .line 314
    :cond_1
    mul-int/lit8 v2, v3, 0x3

    div-int/lit8 v2, v2, 0x4

    .line 316
    if-le v2, v3, :cond_2

    move v2, v3

    .line 319
    :cond_2
    if-lt v0, v2, :cond_3

    move v0, v2

    .line 320
    :cond_3
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 321
    sub-int v2, v3, v0

    div-int/lit8 v2, v2, 0x2

    .line 322
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v1, v0

    add-int/2addr v0, v2

    invoke-direct {v3, v1, v2, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lkl;->a:Landroid/graphics/Rect;

    .line 324
    iget-object v0, p0, Lkl;->a:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public a([BII)Lkh;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-virtual {p0}, Lkl;->b()Landroid/graphics/Rect;

    move-result-object v0

    .line 466
    invoke-direct {p0, p1, p2, p3, v0}, Lkl;->a([BIILandroid/graphics/Rect;)Lkh;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/hardware/Camera;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 196
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDisplayOrientation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_0

    .line 199
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/os/Handler;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkl;->c:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lkl;->a:Lkn;

    invoke-virtual {v0, p1, p2}, Lkn;->a(Landroid/os/Handler;I)V

    .line 265
    iget-boolean v0, p0, Lkl;->d:Z

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lkl;->a:Lkn;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lkl;->a:Lkn;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public a(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 145
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    .line 146
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 149
    :cond_0
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 151
    iget-boolean v0, p0, Lkl;->b:Z

    if-nez v0, :cond_1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkl;->b:Z

    .line 153
    iget-object v0, p0, Lkl;->a:Lkk;

    iget-object v1, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lkk;->a(Landroid/hardware/Camera;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lkl;->a:Lkk;

    iget-object v1, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lkk;->b(Landroid/hardware/Camera;)V

    .line 157
    :cond_2
    return-void
.end method

.method public a(Landroid/view/SurfaceHolder;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 162
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    .line 163
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 178
    :cond_0
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 181
    iget-boolean v0, p0, Lkl;->b:Z

    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkl;->b:Z

    .line 183
    iget-object v0, p0, Lkl;->a:Lkk;

    iget-object v1, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lkk;->a(Landroid/hardware/Camera;)V

    .line 185
    :cond_1
    invoke-static {}, Lazh;->a()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {p0, v0, p2}, Lkl;->a(Landroid/hardware/Camera;I)V

    .line 189
    :cond_2
    iget-object v0, p0, Lkl;->a:Lkk;

    iget-object v1, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lkk;->b(Landroid/hardware/Camera;)V

    .line 191
    :cond_3
    return-void
.end method

.method public b()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 379
    iget-object v0, p0, Lkl;->b:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 380
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lkl;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 381
    iget-object v1, p0, Lkl;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Landroid/graphics/Point;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lkl;->a:Lkk;

    invoke-virtual {v2}, Lkk;->b()Landroid/graphics/Point;

    move-result-object v2

    .line 384
    invoke-static {}, Lazh;->a()I

    move-result v3

    const/4 v4, 0x7

    if-gt v3, v4, :cond_2

    .line 385
    iget-object v3, p0, Lkl;->a:Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/dimensionalbarcode/CaptureActivity;->a()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 387
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 388
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 389
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 407
    :goto_0
    iput-object v0, p0, Lkl;->b:Landroid/graphics/Rect;

    .line 410
    :cond_0
    iget-object v0, p0, Lkl;->b:Landroid/graphics/Rect;

    return-object v0

    .line 391
    :cond_1
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 392
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 393
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 394
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 401
    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 402
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 403
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 404
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method public b([BII)Lkh;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-virtual {p0}, Lkl;->c()Landroid/graphics/Rect;

    move-result-object v0

    .line 471
    invoke-direct {p0, p1, p2, p3, v0}, Lkl;->a([BIILandroid/graphics/Rect;)Lkh;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 214
    invoke-static {}, Lkm;->a()V

    .line 215
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 216
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 217
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 218
    iput-object v1, p0, Lkl;->a:Landroid/hardware/Camera;

    .line 220
    :cond_0
    return-void
.end method

.method public b(Landroid/os/Handler;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 282
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkl;->c:Z

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lkl;->a:Lkj;

    invoke-virtual {v0, p1, p2}, Lkj;->a(Landroid/os/Handler;I)V

    .line 286
    :try_start_0
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    iget-object v1, p0, Lkl;->a:Lkj;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 415
    iget-object v0, p0, Lkl;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 416
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lkl;->a()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 417
    iget-object v1, p0, Lkl;->a:Lkk;

    invoke-virtual {v1}, Lkk;->a()Landroid/graphics/Point;

    move-result-object v1

    .line 418
    iget-object v2, p0, Lkl;->a:Lkk;

    invoke-virtual {v2}, Lkk;->b()Landroid/graphics/Point;

    move-result-object v2

    .line 420
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 421
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 422
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 423
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 425
    iput-object v0, p0, Lkl;->c:Landroid/graphics/Rect;

    .line 428
    :cond_0
    iget-object v0, p0, Lkl;->c:Landroid/graphics/Rect;

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkl;->c:Z

    if-nez v0, :cond_0

    .line 228
    :try_start_0
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkl;->c:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lkl;->c:Z

    if-eqz v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lkl;->d:Z

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lkl;->a:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 246
    iget-object v0, p0, Lkl;->a:Lkn;

    invoke-virtual {v0, v2, v1}, Lkn;->a(Landroid/os/Handler;I)V

    .line 247
    iget-object v0, p0, Lkl;->a:Lkj;

    invoke-virtual {v0, v2, v1}, Lkj;->a(Landroid/os/Handler;I)V

    .line 248
    iput-boolean v1, p0, Lkl;->c:Z

    .line 250
    :cond_1
    return-void
.end method
