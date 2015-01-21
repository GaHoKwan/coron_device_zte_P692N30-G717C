.class Lcom/android/music/AlbumBrowserActivity$5;
.super Landroid/os/Handler;
.source "AlbumBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/android/music/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1061
    iput-object p1, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    .line 1064
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1065
    .local v0, albumId:I
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 1066
    .local v4, refreshPosition:I
    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/music/AlbumBrowserActivity;->access$1200(Lcom/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    .line 1067
    .local v3, firstVisiblePosition:I
    sub-int v5, v4, v3

    .line 1068
    .local v5, relativePosition:I
    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/music/AlbumBrowserActivity;->access$1200(Lcom/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/AdapterView;->getLastVisiblePosition()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v1, v8, 0x1

    .line 1069
    .local v1, currentVisibleItemCount:I
    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    iget-object v9, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I
    invoke-static {v9}, Lcom/android/music/AlbumBrowserActivity;->access$1000(Lcom/android/music/AlbumBrowserActivity;)I

    move-result v9

    if-le v9, v1, :cond_0

    iget-object v9, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I
    invoke-static {v9}, Lcom/android/music/AlbumBrowserActivity;->access$1000(Lcom/android/music/AlbumBrowserActivity;)I

    move-result v1

    .end local v1           #currentVisibleItemCount:I
    :cond_0
    #setter for: Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I
    invoke-static {v8, v1}, Lcom/android/music/AlbumBrowserActivity;->access$1002(Lcom/android/music/AlbumBrowserActivity;I)I

    .line 1071
    if-ltz v5, :cond_1

    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mVisibleItemsCount:I
    invoke-static {v8}, Lcom/android/music/AlbumBrowserActivity;->access$1000(Lcom/android/music/AlbumBrowserActivity;)I

    move-result v8

    if-gt v5, v8, :cond_1

    .line 1072
    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/android/music/AlbumBrowserActivity;->access$1200(Lcom/android/music/AlbumBrowserActivity;)Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1073
    .local v7, view:Landroid/view/View;
    if-eqz v7, :cond_1

    .line 1074
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;

    .line 1076
    .local v6, vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    if-gez v0, :cond_2

    .line 1077
    iget-object v8, v6, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v9}, Lcom/android/music/AlbumBrowserActivity;->access$500(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v9

    #getter for: Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v9}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$800(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1084
    .end local v6           #vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 1079
    .restart local v6       #vh:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;
    .restart local v7       #view:Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/music/AlbumBrowserActivity;->access$1300(Lcom/android/music/AlbumBrowserActivity;)Landroid/content/Context;

    move-result-object v8

    int-to-long v9, v0

    iget-object v11, p0, Lcom/android/music/AlbumBrowserActivity$5;->this$0:Lcom/android/music/AlbumBrowserActivity;

    #getter for: Lcom/android/music/AlbumBrowserActivity;->mAdapter:Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;
    invoke-static {v11}, Lcom/android/music/AlbumBrowserActivity;->access$500(Lcom/android/music/AlbumBrowserActivity;)Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;

    move-result-object v11

    #getter for: Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->mDefaultAlbumIcon:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v11}, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;->access$800(Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v11

    invoke-static {v8, v9, v10, v11}, Lcom/android/music/MusicUtils;->getCachedArtwork(Landroid/content/Context;JLandroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1080
    .local v2, d:Landroid/graphics/drawable/Drawable;
    iget-object v8, v6, Lcom/android/music/AlbumBrowserActivity$AlbumListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
