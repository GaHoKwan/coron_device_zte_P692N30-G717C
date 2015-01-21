.class public Lcom/mediatek/apst/util/command/message/SendSmsReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "SendSmsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private body:Ljava/lang/String;

.field private recipients:[Ljava/lang/String;

.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->simId:I

    .line 79
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipients()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->recipients:[Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->simId:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->body:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setRecipients([Ljava/lang/String;)V
    .locals 0
    .parameter "recipients"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->recipients:[Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 142
    iput p1, p0, Lcom/mediatek/apst/util/command/message/SendSmsReq;->simId:I

    .line 143
    return-void
.end method
