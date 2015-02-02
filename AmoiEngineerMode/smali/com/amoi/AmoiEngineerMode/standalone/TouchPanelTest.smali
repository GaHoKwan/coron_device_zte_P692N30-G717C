.class public Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;
.super Landroid/app/Activity;
.source "TouchPanelTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;
    }
.end annotation


# static fields
.field private static final LCD_HEIGHT:I = 0x320

.field private static final LCD_WIDTH:I = 0x1e0


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    new-instance v0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;

    invoke-direct {v0, p0, p0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest$PaintView;-><init>(Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->setContentView(Landroid/view/View;)V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    .line 30
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 32
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 35
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    iget-object v0, p0, Lcom/amoi/AmoiEngineerMode/standalone/TouchPanelTest;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 37
    return-void
.end method
