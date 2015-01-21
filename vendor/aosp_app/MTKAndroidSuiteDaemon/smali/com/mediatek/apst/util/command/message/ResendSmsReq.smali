.class public Lcom/mediatek/apst/util/command/message/ResendSmsReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "ResendSmsReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private body:Ljava/lang/String;

.field private date:J

.field private id:J

.field private recipient:Ljava/lang/String;

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

    iput v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->simId:I

    .line 79
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->date:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->id:J

    return-wide v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->recipient:Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->simId:I

    return v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->body:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setDate(J)V
    .locals 0
    .parameter "date"

    .prologue
    .line 121
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->date:J

    .line 122
    return-void
.end method

.method public setId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 117
    iput-wide p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->id:J

    .line 118
    return-void
.end method

.method public setRecipient(Ljava/lang/String;)V
    .locals 0
    .parameter "recipient"

    .prologue
    .line 129
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->recipient:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 142
    iput p1, p0, Lcom/mediatek/apst/util/command/message/ResendSmsReq;->simId:I

    .line 143
    return-void
.end method
