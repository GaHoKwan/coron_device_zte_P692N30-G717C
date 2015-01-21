.class public Lcom/mediatek/music/ext/Op09MusicTrackBrowserExtension;
.super Landroid/content/ContextWrapper;
.source "Op09MusicTrackBrowserExtension.java"

# interfaces
.implements Lcom/mediatek/music/ext/IMusicTrackBrowser;


# static fields
.field private static final TAG:Ljava/lang/String; = "Op09MusicTrackBrowserExtension"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public enableAddFolderAsPlaylistMenu()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public enableAddFolderToPlayMenu()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public enableAddSongMenu()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public enableAddSongToPlayMenu()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public enableClearPlaylistMenu()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getEmptyFolderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/mediatek/music/ext/Op09MusicTrackBrowserExtension;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoneAudioString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Lcom/mediatek/music/ext/Op09MusicTrackBrowserExtension;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
