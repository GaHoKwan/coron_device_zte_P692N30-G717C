.class Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlbumSongIdWrapper"
.end annotation


# instance fields
.field public albumid:J

.field public songid:J


# direct methods
.method constructor <init>(JJ)V
    .locals 0
    .parameter "aid"
    .parameter "sid"

    .prologue
    .line 1866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1867
    iput-wide p1, p0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->albumid:J

    .line 1868
    iput-wide p3, p0, Lcom/android/music/MediaPlaybackActivity$AlbumSongIdWrapper;->songid:J

    .line 1869
    return-void
.end method
