.class public interface abstract Lcom/mediatek/camera/ext/IFeatureExtension;
.super Ljava/lang/Object;
.source "IFeatureExtension.java"


# virtual methods
.method public abstract checkMMSVideoCodec(ILandroid/media/CamcorderProfile;)V
.end method

.method public abstract isDelayRestartPreview()Z
.end method

.method public abstract isPrioritizePreviewSize()Z
.end method

.method public abstract isVideoBitOffSet()Z
.end method

.method public abstract updateSceneStrings(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateWBStrings([Ljava/lang/CharSequence;)V
.end method
