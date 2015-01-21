.class public Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;
.super Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;
.source "EraserTrace.java"


# static fields
.field private static final DEFAULT_PEN_WIDTH:F = 20.0f

.field private static final EraserMode:Landroid/graphics/PorterDuffXfermode; = null

.field private static final TAG:Ljava/lang/String; = "EraserTrace"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;->EraserMode:Landroid/graphics/PorterDuffXfermode;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/high16 v0, 0x41a0

    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;-><init>(F)V

    .line 15
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .parameter "width"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/skitch/trace/PenTrace;-><init>(F)V

    .line 20
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lzte/com/cn/cloudnotepad/skitch/trace/EraserTrace;->EraserMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 21
    const-string v0, "in EraserTrace()"

    invoke-static {p0, v0}, Lzte/com/cn/cloudnotepad/skitch/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    return-void
.end method
