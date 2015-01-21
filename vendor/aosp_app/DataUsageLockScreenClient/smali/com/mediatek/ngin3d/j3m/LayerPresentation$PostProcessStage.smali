.class final Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;
.super Ljava/lang/Object;
.source "LayerPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ngin3d/j3m/LayerPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PostProcessStage"
.end annotation


# instance fields
.field public final appearance:Lcom/mediatek/j3m/Appearance;

.field public final texture:Lcom/mediatek/j3m/Texture2D;

.field final synthetic this$0:Lcom/mediatek/ngin3d/j3m/LayerPresentation;


# direct methods
.method public constructor <init>(Lcom/mediatek/ngin3d/j3m/LayerPresentation;Lcom/mediatek/j3m/Appearance;Lcom/mediatek/j3m/Texture2D;)V
    .locals 0
    .parameter
    .parameter "appearance"
    .parameter "texture"

    .prologue
    .line 422
    iput-object p1, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->this$0:Lcom/mediatek/ngin3d/j3m/LayerPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->appearance:Lcom/mediatek/j3m/Appearance;

    .line 424
    iput-object p3, p0, Lcom/mediatek/ngin3d/j3m/LayerPresentation$PostProcessStage;->texture:Lcom/mediatek/j3m/Texture2D;

    .line 425
    return-void
.end method
