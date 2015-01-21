.class public Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "NotifyNewMessageReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private newMessage:Lcom/mediatek/apst/util/entity/message/Message;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 68
    return-void
.end method


# virtual methods
.method public getNewMessage()Lcom/mediatek/apst/util/entity/message/Message;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;->newMessage:Lcom/mediatek/apst/util/entity/message/Message;

    return-object v0
.end method

.method public setNewMessage(Lcom/mediatek/apst/util/entity/message/Message;)V
    .locals 0
    .parameter "newMessage"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/NotifyNewMessageReq;->newMessage:Lcom/mediatek/apst/util/entity/message/Message;

    .line 82
    return-void
.end method
