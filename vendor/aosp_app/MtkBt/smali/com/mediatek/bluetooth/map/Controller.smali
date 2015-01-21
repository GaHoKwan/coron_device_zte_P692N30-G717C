.class abstract Lcom/mediatek/bluetooth/map/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# instance fields
.field protected mDeleteFolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/mediatek/bluetooth/map/ControllerListener;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mDeleteFolder:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method protected abstract deleteMessage(J)Z
.end method

.method protected deregisterListener()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    .line 57
    return-void
.end method

.method protected abstract getMessage(Lcom/mediatek/bluetooth/map/cache/MessageRequest;)Lcom/mediatek/bluetooth/map/cache/BMessageObject;
.end method

.method protected abstract getMessageList(Lcom/mediatek/bluetooth/map/cache/MessageListRequest;)Lcom/mediatek/bluetooth/map/cache/MessageListObject;
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract pushMessage(Lcom/mediatek/bluetooth/map/cache/BMessageObject;)Z
.end method

.method protected registerListener(Lcom/mediatek/bluetooth/map/ControllerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lcom/mediatek/bluetooth/map/Controller;->mListener:Lcom/mediatek/bluetooth/map/ControllerListener;

    .line 53
    :cond_0
    return-void
.end method

.method protected abstract restoreMessage(J)Z
.end method

.method protected abstract setMessageStatus(JI)Z
.end method

.method protected abstract updateInbox()Z
.end method
