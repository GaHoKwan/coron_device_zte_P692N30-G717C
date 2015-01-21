.class public interface abstract Lcom/mediatek/bluetooth/map/MessageObserver$ControllerHelper;
.super Ljava/lang/Object;
.source "MessageObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/bluetooth/map/MessageObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ControllerHelper"
.end annotation


# virtual methods
.method public abstract queryMessage(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract revertMailboxType(I)Ljava/lang/String;
.end method
