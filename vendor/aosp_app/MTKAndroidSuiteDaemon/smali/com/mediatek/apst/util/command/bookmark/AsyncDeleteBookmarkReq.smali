.class public Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkReq;
.super Lcom/mediatek/apst/util/command/RequestCommand;
.source "AsyncDeleteBookmarkReq.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private deleteIds:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/high16 v0, 0x110

    invoke-direct {p0, v0}, Lcom/mediatek/apst/util/command/RequestCommand;-><init>(I)V

    .line 72
    return-void
.end method


# virtual methods
.method public getDeleteIds()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkReq;->deleteIds:[I

    return-object v0
.end method

.method public setDeleteIds([I)V
    .locals 0
    .parameter "deleteIds"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mediatek/apst/util/command/bookmark/AsyncDeleteBookmarkReq;->deleteIds:[I

    .line 86
    return-void
.end method
