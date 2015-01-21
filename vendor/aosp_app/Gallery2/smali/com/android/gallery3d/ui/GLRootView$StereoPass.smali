.class Lcom/android/gallery3d/ui/GLRootView$StereoPass;
.super Ljava/lang/Object;
.source "GLRootView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/GLRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StereoPass"
.end annotation


# instance fields
.field public scale:F

.field public transf:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .parameter "s"
    .parameter "t"

    .prologue
    .line 725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 726
    iput p1, p0, Lcom/android/gallery3d/ui/GLRootView$StereoPass;->scale:F

    .line 727
    iput p2, p0, Lcom/android/gallery3d/ui/GLRootView$StereoPass;->transf:F

    .line 728
    return-void
.end method
