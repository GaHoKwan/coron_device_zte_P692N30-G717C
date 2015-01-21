.class Lcom/mediatek/ngin3d/j3m/RenderFlags;
.super Ljava/lang/Object;
.source "RenderFlags.java"


# instance fields
.field public final DEBUG:Lcom/mediatek/j3m/FlagMask;

.field public final RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

.field public final RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

.field public final VISIBLE:Lcom/mediatek/j3m/FlagMask;


# direct methods
.method public constructor <init>(Lcom/mediatek/j3m/J3m;)V
    .locals 3
    .parameter "j3m"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-interface {p1, v1, v2}, Lcom/mediatek/j3m/J3m;->createFlagMask(IZ)Lcom/mediatek/j3m/FlagMask;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/RenderFlags;->VISIBLE:Lcom/mediatek/j3m/FlagMask;

    .line 61
    invoke-interface {p1, v2, v1}, Lcom/mediatek/j3m/J3m;->createFlagMask(IZ)Lcom/mediatek/j3m/FlagMask;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_0:Lcom/mediatek/j3m/FlagMask;

    .line 62
    const/4 v0, 0x2

    invoke-interface {p1, v0, v1}, Lcom/mediatek/j3m/J3m;->createFlagMask(IZ)Lcom/mediatek/j3m/FlagMask;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/RenderFlags;->RENDER_LAYER_BIT_1:Lcom/mediatek/j3m/FlagMask;

    .line 65
    const/4 v0, 0x3

    invoke-interface {p1, v0, v1}, Lcom/mediatek/j3m/J3m;->createFlagMask(IZ)Lcom/mediatek/j3m/FlagMask;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/ngin3d/j3m/RenderFlags;->DEBUG:Lcom/mediatek/j3m/FlagMask;

    .line 66
    return-void
.end method
