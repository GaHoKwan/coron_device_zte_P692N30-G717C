.class public Ltmsdk/common/exception/WifiApproveException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "errMsg"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "errMsg"
    .parameter "t"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Ltmsdk/common/exception/WifiApproveException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, message:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p0}, Ltmsdk/common/exception/WifiApproveException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 15
    .local v0, cause:Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 19
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
