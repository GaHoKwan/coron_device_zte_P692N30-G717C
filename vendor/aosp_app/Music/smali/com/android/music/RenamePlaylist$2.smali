.class Lcom/android/music/RenamePlaylist$2;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/RenamePlaylist;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "mDialogInterface"
    .parameter "button"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 246
    if-ne p2, v10, :cond_2

    .line 247
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mPlaylist:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/music/RenamePlaylist;->access$100(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 249
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 250
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mExistingId:J
    invoke-static {v3}, Lcom/android/music/RenamePlaylist;->access$200(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    .line 253
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mExistingId:J
    invoke-static {v6}, Lcom/android/music/RenamePlaylist;->access$200(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 256
    const-string v3, "RenamePlaylist"

    const-string v4, "to overwrite, delete the existing one"

    invoke-static {v3, v4}, Lcom/android/music/MusicLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 259
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v9, [Ljava/lang/String;

    iget-object v6, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    #getter for: Lcom/android/music/RenamePlaylist;->mRenameId:J
    invoke-static {v6}, Lcom/android/music/RenamePlaylist;->access$300(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 264
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3, v10}, Landroid/app/Activity;->setResult(I)V

    .line 265
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    const v4, 0x7f07003a

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 266
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 272
    .end local v0           #name:Ljava/lang/String;
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_0
    return-void

    .line 268
    :cond_2
    const/4 v3, -0x3

    if-ne p2, v3, :cond_1

    .line 269
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setResult(I)V

    .line 270
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$2;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
