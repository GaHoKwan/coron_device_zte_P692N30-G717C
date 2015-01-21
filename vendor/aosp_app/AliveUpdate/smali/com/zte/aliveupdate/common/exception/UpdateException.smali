.class public Lcom/zte/aliveupdate/common/exception/UpdateException;
.super Ljava/lang/Exception;
.source "UpdateException.java"


# static fields
.field public static final CONNECTION_EXCEPRION:I = 0x2

.field public static final IO_EXCEPRION:I = 0x4

.field public static final JSON_EXCEPRION:I = 0x1

.field public static final MALFORMED_URL_EXCEPRION:I = 0x3

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 18
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    iput p1, p0, Lcom/zte/aliveupdate/common/exception/UpdateException;->errorCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/aliveupdate/common/exception/UpdateException;->errorCode:I

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0
    .parameter "errorCode"

    .prologue
    .line 27
    iput p1, p0, Lcom/zte/aliveupdate/common/exception/UpdateException;->errorCode:I

    .line 28
    return-void
.end method
