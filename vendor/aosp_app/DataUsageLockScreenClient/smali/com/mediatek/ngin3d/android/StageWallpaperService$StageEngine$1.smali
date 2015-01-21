.class Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine$1;
.super Ljava/lang/Object;
.source "StageWallpaperService.java"

# interfaces
.implements Lcom/mediatek/ngin3d/presentation/PresentationEngine$RenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;-><init>(Lcom/mediatek/ngin3d/android/StageWallpaperService;Lcom/mediatek/ngin3d/Stage;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;

.field final synthetic val$this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;Lcom/mediatek/ngin3d/android/StageWallpaperService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine$1;->this$1:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;

    iput-object p2, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine$1;->val$this$0:Lcom/mediatek/ngin3d/android/StageWallpaperService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestRender()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine$1;->this$1:Lcom/mediatek/ngin3d/android/StageWallpaperService$StageEngine;

    invoke-virtual {v0}, Lcom/mediatek/ngin3d/android/GLWallpaperService$GLEngine;->requestRender()V

    .line 244
    return-void
.end method
