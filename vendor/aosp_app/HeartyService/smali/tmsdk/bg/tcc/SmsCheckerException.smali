.class public Ltmsdk/bg/tcc/SmsCheckerException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field private wR:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "error"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsChecker error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 21
    iput p1, p0, Ltmsdk/bg/tcc/SmsCheckerException;->wR:I

    .line 22
    return-void
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Ltmsdk/bg/tcc/SmsCheckerException;->wR:I

    return v0
.end method
