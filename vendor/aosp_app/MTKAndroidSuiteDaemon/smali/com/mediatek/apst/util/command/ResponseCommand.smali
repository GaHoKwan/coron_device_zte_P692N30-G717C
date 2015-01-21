.class public abstract Lcom/mediatek/apst/util/command/ResponseCommand;
.super Lcom/mediatek/apst/util/command/BaseCommand;
.source "ResponseCommand.java"


# static fields
.field public static final SC_FAILED:I = 0x2

.field public static final SC_INVALID_ARGUMENTS:I = 0x3

.field public static final SC_OK:I = 0x1

.field public static final SC_UNSUPPORTED_REQUEST:I = 0x4

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "featureId"
    .parameter "requestToken"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/mediatek/apst/util/command/BaseCommand;-><init>(I)V

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/apst/util/command/ResponseCommand;->statusCode:I

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apst/util/command/ResponseCommand;->errorMessage:Ljava/lang/String;

    .line 99
    invoke-virtual {p0, p2}, Lcom/mediatek/apst/util/communication/common/TransportEntity;->setToken(I)V

    .line 100
    return-void
.end method


# virtual methods
.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mediatek/apst/util/command/ResponseCommand;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/mediatek/apst/util/command/ResponseCommand;->statusCode:I

    return v0
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "errorMessage"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/apst/util/command/ResponseCommand;->errorMessage:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0
    .parameter "statusCode"

    .prologue
    .line 129
    iput p1, p0, Lcom/mediatek/apst/util/command/ResponseCommand;->statusCode:I

    .line 130
    return-void
.end method
