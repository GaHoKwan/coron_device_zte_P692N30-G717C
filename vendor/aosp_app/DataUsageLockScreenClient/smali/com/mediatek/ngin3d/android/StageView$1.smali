.class Lcom/mediatek/ngin3d/android/StageView$1;
.super Ljava/lang/Object;
.source "StageView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/android/StageView;->getScreenShot()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/ngin3d/android/StageView;


# direct methods
.method constructor <init>(Lcom/mediatek/ngin3d/android/StageView;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageView$1;->this$0:Lcom/mediatek/ngin3d/android/StageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView$1;->this$0:Lcom/mediatek/ngin3d/android/StageView;

    #getter for: Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    invoke-static {v0}, Lcom/mediatek/ngin3d/android/StageView;->access$000(Lcom/mediatek/ngin3d/android/StageView;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->getScreenShot()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
