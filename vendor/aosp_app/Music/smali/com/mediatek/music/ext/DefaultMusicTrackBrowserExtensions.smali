.class public Lcom/mediatek/music/ext/DefaultMusicTrackBrowserExtensions;
.super Landroid/content/ContextWrapper;
.source "DefaultMusicTrackBrowserExtensions.java"

# interfaces
.implements Lcom/mediatek/music/ext/IMusicTrackBrowser;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method


# virtual methods
.method public enableAddFolderAsPlaylistMenu()Z
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public enableAddFolderToPlayMenu()Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public enableAddSongMenu()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public enableAddSongToPlayMenu()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public enableClearPlaylistMenu()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyFolderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNoneAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method
