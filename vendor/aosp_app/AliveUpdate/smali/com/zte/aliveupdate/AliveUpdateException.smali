.class public Lcom/zte/aliveupdate/AliveUpdateException;
.super Ljava/lang/Exception;
.source "AliveUpdateException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;
    }
.end annotation


# instance fields
.field private exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 15
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 26
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->IOException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassNotFoundException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 15
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 34
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->ClassNotFoundException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 23
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONException;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 15
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->OtherException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 30
    sget-object v0, Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;->JSONException:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    iput-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    .line 31
    return-void
.end method


# virtual methods
.method public getExceptionType()Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/zte/aliveupdate/AliveUpdateException;->exceptionType:Lcom/zte/aliveupdate/AliveUpdateException$ExceptionType;

    return-object v0
.end method
