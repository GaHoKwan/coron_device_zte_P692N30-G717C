.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/IMapLayerPlugin$IMapLayerDataCallback;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onBegin(I)V
.end method

.method public abstract onDataChanged(Ljava/util/List;Landroid/graphics/Bitmap;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "II)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/String;I)V
.end method

.method public abstract onFinish(Ljava/util/List;Landroid/graphics/Bitmap;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "I)V"
        }
    .end annotation
.end method
