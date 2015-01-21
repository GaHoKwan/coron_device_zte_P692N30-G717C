.class Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds$RectAnchorType;
.super Ljava/lang/Object;
.source "RectBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RectAnchorType"
.end annotation


# static fields
.field public static final BOTTOM_CENTER:I = 0x8

.field public static final LEFT_BOTTOM:I = 0x3

.field public static final LEFT_CENTER:I = 0x5

.field public static final LEFT_TOP:I = 0x1

.field public static final RIGHT_BOTTOM:I = 0x4

.field public static final RIGHT_CENTER:I = 0x6

.field public static final RIGHT_TOP:I = 0x2

.field public static final TOP_CENTER:I = 0x7

.field public static final UNKNOWN:I = -0x1


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;


# direct methods
.method private constructor <init>(Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds$RectAnchorType;->this$0:Lzte/com/cn/cloudnotepad/skitch/trace/RectBounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
