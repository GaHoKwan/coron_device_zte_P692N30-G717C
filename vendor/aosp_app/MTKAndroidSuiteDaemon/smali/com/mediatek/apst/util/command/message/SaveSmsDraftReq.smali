.class public Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "SaveSmsDraftReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private body:Ljava/lang/String;

.field private recipients:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 73
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipients()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;->recipients:[Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .parameter "body"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;->body:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRecipients([Ljava/lang/String;)V
    .locals 0
    .parameter "recipients"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mediatek/apst/util/command/message/SaveSmsDraftReq;->recipients:[Ljava/lang/String;

    .line 103
    return-void
.end method
