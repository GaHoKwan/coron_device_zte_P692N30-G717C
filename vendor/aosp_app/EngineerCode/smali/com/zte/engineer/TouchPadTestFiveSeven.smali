.class public Lcom/zte/engineer/TouchPadTestFiveSeven;
.super Lcom/zte/engineer/GraphicsActivity;
.source "TouchPadTestFiveSeven.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;,
        Lcom/zte/engineer/TouchPadTestFiveSeven$MyPointView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.TouchPadTestFiveSeven"


# instance fields
.field Ishield:Z

.field bfirst:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintPoint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 24
    invoke-direct {p0}, Lcom/zte/engineer/GraphicsActivity;-><init>()V

    .line 26
    iput-boolean v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->bfirst:Z

    .line 29
    iput-boolean v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->Ishield:Z

    .line 248
    return-void
.end method

.method static synthetic access$000(Lcom/zte/engineer/TouchPadTestFiveSeven;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/zte/engineer/TouchPadTestFiveSeven;->getWidthAndHeight()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/engineer/TouchPadTestFiveSeven;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getWidthAndHeight()[I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 61
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 62
    .local v1, hAndW:[I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 63
    .local v0, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v2, v1, v5

    .line 65
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v2, v1, v6

    .line 67
    const-string v2, "Emode.TouchPadTestFiveSeven"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " screen width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   screen height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-object v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 567
    .local v0, code:I
    const-string v2, "Emode.TouchPadTestFiveSeven"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keycode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v2, 0x4

    if-ne v2, v0, :cond_0

    iget-boolean v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->Ishield:Z

    if-ne v2, v5, :cond_0

    .line 569
    const-string v2, "Emode.TouchPadTestFiveSeven"

    const-string v3, "Emode-List back keycode should be shield"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return v1

    .line 571
    :cond_0
    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    iget-boolean v2, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->Ishield:Z

    if-ne v2, v5, :cond_1

    .line 572
    const-string v2, "Emode.TouchPadTestFiveSeven"

    const-string v3, "Emode-List home keycode should be shield"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_1
    const-string v1, "Emode.TouchPadTestFiveSeven"

    const-string v2, "Emode-List keycode should not be shield"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v1, 0x400

    const/4 v2, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/zte/engineer/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 43
    new-instance v0, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;

    invoke-direct {v0, p0, p0}, Lcom/zte/engineer/TouchPadTestFiveSeven$MyLineView;-><init>(Lcom/zte/engineer/TouchPadTestFiveSeven;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/zte/engineer/TouchPadTestFiveSeven;->setContentView(Landroid/view/View;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaintPoint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    .line 51
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 53
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 56
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 57
    iget-object v0, p0, Lcom/zte/engineer/TouchPadTestFiveSeven;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/zte/engineer/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
