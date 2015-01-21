.class Lcom/android/music/CreatePlaylist$2;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/CreatePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/CreatePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v10, -0x1

    .line 244
    if-ne p2, v10, :cond_5

    .line 245
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/android/music/CreatePlaylist;->access$100(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, name:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 247
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v2, intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 249
    .local v4, resolver:Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/android/music/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 250
    .local v1, id:I
    const/4 v5, 0x0

    .line 252
    .local v5, uri:Landroid/net/Uri;
    if-ltz v1, :cond_2

    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylistFlag:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "new_playlist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylistFlag:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "save_as_playlist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylistName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/music/CreatePlaylist;->access$300(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 255
    :cond_0
    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v8, v1

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 257
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v7, v1}, Lcom/android/music/MusicUtils;->clearPlaylist(Landroid/content/Context;I)I

    move-result v7

    if-ne v7, v10, :cond_3

    .line 258
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    .line 289
    .end local v1           #id:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 261
    .restart local v1       #id:I
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #name:Ljava/lang/String;
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_2
    if-ltz v1, :cond_4

    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylistName:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/music/CreatePlaylist;->access$300(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mPlaylistFlag:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/music/CreatePlaylist;->access$200(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "save_as_playlist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 263
    const-string v7, "SAVE_PLAYLIST_FLAG"

    const-string v8, "save_as_playlist"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    :cond_3
    :goto_1
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 280
    const-string v7, "add_to_playlist_item_id"

    iget-object v8, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mSelectItemId:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/music/CreatePlaylist;->access$400(Lcom/android/music/CreatePlaylist;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v7, "start_activity_tab_id"

    iget-object v8, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    #getter for: Lcom/android/music/CreatePlaylist;->mStartActivityTab:I
    invoke-static {v8}, Lcom/android/music/CreatePlaylist;->access$500(Lcom/android/music/CreatePlaylist;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7, v10, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 284
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 265
    :cond_4
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 266
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "name"

    invoke-virtual {v6, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :try_start_0
    sget-object v7, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    const-string v7, "CreatePlaylist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnClickListener() with UnsupportedOperationException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 286
    .end local v0           #ex:Ljava/lang/UnsupportedOperationException;
    .end local v1           #id:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #values:Landroid/content/ContentValues;
    :cond_5
    const/4 v7, -0x3

    if-ne p2, v7, :cond_1

    .line 287
    iget-object v7, p0, Lcom/android/music/CreatePlaylist$2;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
