.class Lcom/android/music/AudioPreview$1;
.super Landroid/content/AsyncQueryHandler;
.source "AudioPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/AudioPreview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/AudioPreview;


# direct methods
.method constructor <init>(Lcom/android/music/AudioPreview;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 11
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 194
    if-eqz p3, :cond_7

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 196
    const-string v8, "title"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 198
    .local v6, titleIdx:I
    const-string v8, "artist"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 199
    .local v0, artistIdx:I
    const-string v8, "_id"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 200
    .local v3, idIdx:I
    const-string v8, "_display_name"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 202
    .local v2, displaynameIdx:I
    iget-object v8, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    const v9, 0x7f070046

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 203
    .local v7, unknownArtist:Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, displayName:Ljava/lang/String;
    if-ltz v3, :cond_0

    .line 206
    iget-object v8, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    #setter for: Lcom/android/music/AudioPreview;->mMediaId:J
    invoke-static {v8, v9, v10}, Lcom/android/music/AudioPreview;->access$102(Lcom/android/music/AudioPreview;J)J

    .line 208
    :cond_0
    if-ltz v6, :cond_5

    .line 209
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 210
    .local v5, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/music/AudioPreview;->access$200(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    if-ltz v0, :cond_3

    .line 214
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v8, "AudioPreview"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "displayname"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    if-eqz v1, :cond_1

    const-string v8, "<unknown>"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 217
    :cond_1
    move-object v1, v7

    .line 220
    :cond_2
    iget-object v8, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mTextLine2:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/music/AudioPreview;->access$300(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    .end local v0           #artistIdx:I
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #displaynameIdx:I
    .end local v3           #idIdx:I
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #titleIdx:I
    .end local v7           #unknownArtist:Ljava/lang/String;
    :cond_3
    :goto_0
    if-eqz p3, :cond_4

    .line 234
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_4
    iget-object v8, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    invoke-virtual {v8}, Lcom/android/music/AudioPreview;->setNames()V

    .line 237
    return-void

    .line 222
    .restart local v0       #artistIdx:I
    .restart local v1       #displayName:Ljava/lang/String;
    .restart local v2       #displaynameIdx:I
    .restart local v3       #idIdx:I
    .restart local v6       #titleIdx:I
    .restart local v7       #unknownArtist:Ljava/lang/String;
    :cond_5
    if-ltz v2, :cond_6

    .line 223
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, name:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/music/AudioPreview$1;->this$0:Lcom/android/music/AudioPreview;

    #getter for: Lcom/android/music/AudioPreview;->mTextLine1:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/music/AudioPreview;->access$200(Lcom/android/music/AudioPreview;)Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 227
    .end local v4           #name:Ljava/lang/String;
    :cond_6
    const-string v8, "AudioPreview"

    const-string v9, "Cursor had no names for us"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    .end local v0           #artistIdx:I
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #displaynameIdx:I
    .end local v3           #idIdx:I
    .end local v6           #titleIdx:I
    .end local v7           #unknownArtist:Ljava/lang/String;
    :cond_7
    const-string v8, "AudioPreview"

    const-string v9, "empty cursor"

    invoke-static {v8, v9}, Lcom/android/music/MusicLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
