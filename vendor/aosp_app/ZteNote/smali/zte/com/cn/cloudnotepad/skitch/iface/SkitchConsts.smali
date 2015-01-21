.class public interface abstract Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;
.super Ljava/lang/Object;
.source "SkitchConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;,
        Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;
    }
.end annotation


# static fields
.field public static final COLOR_COUNT:I = 0x6

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_DOODLE_ERASER_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_HANDWRITE_PAINT_WIDTH:F = 0.0f

.field public static final DEFAULT_PAINT_COLOR:I = -0x1000000

.field public static final DEFAULT_PAINT_WIDTH:F

.field public static final MAX_PAINT_WIDTH:F

.field public static final MIN_PAINT_WIDTH:F

.field public static final RES:Landroid/content/res/Resources;

.field public static final SLIDER_BG_H:F

.field public static final SLIDER_H:F

.field public static final SLIDER_L_PAD:F

.field public static final SLIDER_R_PAD:F

.field public static final SLIDER_TOP_PAD:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v2, 0x7f080009

    .line 11
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    .line 13
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->DEFAULT_PAINT_WIDTH:F

    .line 14
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->DEFAULT_HANDWRITE_PAINT_WIDTH:F

    .line 15
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->DEFAULT_DOODLE_ERASER_WIDTH:F

    .line 19
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MAX_PAINT_WIDTH:F

    .line 20
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->MIN_PAINT_WIDTH:F

    .line 21
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->SLIDER_BG_H:F

    .line 22
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->SLIDER_H:F

    .line 23
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->SLIDER_L_PAD:F

    .line 24
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->SLIDER_R_PAD:F

    .line 25
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->RES:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;->SLIDER_TOP_PAD:F

    .line 9
    return-void
.end method
