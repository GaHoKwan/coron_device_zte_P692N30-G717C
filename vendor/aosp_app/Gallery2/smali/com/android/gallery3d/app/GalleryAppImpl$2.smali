.class Lcom/android/gallery3d/app/GalleryAppImpl$2;
.super Ljava/lang/Thread;
.source "GalleryAppImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/GalleryAppImpl;->handleStorageIntentAsync(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/GalleryAppImpl;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    iput-object p2, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 167
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, storagePath:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/gallery3d/util/MtkUtils;->getMtkDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, defaultPath:Ljava/lang/String;
    const-string v3, "Gallery2/GalleryAppImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage receiver: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v3, "Gallery2/GalleryAppImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", default path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    :cond_0
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "ejecting storage is not cache storage!!"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "-> closing CacheManager"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/android/gallery3d/util/CacheManager;->storageStateChanged(Z)V

    .line 181
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "<- closing CacheManager"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {v3}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 184
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "-> closing cache service"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {v3}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/ImageCacheService;->closeCache()V

    .line 186
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "<- closing cache service"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 188
    :cond_3
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 190
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "-> opening CacheManager"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/gallery3d/util/CacheManager;->storageStateChanged(Z)V

    .line 192
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "<- opening CacheManager"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {v3}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 195
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "-> opening cache service"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v3, p0, Lcom/android/gallery3d/app/GalleryAppImpl$2;->this$0:Lcom/android/gallery3d/app/GalleryAppImpl;

    #getter for: Lcom/android/gallery3d/app/GalleryAppImpl;->mImageCacheService:Lcom/android/gallery3d/data/ImageCacheService;
    invoke-static {v3}, Lcom/android/gallery3d/app/GalleryAppImpl;->access$100(Lcom/android/gallery3d/app/GalleryAppImpl;)Lcom/android/gallery3d/data/ImageCacheService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/data/ImageCacheService;->openCache()V

    .line 197
    const-string v3, "Gallery2/GalleryAppImpl"

    const-string v4, "<- opening cache service"

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    :cond_4
    const-string v3, "Gallery2/GalleryAppImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "undesired action \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' for storage receiver!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/gallery3d/util/MtkLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
