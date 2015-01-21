.class public Lcom/mediatek/apst/util/command/UnsupportedRequestResponse;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "UnsupportedRequestResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "featureId"
    .parameter "requestToken"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 70
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/mediatek/apst/util/command/ResponseCommand;->setStatusCode(I)V

    .line 71
    return-void
.end method
