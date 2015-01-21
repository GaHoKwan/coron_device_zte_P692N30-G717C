.class public Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;
.super Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;
.source "BaiduPCSActionInfo.java"


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

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSMetaResponse;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->hasthumbnail:Z

    .line 132
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->artistName:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumTitle:Ljava/lang/String;

    .line 138
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArtist:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->albumArt:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->composer:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackTitle:Ljava/lang/String;

    .line 150
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->trackNumber:J

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->duration:J

    .line 156
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->compilation:Ljava/lang/String;

    .line 159
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->date:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/baidu/pcs/BaiduPCSActionInfo$PCSAudioMetaResponse;->genre:Ljava/lang/String;

    .line 126
    return-void
.end method
