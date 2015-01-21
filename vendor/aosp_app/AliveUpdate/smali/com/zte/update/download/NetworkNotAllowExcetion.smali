.class Lcom/zte/update/download/NetworkNotAllowExcetion;
.super Lcom/zte/update/download/DownloadException;
.source "DownloadException.java"


# instance fields
.field protected erroCode:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zte/update/download/DownloadException;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/update/download/NetworkNotAllowExcetion;->erroCode:I

    return-void
.end method
