.class public Lcom/mediatek/ngin3d/Text;
.super Lcom/mediatek/ngin3d/Canvas2d;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ngin3d/Text$ShadowLayer;
    }
.end annotation


# static fields
.field public static final ELLIPSIZE_BY_3DOT:I = 0x2

.field public static final ELLIPSIZE_BY_FADEOUT:I = 0x1

.field static final PROP_TEXT:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Landroid/text/Layout$Alignment;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Color;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_COLOR:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Color;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_ELLIPSIZE_STYLE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_MAX_LINES:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_SHADOW_LAYER:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Lcom/mediatek/ngin3d/Text$ShadowLayer;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_SIZE_ADJUST_THRESHOLD:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final PROP_TEXT_TYPEFACE:Lcom/mediatek/ngin3d/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/ngin3d/Property",
            "<",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREEDOT:Ljava/lang/String; = "\u2026"


# instance fields
.field private mFadeOutPoint:F

.field private mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mTextBackgroundColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 159
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_max_lines"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_LINES:Lcom/mediatek/ngin3d/Property;

    .line 164
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_max_width"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    .line 169
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_single_line"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property;

    .line 174
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_size_alignment"

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property;

    .line 179
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_size_adjust_threshold"

    const v2, 0x3dcccccd

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE_ADJUST_THRESHOLD:Lcom/mediatek/ngin3d/Property;

    .line 184
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_size"

    const/high16 v2, 0x4200

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    .line 188
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_color"

    sget-object v2, Lcom/mediatek/ngin3d/Color;->WHITE:Lcom/mediatek/ngin3d/Color;

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 192
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_background_color"

    sget-object v2, Lcom/mediatek/ngin3d/Color;->TRANSPARENT:Lcom/mediatek/ngin3d/Color;

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    .line 196
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_typeface"

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_TYPEFACE:Lcom/mediatek/ngin3d/Property;

    .line 200
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_shadow_layer"

    const/4 v2, 0x0

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SHADOW_LAYER:Lcom/mediatek/ngin3d/Property;

    .line 204
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text"

    const-string v2, ""

    const/4 v3, 0x6

    new-array v3, v3, [Lcom/mediatek/ngin3d/Property;

    sget-object v4, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    aput-object v4, v3, v6

    sget-object v4, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_COLOR:Lcom/mediatek/ngin3d/Property;

    aput-object v4, v3, v7

    const/4 v4, 0x2

    sget-object v5, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_TYPEFACE:Lcom/mediatek/ngin3d/Property;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SHADOW_LAYER:Lcom/mediatek/ngin3d/Property;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    sget-object v5, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property;

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT:Lcom/mediatek/ngin3d/Property;

    .line 215
    new-instance v0, Lcom/mediatek/ngin3d/Property;

    const-string v1, "text_ellipsize_style"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v6, [Lcom/mediatek/ngin3d/Property;

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ngin3d/Property;-><init>(Ljava/lang/String;Ljava/lang/Object;[Lcom/mediatek/ngin3d/Property;)V

    sput-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ELLIPSIZE_STYLE:Lcom/mediatek/ngin3d/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/mediatek/ngin3d/Text;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mediatek/ngin3d/Text;-><init>(Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "text"
    .parameter "isYUp"

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/mediatek/ngin3d/Canvas2d;-><init>(Z)V

    .line 53
    iget-object v0, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 55
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/mediatek/ngin3d/Text;->mFadeOutPoint:F

    .line 80
    invoke-virtual {p0, p1}, Lcom/mediatek/ngin3d/Text;->setText(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    const-string v0, "ngin3d:textfadequad.mat"

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->setMaterial(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private autoAdjustFontSize()V
    .locals 9

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Text;->getText()Ljava/lang/String;

    move-result-object v5

    .line 537
    .local v5, text:Ljava/lang/String;
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v7}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 538
    .local v3, maxWidth:I
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE_ADJUST_THRESHOLD:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v7}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 539
    .local v0, adjustThreshold:F
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v7}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 543
    .local v1, fontSize:F
    :goto_0
    iget-object v7, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    const/high16 v8, 0x3f80

    sub-float v2, v1, v8

    .end local v1           #fontSize:F
    .local v2, fontSize:F
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 544
    iget-object v7, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 545
    .local v6, textWidth:F
    float-to-int v7, v6

    rem-int v4, v7, v3

    .line 546
    .local v4, offset:I
    int-to-float v7, v3

    cmpl-float v7, v6, v7

    if-lez v7, :cond_0

    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    cmpg-float v7, v7, v0

    if-ltz v7, :cond_1

    .line 547
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .end local v2           #fontSize:F
    .restart local v1       #fontSize:F
    goto :goto_0
.end method

.method private getEllipsizedText(Ljava/lang/String;F)Ljava/lang/String;
    .locals 6
    .parameter "text"
    .parameter "width"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 550
    iget-object v1, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v5, p2, v2}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 551
    .local v0, count:I
    sget-object v1, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ELLIPSIZE_STYLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v1}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 552
    int-to-float v1, v0

    div-float v1, v3, v1

    sub-float v1, v3, v1

    iput v1, p0, Lcom/mediatek/ngin3d/Text;->mFadeOutPoint:F

    .line 553
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 555
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u2026"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFixedLinesEllipsizedText(IILandroid/text/StaticLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "maxLines"
    .parameter "maxWidth"
    .parameter "layout"
    .parameter "text"

    .prologue
    const/4 v5, 0x0

    .line 134
    invoke-virtual {p3, p1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    .line 135
    .local v1, offset:I
    invoke-direct {p0, p1, p3, p4}, Lcom/mediatek/ngin3d/Text;->getLineString(ILandroid/text/StaticLayout;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, lineString:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, result:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    if-le v3, p2, :cond_0

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x2

    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    :goto_0
    return-object v2

    .line 142
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getLineString(ILandroid/text/StaticLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "line"
    .parameter "layout"
    .parameter "text"

    .prologue
    .line 148
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v0

    .line 149
    .local v0, offset1:I
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v1

    .line 150
    .local v1, offset2:I
    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected applyBatchValues()V
    .locals 15

    .prologue
    .line 88
    const/high16 v2, 0x3f80

    iput v2, p0, Lcom/mediatek/ngin3d/Text;->mFadeOutPoint:F

    .line 90
    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 91
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Text;->getText()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, text:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 93
    .local v3, maxWidth:I
    iget-object v2, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    const/high16 v6, 0x3f80

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 96
    .local v14, width:F
    if-nez v3, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    float-to-int v6, v14

    iget-object v7, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v7, v7

    iget-object v8, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/mediatek/ngin3d/Text;->mTextBackgroundColor:I

    invoke-interface {v2, v6, v7, v8}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->beginDraw(III)Landroid/graphics/Canvas;

    move-result-object v12

    .line 98
    .local v12, canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v6, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 129
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    iget v6, p0, Lcom/mediatek/ngin3d/Text;->mFadeOutPoint:F

    const/high16 v7, 0x3f80

    invoke-interface {v2, v6, v7}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->setFadeOutCoord(FF)V

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    invoke-interface {v2}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->endDraw()V

    .line 131
    return-void

    .line 100
    .end local v12           #canvas:Landroid/graphics/Canvas;
    :cond_0
    sget-object v2, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_LINES:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 101
    .local v13, maxLines:I
    invoke-direct {p0}, Lcom/mediatek/ngin3d/Text;->autoAdjustFontSize()V

    .line 102
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    sget-object v6, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v6}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 104
    .local v0, layout:Landroid/text/StaticLayout;
    int-to-float v2, v3

    cmpg-float v2, v14, v2

    if-gez v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    float-to-int v6, v14

    iget-object v7, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v7, v7

    iget-object v8, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/mediatek/ngin3d/Text;->mTextBackgroundColor:I

    invoke-interface {v2, v6, v7, v8}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->beginDraw(III)Landroid/graphics/Canvas;

    move-result-object v12

    .line 106
    .restart local v12       #canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v6, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 110
    .end local v12           #canvas:Landroid/graphics/Canvas;
    :cond_1
    sget-object v2, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    if-ne v13, v2, :cond_3

    .line 111
    :cond_2
    int-to-float v2, v3

    invoke-direct {p0, v1, v2}, Lcom/mediatek/ngin3d/Text;->getEllipsizedText(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v7, v7

    iget-object v8, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int/lit8 v7, v7, 0x1

    iget v8, p0, Lcom/mediatek/ngin3d/Text;->mTextBackgroundColor:I

    invoke-interface {v2, v6, v7, v8}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->beginDraw(III)Landroid/graphics/Canvas;

    move-result-object v12

    .line 113
    .restart local v12       #canvas:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v6, v6

    float-to-int v6, v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 115
    .end local v12           #canvas:Landroid/graphics/Canvas;
    :cond_3
    const/4 v2, 0x1

    if-le v13, v2, :cond_4

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-le v2, v13, :cond_4

    .line 116
    invoke-direct {p0, v13, v3, v0, v1}, Lcom/mediatek/ngin3d/Text;->getFixedLinesEllipsizedText(IILandroid/text/StaticLayout;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, result:Ljava/lang/String;
    new-instance v4, Landroid/text/StaticLayout;

    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    sget-object v2, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v2}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    move v7, v3

    invoke-direct/range {v4 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 120
    .local v4, updatedLayout:Landroid/text/StaticLayout;
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/text/Layout;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/mediatek/ngin3d/Text;->mTextBackgroundColor:I

    invoke-interface {v2, v6, v7, v8}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->beginDraw(III)Landroid/graphics/Canvas;

    move-result-object v12

    .line 121
    .restart local v12       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4, v12}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 124
    .end local v4           #updatedLayout:Landroid/text/StaticLayout;
    .end local v5           #result:Ljava/lang/String;
    .end local v12           #canvas:Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/Canvas2d;->getPresentation()Lcom/mediatek/ngin3d/presentation/Graphics2d;

    move-result-object v2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/mediatek/ngin3d/Text;->mTextBackgroundColor:I

    invoke-interface {v2, v6, v7, v8}, Lcom/mediatek/ngin3d/presentation/Graphics2d;->beginDraw(III)Landroid/graphics/Canvas;

    move-result-object v12

    .line 125
    .restart local v12       #canvas:Landroid/graphics/Canvas;
    invoke-virtual {v0, v12}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z
    .locals 11
    .parameter "property"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 224
    invoke-super {p0, p1, p2}, Lcom/mediatek/ngin3d/Canvas2d;->applyValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 281
    :goto_0
    return v5

    .line 228
    :cond_0
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 229
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto :goto_0

    .line 231
    :cond_1
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, p2

    .line 232
    check-cast v3, Ljava/lang/Float;

    .line 233
    .local v3, textSize:Ljava/lang/Float;
    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 234
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto :goto_0

    .line 236
    .end local v3           #textSize:Ljava/lang/Float;
    :cond_2
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v2, p2

    .line 237
    check-cast v2, Lcom/mediatek/ngin3d/Color;

    .line 238
    .local v2, textColor:Lcom/mediatek/ngin3d/Color;
    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Lcom/mediatek/ngin3d/Color;->getRgb()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto :goto_0

    .line 241
    .end local v2           #textColor:Lcom/mediatek/ngin3d/Color;
    :cond_3
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v1, p2

    .line 242
    check-cast v1, Lcom/mediatek/ngin3d/Color;

    .line 243
    .local v1, textBackgroundColor:Lcom/mediatek/ngin3d/Color;
    invoke-virtual {v1}, Lcom/mediatek/ngin3d/Color;->getRgb()I

    move-result v6

    iput v6, p0, Lcom/mediatek/ngin3d/Text;->mTextBackgroundColor:I

    .line 244
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto :goto_0

    .line 246
    .end local v1           #textBackgroundColor:Lcom/mediatek/ngin3d/Color;
    :cond_4
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_TYPEFACE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v4, p2

    .line 247
    check-cast v4, Landroid/graphics/Typeface;

    .line 248
    .local v4, tf:Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 249
    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/ngin3d/Text;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 250
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto :goto_0

    .line 252
    .end local v4           #tf:Landroid/graphics/Typeface;
    :cond_5
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SHADOW_LAYER:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v0, p2

    .line 253
    check-cast v0, Lcom/mediatek/ngin3d/Text$ShadowLayer;

    .line 254
    .local v0, shadowLayer:Lcom/mediatek/ngin3d/Text$ShadowLayer;
    if-nez v0, :cond_6

    .line 255
    iget-object v7, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v8, v8, v8, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 259
    :goto_1
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    .line 257
    :cond_6
    iget-object v6, p0, Lcom/mediatek/ngin3d/Canvas2d;->mPaint:Landroid/text/TextPaint;

    iget v7, v0, Lcom/mediatek/ngin3d/Text$ShadowLayer;->radius:F

    iget v8, v0, Lcom/mediatek/ngin3d/Text$ShadowLayer;->dx:F

    iget v9, v0, Lcom/mediatek/ngin3d/Text$ShadowLayer;->dy:F

    iget v10, v0, Lcom/mediatek/ngin3d/Text$ShadowLayer;->color:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 261
    .end local v0           #shadowLayer:Lcom/mediatek/ngin3d/Text$ShadowLayer;
    :cond_7
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_LINES:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 262
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    .line 264
    :cond_8
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 265
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    .line 267
    :cond_9
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 268
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    .line 270
    :cond_a
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE_ADJUST_THRESHOLD:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 271
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    .line 273
    :cond_b
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 274
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    .line 276
    :cond_c
    sget-object v7, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ELLIPSIZE_STYLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p1, v7}, Lcom/mediatek/ngin3d/Property;->sameInstance(Lcom/mediatek/ngin3d/Property;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 277
    invoke-virtual {p0, v5}, Lcom/mediatek/ngin3d/Base;->enableApplyFlags(I)V

    goto/16 :goto_0

    :cond_d
    move v5, v6

    .line 281
    goto/16 :goto_0
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 380
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public getBackgroundColor()Lcom/mediatek/ngin3d/Color;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Color;

    return-object v0
.end method

.method public final getEllipsizeStyle()I
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ELLIPSIZE_STYLE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .prologue
    .line 329
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_LINES:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final getMaxWidth()I
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getShadowLayer()Lcom/mediatek/ngin3d/Text$ShadowLayer;
    .locals 1

    .prologue
    .line 532
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SHADOW_LAYER:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Text$ShadowLayer;

    return-object v0
.end method

.method public final getSingleLine()Z
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getSizeAdjustThreshold()F
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE_ADJUST_THRESHOLD:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()Lcom/mediatek/ngin3d/Color;
    .locals 1

    .prologue
    .line 431
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/ngin3d/Color;

    return-object v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 463
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_TYPEFACE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0}, Lcom/mediatek/ngin3d/Actor;->getValue(Lcom/mediatek/ngin3d/Property;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method

.method public final setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .parameter "alignment"

    .prologue
    .line 372
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ALIGNMENT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method public setBackgroundColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 439
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_BACKGROUND_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public final setEllipsizeStyle(I)V
    .locals 2
    .parameter "style"

    .prologue
    .line 305
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_ELLIPSIZE_STYLE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 306
    return-void
.end method

.method public final setMaxLines(I)V
    .locals 2
    .parameter "lines"

    .prologue
    .line 321
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_LINES:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method public final setMaxWidth(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 289
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_MAX_WIDTH:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 290
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 2
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 523
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SHADOW_LAYER:Lcom/mediatek/ngin3d/Property;

    new-instance v1, Lcom/mediatek/ngin3d/Text$ShadowLayer;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/mediatek/ngin3d/Text$ShadowLayer;-><init>(FFFI)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 524
    return-void
.end method

.method public final setSingleLine(Z)V
    .locals 2
    .parameter "single"

    .prologue
    .line 337
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SINGLE_LINE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public final setSizeAdjustThreshold(F)V
    .locals 2
    .parameter "threshold"

    .prologue
    .line 353
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 354
    :cond_0
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "The threshold of size adjust should be 0 ~ 1"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_1
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE_ADJUST_THRESHOLD:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 357
    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 396
    if-nez p1, :cond_0

    .line 397
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    const-string v1, "The text cannot be null"

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public setTextColor(Lcom/mediatek/ngin3d/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 423
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_COLOR:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .parameter "textSize"

    .prologue
    .line 415
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_SIZE:Lcom/mediatek/ngin3d/Property;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 455
    sget-object v0, Lcom/mediatek/ngin3d/Text;->PROP_TEXT_TYPEFACE:Lcom/mediatek/ngin3d/Property;

    invoke-virtual {p0, v0, p1}, Lcom/mediatek/ngin3d/Actor;->setValue(Lcom/mediatek/ngin3d/Property;Ljava/lang/Object;)Z

    .line 456
    return-void
.end method
