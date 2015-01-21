.class public interface abstract Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;
.super Ljava/lang/Object;
.source "SkitchConsts.java"

# interfaces
.implements Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandWrite"
.end annotation


# static fields
.field public static final BLANK_CHARACTER:Landroid/graphics/Bitmap; = null

#the value of this static final field might be set in the static constructor
.field public static final BLANK_WIDTH:I = 0x0

.field public static final GLFAST:I = 0x1

.field public static final GLNOTEX:I = 0x0

.field public static final GLSLOW:I = 0x2

#the value of this static final field might be set in the static constructor
.field public static final HEADER_W:F = 0.0f

#the value of this static final field might be set in the static constructor
.field public static final LINE_COLOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LINE_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LINE_STROKE:I = 0x0

.field public static final MODE_GL:I = 0x1

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_TIME_THRESHOLD:J = 0x3cL

.field public static final PADDING_BOTTOM:I

.field public static final PADDING_TOP:I

.field public static final RETURN_CHARACTER:Landroid/graphics/Bitmap;

.field public static final SPACING:I

.field public static final WORD_HEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 37
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v0

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/NoteApp;->getHandwriteWordHeight()I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->WORD_HEIGHT:I

    .line 38
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RES:Landroid/content/res/Resources;

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->BLANK_WIDTH:I

    .line 39
    sget v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->BLANK_WIDTH:I

    sget v1, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->WORD_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->BLANK_CHARACTER:Landroid/graphics/Bitmap;

    .line 43
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->HEADER_W:F

    .line 44
    const-string v0, "#CCCBCC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->LINE_COLOR:I

    .line 46
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->LINE_STROKE:I

    .line 50
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->PADDING_BOTTOM:I

    .line 51
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RES:Landroid/content/res/Resources;

    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->PADDING_TOP:I

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RETURN_CHARACTER:Landroid/graphics/Bitmap;

    .line 53
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->SPACING:I

    .line 54
    sget v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->PADDING_TOP:I

    sget v1, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->WORD_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->PADDING_BOTTOM:I

    add-int/2addr v0, v1

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$HandWrite;->LINE_HEIGHT:I

    .line 34
    return-void
.end method
