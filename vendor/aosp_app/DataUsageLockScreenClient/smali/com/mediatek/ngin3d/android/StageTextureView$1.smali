.class Lcom/mediatek/ngin3d/android/StageTextureView$1;
.super Ljava/lang/Object;
.source "StageTextureView.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/android/StageTextureView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/android/StageTextureView;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/android/StageTextureView;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageTextureView$1;->this$0:Lcom/mediatek/ngin3d/android/StageTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestRender()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageTextureView$1;->this$0:Lcom/mediatek/ngin3d/android/StageTextureView;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/StageTextureView;->requestRender()V

    .line 209
    return-void
.end method
