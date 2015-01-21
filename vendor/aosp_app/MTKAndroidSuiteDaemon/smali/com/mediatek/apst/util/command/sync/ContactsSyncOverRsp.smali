.class public Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "ContactsSyncOverRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private contactsCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "token"

    .prologue
    .line 66
    const/high16 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 67
    return-void
.end method


# virtual methods
.method public getContactsCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;->contactsCount:I

    return v0
.end method

.method public setContactsCount(I)V
    .locals 0
    .parameter "contactsCount"

    .prologue
    .line 88
    iput p1, p0, Lcom/mediatek/apst/util/command/sync/ContactsSyncOverRsp;->contactsCount:I

    .line 89
    return-void
.end method
