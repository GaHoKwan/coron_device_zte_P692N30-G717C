.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;
.super Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/pcs/BaiduPCSActionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PCSAudioMetaResponse"
.end annotation


# instance fields
.field public albumArt:Ljava/lang/String;

.field public albumArtist:Ljava/lang/String;

.field public albumTitle:Ljava/lang/String;

.field public artistName:Ljava/lang/String;

.field public compilation:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public duration:J

.field public genre:Ljava/lang/String;

.field public hasthumbnail:Z

.field public trackNumber:J

.field public trackTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->hasthumbnail:Z

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->artistName:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumTitle:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArtist:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArt:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->composer:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackTitle:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackNumber:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->duration:J

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->compilation:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->date:Ljava/lang/String;

    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->genre:Ljava/lang/String;

    return-void
.end method
