.class Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;
.super Landroid/database/AbstractCursor;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowPlayingCursor"
.end annotation


# instance fields
.field private mCols:[Ljava/lang/String;

.field private mCurPos:I

.field private mCurrentPlaylistCursor:Landroid/database/Cursor;

.field private mCursorIdxs:[J

.field private mNowPlaying:[J

.field private mService:Lcom/android/music/IMediaPlaybackService;

.field private mSize:I

.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity;


# direct methods
.method public constructor <init>(Lcom/android/music/TrackBrowserActivity;Lcom/android/music/IMediaPlaybackService;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "service"
    .parameter "cols"

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 1589
    iput-object p3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    .line 1590
    iput-object p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    .line 1591
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1592
    return-void
.end method

.method private dump()V
    .locals 5

    .prologue
    .line 1723
    const-string v1, "("

    .line 1724
    .local v1, where:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v2, :cond_1

    .line 1725
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1726
    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1724
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1730
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1731
    const-string v2, "TrackBrowser"

    invoke-static {v2, v1}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    return-void
.end method

.method private makeNowPlayingCursor()V
    .locals 15

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1599
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1601
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1605
    :goto_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1606
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_2

    .line 1665
    :cond_1
    :goto_1
    return-void

    .line 1602
    :catch_0
    move-exception v8

    .line 1603
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    goto :goto_0

    .line 1610
    .end local v8           #ex:Landroid/os/RemoteException;
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1611
    .local v14, where:Ljava/lang/StringBuilder;
    const-string v0, "_id IN ("

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v9, v0, :cond_4

    .line 1613
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v0, v0, v9

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1614
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v0, v0, -0x1

    if-ge v9, v0, :cond_3

    .line 1615
    const-string v0, ","

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1618
    :cond_4
    const-string v0, ")"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1620
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->this$0:Lcom/android/music/TrackBrowserActivity;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1624
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-nez v0, :cond_5

    .line 1625
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    goto :goto_1

    .line 1629
    :cond_5
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .line 1630
    .local v11, size:I
    new-array v0, v11, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    .line 1631
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1632
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1633
    .local v6, colidx:I
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v11, :cond_6

    .line 1634
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v0, v9

    .line 1635
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1633
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1637
    :cond_6
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1638
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    .line 1645
    const/4 v10, 0x0

    .line 1646
    .local v10, removed:I
    :try_start_1
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    :goto_4
    if-ltz v9, :cond_8

    .line 1647
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v12, v0, v9

    .line 1648
    .local v12, trackid:J
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v0, v12, v13}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    .line 1649
    .local v7, crsridx:I
    if-gez v7, :cond_7

    .line 1651
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, v12, v13}, Lcom/android/music/IMediaPlaybackService;->removeTrack(J)I

    move-result v0

    add-int/2addr v10, v0

    .line 1646
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 1654
    .end local v7           #crsridx:I
    .end local v12           #trackid:J
    :cond_8
    if-lez v10, :cond_1

    .line 1655
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    .line 1656
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v0, v0

    iput v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1657
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-nez v0, :cond_1

    .line 1658
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1662
    :catch_1
    move-exception v8

    .line 1663
    .restart local v8       #ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    goto/16 :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1821
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 1822
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1824
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    .line 1826
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 1807
    :cond_0
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCols:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1670
    iget v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 1755
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1758
    :goto_0
    return v1

    .line 1756
    :catch_0
    move-exception v0

    .line 1757
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/AbstractCursor;->onChange(Z)V

    .line 1758
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 3
    .parameter "column"

    .prologue
    .line 1766
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1769
    :goto_0
    return-wide v1

    .line 1767
    :catch_0
    move-exception v0

    .line 1768
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/AbstractCursor;->onChange(Z)V

    .line 1769
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "column"

    .prologue
    .line 1738
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1741
    :goto_0
    return-object v1

    .line 1739
    :catch_0
    move-exception v0

    .line 1740
    .local v0, ex:Ljava/lang/Exception;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/database/AbstractCursor;->onChange(Z)V

    .line 1741
    const-string v1, ""

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public moveItem(II)V
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 1715
    :try_start_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0, p1, p2}, Lcom/android/music/IMediaPlaybackService;->moveQueueItem(II)V

    .line 1716
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/android/music/IMediaPlaybackService;->getQueue()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    .line 1717
    const/4 v0, -0x1

    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v0, v1}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1720
    :goto_0
    return-void

    .line 1718
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v3, 0x1

    .line 1676
    if-ne p1, p2, :cond_0

    .line 1692
    :goto_0
    return v3

    .line 1679
    :cond_0
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    array-length v4, v4

    if-lt p2, v4, :cond_2

    .line 1680
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1687
    :cond_2
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    aget-wide v1, v4, p2

    .line 1688
    .local v1, newid:J
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCursorIdxs:[J

    invoke-static {v4, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1689
    .local v0, crsridx:I
    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurrentPlaylistCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1690
    iput p2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    goto :goto_0
.end method

.method public removeItem(I)Z
    .locals 4
    .parameter "which"

    .prologue
    .line 1698
    :try_start_0
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mService:Lcom/android/music/IMediaPlaybackService;

    invoke-interface {v1, p1, p1}, Lcom/android/music/IMediaPlaybackService;->removeTracks(II)I

    move-result v1

    if-nez v1, :cond_0

    .line 1699
    const/4 v1, 0x0

    .line 1710
    :goto_0
    return v1

    .line 1701
    :cond_0
    move v0, p1

    .line 1702
    .local v0, i:I
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    .line 1703
    :goto_1
    iget v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mSize:I

    if-ge v0, v1, :cond_1

    .line 1704
    iget-object v1, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    iget-object v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mNowPlaying:[J

    add-int/lit8 v3, v0, 0x1

    aget-wide v2, v2, v3

    aput-wide v2, v1, v0

    .line 1705
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1707
    :cond_1
    const/4 v1, -0x1

    iget v2, p0, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->mCurPos:I

    invoke-virtual {p0, v1, v2}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->onMove(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1710
    .end local v0           #i:I
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1708
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 1812
    invoke-direct {p0}, Lcom/android/music/TrackBrowserActivity$NowPlayingCursor;->makeNowPlayingCursor()V

    .line 1813
    const/4 v0, 0x1

    return v0
.end method