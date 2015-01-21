.class public interface abstract Lcom/autonavi/xmgd/plugin/interfaces/IAugmentedRealityPlugin$IAugmentedRealityCallBack;
.super Ljava/lang/Object;


# static fields
.field public static final CMD_CLOSE_AR_VIEW:I = 0x0

.field public static final CMD_CLOSE_VOICE:I = 0x2

.field public static final CMD_OPEN_VOICE:I = 0x1


# virtual methods
.method public abstract changeAroundInfoParam(Landroid/os/Bundle;)V
.end method

.method public abstract doCommand(I)Z
.end method

.method public abstract getSppedIcon(ZI)Landroid/graphics/Bitmap;
.end method

.method public abstract requestARInfo(Landroid/os/Bundle;)Z
.end method

.method public abstract requestAroundInfo(Ljava/util/List;Landroid/os/Bundle;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation
.end method
