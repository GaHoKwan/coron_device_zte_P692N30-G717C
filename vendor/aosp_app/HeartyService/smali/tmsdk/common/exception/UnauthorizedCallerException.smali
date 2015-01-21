.class public Ltmsdk/common/exception/UnauthorizedCallerException;
.super Ljava/lang/SecurityException;
.source "SourceFile"


# static fields
.field public static final DEFAULT_MESSAGE:Ljava/lang/String; = "The caller is not permitted"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "The caller is not permitted"

    invoke-direct {p0, v0}, Ltmsdk/common/exception/UnauthorizedCallerException;-><init>(Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    return-void
.end method
