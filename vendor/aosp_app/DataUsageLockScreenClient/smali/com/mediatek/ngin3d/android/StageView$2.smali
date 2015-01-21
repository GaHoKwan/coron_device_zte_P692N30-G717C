.class Lcom/mediatek/ngin3d/android/StageView$2;
.super Ljava/lang/Object;
.source "StageView.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/android/StageView;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/android/StageView;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/android/StageView;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageView$2;->this$0:Lcom/mediatek/ngin3d/android/StageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestRender()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView$2;->this$0:Lcom/mediatek/ngin3d/android/StageView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 342
    return-void
.end method
