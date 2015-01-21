.class public Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "DeleteContactReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[J

.field private simEmails:[Ljava/lang/String;

.field private simNames:[Ljava/lang/String;

.field private simNumbers:[Ljava/lang/String;

.field private sourceLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 77
    return-void
.end method


# virtual methods
.method public getDeleteIds()[J
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->deleteIds:[J

    return-object v0
.end method

.method public getSimEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->simEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public getSimNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->simNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getSimNumbers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->simNumbers:[Ljava/lang/String;

    return-object v0
.end method

.method public getSourceLocation()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->sourceLocation:I

    return v0
.end method

.method public setDeleteIds([J)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->deleteIds:[J

    .line 121
    return-void
.end method

.method public setSimEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "simEmails"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->simEmails:[Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setSimNames([Ljava/lang/String;)V
    .locals 0
    .parameter "simNames"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->simNames:[Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setSimNumbers([Ljava/lang/String;)V
    .locals 0
    .parameter "simNumbers"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->simNumbers:[Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setSourceLocation(I)V
    .locals 0
    .parameter "sourceLocation"

    .prologue
    .line 136
    iput p1, p0, Lcom/mediatek/apst/util/command/contacts/DeleteContactReq;->sourceLocation:I

    .line 137
    return-void
.end method
