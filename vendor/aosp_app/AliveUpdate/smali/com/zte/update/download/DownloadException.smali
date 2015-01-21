.class public Lcom/zte/update/download/DownloadException;
.super Ljava/lang/Exception;
.source "DownloadException.java"


# static fields
.field public static final ERRO_CODE_ALLOW_CONINTUE_DOWNLOAD:I = 0x2

.field public static final ERRO_CODE_MUST_BREAK_DOWNLOAD:I = 0x1


# instance fields
.field protected erroCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/update/download/DownloadException;->erroCode:I

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 10
    const/4 v0, 0x2

    iput v0, p0, Lcom/zte/update/download/DownloadException;->erroCode:I

    .line 20
    return-void
.end method


# virtual methods
.method public getErroCode()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/zte/update/download/DownloadException;->erroCode:I

    return v0
.end method
