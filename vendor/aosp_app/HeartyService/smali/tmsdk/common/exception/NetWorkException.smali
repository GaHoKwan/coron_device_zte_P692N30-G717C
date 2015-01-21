.class public Ltmsdk/common/exception/NetWorkException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private xt:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"

    .prologue
    .line 34
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Ltmsdk/common/exception/NetWorkException;->xt:I

    .line 36
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "errCode"
    .parameter "errMsg"
    .parameter "t"

    .prologue
    .line 44
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    iput p1, p0, Ltmsdk/common/exception/NetWorkException;->xt:I

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1
    .parameter "errCode"
    .parameter "t"

    .prologue
    .line 39
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    iput p1, p0, Ltmsdk/common/exception/NetWorkException;->xt:I

    .line 41
    return-void
.end method


# virtual methods
.method public getErrCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Ltmsdk/common/exception/NetWorkException;->xt:I

    return v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    invoke-virtual {p0}, Ltmsdk/common/exception/NetWorkException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, message:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 25
    invoke-virtual {p0}, Ltmsdk/common/exception/NetWorkException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 26
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 30
    .end local v0           #cause:Ljava/lang/Throwable;
    :cond_0
    if-eqz v1, :cond_1

    .end local v1           #message:Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1       #message:Ljava/lang/String;
    :cond_1
    const-string v1, ""

    goto :goto_0
.end method
