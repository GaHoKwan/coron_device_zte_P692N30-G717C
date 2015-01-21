.class public final Lzte/com/cn/cloudnotepad/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final SlidingDrawer:[I = null

.field public static final SlidingDrawer_allowSingleTap:I = 0x4

.field public static final SlidingDrawer_animateOnClick:I = 0x5

.field public static final SlidingDrawer_bottomOffset:I = 0x2

.field public static final SlidingDrawer_content:I = 0x1

.field public static final SlidingDrawer_handle:I = 0x0

.field public static final SlidingDrawer_orientation:I = 0x6

.field public static final SlidingDrawer_topOffset:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1031
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lzte/com/cn/cloudnotepad/R$styleable;->SlidingDrawer:[I

    .line 1005
    return-void

    .line 1031
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
        0x4t 0x0t 0x1t 0x7ft
        0x5t 0x0t 0x1t 0x7ft
        0x6t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
