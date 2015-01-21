.class Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;
.super Ljava/lang/Object;
.source "VipListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/activity/VipListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarLoader"
.end annotation


# static fields
.field private static final UI_UPDATE_FREQUNCY:I = 0x5


# instance fields
.field mAvatarMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;",
            ">;"
        }
    .end annotation
.end field

.field mLoaderContext:Landroid/content/Context;

.field mLoadingThread:Ljava/lang/Thread;

.field private final mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mStop:Z

.field final synthetic this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;


# direct methods
.method constructor <init>(Lcom/mediatek/email/emailvip/activity/VipListAdapter;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mAvatarMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mStop:Z

    .line 230
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;

    .line 233
    iput-object p2, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoaderContext:Landroid/content/Context;

    .line 234
    return-void
.end method

.method private loadAvatarInfo(Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .locals 13
    .parameter "emailAddress"

    .prologue
    const/4 v3, 0x0

    .line 317
    const/4 v6, 0x0

    .line 319
    .local v6, avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-object v3

    .line 323
    :cond_1
    const-string v0, "VipListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAvatarInfo : emailAddress = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-wide/16 v11, -0x1

    .line 326
    .local v11, photoId:J
    const-string v10, ""

    .line 327
    .local v10, name:Ljava/lang/String;
    const/4 v9, 0x0

    .line 328
    .local v9, lookupUri:Landroid/net/Uri;
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 329
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoaderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 330
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 334
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 336
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 337
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoaderContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Data;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v9

    .line 339
    :cond_2
    new-instance v7, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    invoke-direct {v7, v0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;-><init>(Lcom/mediatek/email/emailvip/activity/VipListAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v6           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .local v7, avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    :try_start_1
    iput-wide v11, v7, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mPhotoId:J

    .line 341
    iput-object v10, v7, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    .line 342
    iput-object p1, v7, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mAddress:Ljava/lang/String;

    .line 343
    if-nez v9, :cond_3

    :goto_1
    iput-object v3, v7, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mLookUpUri:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .end local v7           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .restart local v6       #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    move-object v3, v7

    .line 347
    goto :goto_0

    .line 343
    .end local v6           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .restart local v7       #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    :cond_3
    :try_start_2
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    goto :goto_1

    .line 345
    .end local v7           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .restart local v6       #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    :catchall_0
    move-exception v0

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .end local v6           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .restart local v7       #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .restart local v6       #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    goto :goto_2
.end method

.method private updateUI()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoaderContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader$1;

    invoke-direct {v1, p0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader$1;-><init>(Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method


# virtual methods
.method public getAvatarInfo(Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .locals 2
    .parameter "emailAddress"

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mAvatarMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    check-cast v0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    .line 245
    .restart local v0       #avatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    return-object v0
.end method

.method public reloadAvatar(Ljava/lang/String;)V
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 265
    const/4 v4, 0x0

    .line 267
    .local v4, loadedCount:I
    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mStop:Z

    if-nez v7, :cond_2

    .line 268
    const/4 v2, 0x0

    .line 270
    .local v2, emailAddress:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v6

    .line 272
    .local v6, pendingAvatarts:I
    if-nez v6, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->updateUI()V

    .line 274
    const/4 v4, 0x0

    .line 276
    :cond_1
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v7}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v6           #pendingAvatarts:I
    :goto_1
    iget-boolean v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mStop:Z

    if-eqz v7, :cond_3

    .line 282
    const-string v7, "VipListAdapter"

    const-string v8, "AvatarLoader loading thread stop"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v2           #emailAddress:Ljava/lang/String;
    :cond_2
    return-void

    .line 277
    .restart local v2       #emailAddress:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 278
    .local v3, ex:Ljava/lang/InterruptedException;
    const-string v7, "VipListAdapter"

    const-string v8, "AvatarLoader loading thread be interrupted"

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    .end local v3           #ex:Ljava/lang/InterruptedException;
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 286
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mAvatarMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    .line 287
    .local v1, cachedAvatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    invoke-direct {p0, v2}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->loadAvatarInfo(Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    move-result-object v5

    .line 289
    .local v5, newAvatar:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;
    invoke-static {v7}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->access$000(Lcom/mediatek/email/emailvip/activity/VipListAdapter;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v1, :cond_4

    iget-object v7, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    iget-object v8, v5, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 290
    const-string v7, "VipListAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "emailAddress = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " oldName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " newName = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;
    invoke-static {v7}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->access$000(Lcom/mediatek/email/emailvip/activity/VipListAdapter;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 293
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->this$0:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    #getter for: Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;
    invoke-static {v7}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->access$000(Lcom/mediatek/email/emailvip/activity/VipListAdapter;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;->onAvatarNameChanged(Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;)V

    .line 297
    :cond_4
    iget-object v7, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mAvatarMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    add-int/lit8 v4, v4, 0x1

    .line 300
    const/4 v7, 0x5

    if-lt v4, v7, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->updateUI()V

    .line 302
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public startLoading()V
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoadingThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mStop:Z

    .line 251
    new-instance v0, Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoadingThread:Ljava/lang/Thread;

    .line 252
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoadingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    :cond_0
    return-void
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mStop:Z

    .line 258
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mNeedLoadAvatars:Ljava/util/concurrent/BlockingQueue;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->mLoadingThread:Ljava/lang/Thread;

    .line 260
    return-void
.end method
