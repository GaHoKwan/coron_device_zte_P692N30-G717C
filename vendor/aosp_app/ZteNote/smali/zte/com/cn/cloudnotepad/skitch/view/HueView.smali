.class public Lzte/com/cn/cloudnotepad/skitch/view/HueView;
.super Landroid/view/View;
.source "HueView.java"


# static fields
.field private static final EDGE_COLOR:I = -0x878788


# instance fields
.field private edgePaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private horizontalShader:Landroid/graphics/Shader;

.field private hsv:[F

.field private hue:F

.field private verticalShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hue:F

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hsv:[F

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->edgePaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->fillPaint:Landroid/graphics/Paint;

    .line 36
    return-void
.end method


# virtual methods
.method public drawHue(Landroid/graphics/Canvas;I)V
    .locals 9
    .parameter "canvas"
    .parameter "len"

    .prologue
    const/4 v5, -0x1

    const/high16 v8, 0x3f80

    const/4 v1, 0x0

    .line 51
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    .line 52
    const/high16 v6, -0x100

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 51
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->verticalShader:Landroid/graphics/Shader;

    .line 54
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hsv:[F

    const/4 v2, 0x0

    iget v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hue:F

    aput v3, v0, v2

    .line 55
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hsv:[F

    const/4 v2, 0x1

    aput v8, v0, v2

    .line 56
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hsv:[F

    const/4 v2, 0x2

    aput v8, v0, v2

    .line 58
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 60
    .local v6, color:I
    new-instance v0, Landroid/graphics/LinearGradient;

    int-to-float v3, p2

    .line 61
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 60
    iput-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->horizontalShader:Landroid/graphics/Shader;

    .line 63
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->fillPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->verticalShader:Landroid/graphics/Shader;

    iget-object v4, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->horizontalShader:Landroid/graphics/Shader;

    .line 64
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->edgePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->edgePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->edgePaint:Landroid/graphics/Paint;

    const v2, -0x878788

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    int-to-float v3, p2

    int-to-float v4, p2

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->fillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    int-to-float v0, p2

    sub-float v3, v0, v8

    int-to-float v0, p2

    sub-float v4, v0, v8

    iget-object v5, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->edgePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 75
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->getWidth()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->drawHue(Landroid/graphics/Canvas;I)V

    .line 47
    return-void
.end method

.method final setHue(F)V
    .locals 0
    .parameter "h"

    .prologue
    .line 39
    iput p1, p0, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->hue:F

    .line 40
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/skitch/view/HueView;->invalidate()V

    .line 41
    return-void
.end method
