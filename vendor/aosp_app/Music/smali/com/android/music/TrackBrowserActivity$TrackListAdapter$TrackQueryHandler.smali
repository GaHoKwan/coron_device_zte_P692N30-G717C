.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "res"

    .prologue
    .line 1888
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 1889
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1890
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"
    .parameter "async"

    .prologue
    .line 1895
    if-eqz p6, :cond_0

    .line 1898
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v4, "100"

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1899
    .local v3, limituri:Landroid/net/Uri;
    new-instance v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v2, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;)V

    .line 1900
    .local v2, args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    iput-object p1, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 1901
    iput-object p2, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 1902
    iput-object p3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 1903
    iput-object p4, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 1904
    iput-object p5, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 1906
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    const/4 v0, 0x0

    .line 1909
    .end local v2           #args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    .end local v3           #limituri:Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->access$1600(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-static/range {v4 .. v9}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1915
    const-string v3, "TrackBrowser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query complete: count is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p3, :cond_1

    move-object v0, v2

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "   "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;
    invoke-static {v4}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->access$1600(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/music/MusicLogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$0:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    #getter for: Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->mActivity:Lcom/android/music/TrackBrowserActivity;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->access$1600(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v3

    if-eqz p2, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, p3, v0}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 1919
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_0

    move-object v8, p2

    .line 1920
    check-cast v8, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;

    .line 1921
    .local v8, args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    iget-object v3, v8, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, v8, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    iget-object v5, v8, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, v8, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, v8, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    .end local v8           #args:Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    :cond_0
    return-void

    .line 1915
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1917
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
