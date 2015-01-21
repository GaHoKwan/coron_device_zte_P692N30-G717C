.class public Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;
.super Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
.source "PenEffectTrace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;
    }
.end annotation


# static fields
.field private static final sBlur:Landroid/graphics/BlurMaskFilter;

.field private static final sEmboss:Landroid/graphics/EmbossMaskFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 8
    new-instance v0, Landroid/graphics/EmbossMaskFilter;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 9
    const v2, 0x3ecccccd

    const/high16 v3, 0x40c0

    const/high16 v4, 0x4060

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/EmbossMaskFilter;-><init>([FFFF)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;->sEmboss:Landroid/graphics/EmbossMaskFilter;

    .line 11
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x4000

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;->sBlur:Landroid/graphics/BlurMaskFilter;

    .line 6
    return-void

    .line 8
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 19
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>()V

    .line 20
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->PENCIL:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    if-ne p1, v0, :cond_1

    .line 21
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;->sBlur:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 25
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;->MARKER:Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace$EffectType;

    if-ne p1, v0, :cond_0

    .line 23
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/PenEffectTrace;->sEmboss:Landroid/graphics/EmbossMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_0
.end method
