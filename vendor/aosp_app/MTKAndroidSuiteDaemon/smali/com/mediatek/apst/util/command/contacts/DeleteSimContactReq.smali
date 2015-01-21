.class public Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteSimContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private names:[Ljava/lang/String;

.field private numbers:[Ljava/lang/String;

.field private simId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->simId:I

    .line 74
    return-void
.end method


# virtual methods
.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->numbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSimId()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->simId:I

    return v0
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0
    .parameter "names"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->names:[Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setNumbers([Ljava/lang/String;)V
    .locals 0
    .parameter "numbers"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->numbers:[Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSimId(I)V
    .locals 0
    .parameter "simId"

    .prologue
    .line 105
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteSimContactReq;->simId:I

    .line 106
    return-void
.end method
