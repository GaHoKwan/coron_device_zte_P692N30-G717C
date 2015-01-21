.class public interface abstract Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;
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
    name = "Doodle"
.end annotation


# static fields
.field public static final MARGIN_VERTICAL:F

.field public static final PAD:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;->MARGIN_VERTICAL:F

    .line 31
    sget-object v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;->RES:Landroid/content/res/Resources;

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lzte/com/cn/cloudnotepad/skitch/iface/SkitchConsts$Doodle;->PAD:F

    .line 27
    return-void
.end method
