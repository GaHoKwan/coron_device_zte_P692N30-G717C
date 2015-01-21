.class public Lcom/mediatek/apst/util/entity/media/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/IRawTransferable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ALARMS:I = 0x1

.field public static final ALL:I = 0x1ff

.field public static final DCIM:I = 0x2

.field public static final DOWNLOADS:I = 0x4

.field public static final MOVIES:I = 0x8

.field public static final MUSIC:I = 0x10

.field public static final NOTIFICATIONS:I = 0x20

.field public static final PICTURES:I = 0x40

.field public static final PODCASTS:I = 0x80

.field public static final RINGTONES:I = 0x100

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private contentType:I

.field private fileLength:J

.field private lastModified:J

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "contentType"
    .parameter "path"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput p1, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->contentType:I

    .line 91
    iput-object p2, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->path:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public static allTypes()I
    .locals 1

    .prologue
    .line 136
    const/16 v0, 0x1ff

    return v0
.end method


# virtual methods
.method public getContentType()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->contentType:I

    return v0
.end method

.method public getFileLenght()J
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->fileLength:J

    return-wide v0
.end method

.method public getLastModified()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->lastModified:J

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->contentType:I

    .line 148
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->path:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setContentType(I)V
    .locals 0
    .parameter "contentType"

    .prologue
    .line 117
    iput p1, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->contentType:I

    .line 118
    return-void
.end method

.method public setFileLength(J)V
    .locals 0
    .parameter "fileLength"

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->fileLength:J

    .line 126
    return-void
.end method

.method public setLastModified(J)V
    .locals 0
    .parameter "lastModified"

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->lastModified:J

    .line 130
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->path:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 141
    iget v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->contentType:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 142
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/media/MediaInfo;->path:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 143
    return-void
.end method
