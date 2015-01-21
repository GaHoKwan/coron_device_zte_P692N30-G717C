.class Lcom/mediatek/ngin3d/android/StageView$3;
.super Ljava/lang/Object;
.source "StageView.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/ngin3d/android/StageView;->onPause()V
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
        "Ljava/lang/Void;",
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
    .line 402
    iput-object p1, p0, Lcom/mediatek/ngin3d/android/StageView$3;->this$0:Lcom/mediatek/ngin3d/android/StageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/mediatek/ngin3d/android/StageView$3;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/mediatek/ngin3d/android/StageView$3;->this$0:Lcom/mediatek/ngin3d/android/StageView;

    #getter for: Lcom/mediatek/ngin3d/android/StageView;->mPresentationEngine:Lcom/mediatek/ngin3d/presentation/PresentationEngine;
    invoke-static {v0}, Lcom/mediatek/ngin3d/android/StageView;->access$000(Lcom/mediatek/ngin3d/android/StageView;)Lcom/mediatek/ngin3d/presentation/PresentationEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/mediatek/ngin3d/presentation/PresentationEngine;->uninitialize()V

    .line 405
    const/4 v0, 0x0

    return-object v0
.end method
