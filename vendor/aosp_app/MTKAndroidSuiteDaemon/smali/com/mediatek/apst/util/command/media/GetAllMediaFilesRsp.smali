.class public Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;
.super Lcom/mediatek/apst/util/command/ResponseCommand;
.source "GetAllMediaFilesRsp.java"


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private files:[Lcom/mediatek/apst/util/entity/media/MediaInfo;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "requestToken"

    .prologue
    .line 67
    const/high16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/mediatek/apst/util/command/ResponseCommand;-><init>(II)V

    .line 68
    return-void
.end method


# virtual methods
.method public getFiles()[Lcom/mediatek/apst/util/entity/media/MediaInfo;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;->files:[Lcom/mediatek/apst/util/entity/media/MediaInfo;

    return-object v0
.end method

.method public setFiles([Lcom/mediatek/apst/util/entity/media/MediaInfo;)V
    .locals 0
    .parameter "files"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mediatek/apst/util/command/media/GetAllMediaFilesRsp;->files:[Lcom/mediatek/apst/util/entity/media/MediaInfo;

    .line 82
    return-void
.end method
