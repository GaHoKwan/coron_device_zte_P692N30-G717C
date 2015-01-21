.class public Lcom/mediatek/apst/util/communication/comm/CommFactory;
.super Ljava/lang/Object;
.source "CommFactory.java"


# static fields
.field public static final HOST_SIDE:I = 0x0

.field public static final SLAVE_SIDE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCommHandler(I)Lcom/mediatek/apst/util/communication/common/CommHandler;
    .locals 1
    .parameter "side"

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    new-instance v0, Lcom/mediatek/apst/util/communication/server/CommHostHandler;

    invoke-direct {v0}, Lcom/mediatek/apst/util/communication/server/CommHostHandler;-><init>()V

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 80
    new-instance v0, Lcom/mediatek/apst/util/communication/client/CommSlaveHandler;

    invoke-direct {v0}, Lcom/mediatek/apst/util/communication/client/CommSlaveHandler;-><init>()V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
