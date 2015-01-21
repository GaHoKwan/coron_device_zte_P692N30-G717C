.class public final Lcom/mediatek/ngin3d/animation/AnimationLoader;
.super Ljava/lang/Object;
.source "AnimationLoader.java"


# static fields
.field private static final READ_BUFF_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "AnimationLoader"

.field private static sCacheDir:Ljava/io/File;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method private static getKeyframeDataSet(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    .locals 7
    .parameter "context"
    .parameter "dataResId"
    .parameter "saveCache"
    .parameter "cacheFileName"

    .prologue
    .line 213
    const-class v4, Lcom/mediatek/ngin3d/animation/AnimationLoader;

    monitor-enter v4

    .line 214
    :try_start_0
    sget-object v3, Lcom/mediatek/ngin3d/animation/AnimationLoader;->sCacheDir:Ljava/io/File;

    if-nez v3, :cond_0

    .line 215
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/.ngin3d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v3, Lcom/mediatek/ngin3d/animation/AnimationLoader;->sCacheDir:Ljava/io/File;

    .line 216
    sget-object v3, Lcom/mediatek/ngin3d/animation/AnimationLoader;->sCacheDir:Ljava/io/File;

    invoke-static {v3}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->mkdirs(Ljava/io/File;)V

    .line 218
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/mediatek/ngin3d/animation/AnimationLoader;->sCacheDir:Ljava/io/File;

    if-nez p3, :cond_1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    .end local p3
    :cond_1
    invoke-direct {v0, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    .local v0, cacheFile:Ljava/io/File;
    invoke-static {v0}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->loadCachedObject(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    .line 223
    .local v1, kf:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    if-nez v1, :cond_2

    .line 225
    new-instance v2, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;

    invoke-direct {v2, p0, p1}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;-><init>(Landroid/content/Context;I)V

    .line 228
    .local v2, script:Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;
    invoke-virtual {v2}, Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;->getKeyframeDataSet()Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 230
    invoke-static {v1, v0}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->saveObjectToCache(Ljava/lang/Object;Ljava/io/File;)Z

    .line 233
    .end local v2           #script:Lcom/mediatek/ngin3d/animation/KeyframeDataLoader;
    :cond_2
    return-object v1

    .line 218
    .end local v0           #cacheFile:Ljava/io/File;
    .end local v1           #kf:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    .restart local p3
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static loadAnimation(Landroid/content/Context;I)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 2
    .parameter "ctx"
    .parameter "scriptResId"

    .prologue
    .line 131
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->loadAnimation(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimation(Landroid/content/Context;ILjava/lang/String;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "ctx"
    .parameter "scriptResId"
    .parameter "cacheFileName"

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->loadAnimation(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimation(Landroid/content/Context;IZ)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 1
    .parameter "ctx"
    .parameter "scriptResId"
    .parameter "saveCache"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->loadAnimation(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/BasicAnimation;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimation(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/BasicAnimation;
    .locals 8
    .parameter "ctx"
    .parameter "scriptResId"
    .parameter "saveCache"
    .parameter "cacheFileName"

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    const/4 v2, 0x0

    .line 105
    :goto_0
    return-object v2

    .line 82
    :cond_0
    const/4 v1, 0x0

    .line 83
    .local v1, animToMark:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->getKeyframeDataSet(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    move-result-object v3

    .line 85
    .local v3, dataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    new-instance v2, Lcom/mediatek/ngin3d/animation/AnimationGroup;

    invoke-direct {v2}, Lcom/mediatek/ngin3d/animation/AnimationGroup;-><init>()V

    .line 86
    .local v2, animationGroup:Lcom/mediatek/ngin3d/animation/AnimationGroup;
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->getList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ngin3d/animation/KeyframeData;

    .line 87
    .local v5, kfData:Lcom/mediatek/ngin3d/animation/KeyframeData;
    new-instance v0, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;

    invoke-direct {v0, v5}, Lcom/mediatek/ngin3d/animation/KeyframeAnimation;-><init>(Lcom/mediatek/ngin3d/animation/KeyframeData;)V

    .line 89
    .local v0, anim:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/mediatek/ngin3d/animation/Animation;->disableOptions(I)Lcom/mediatek/ngin3d/animation/Animation;

    .line 90
    if-nez v1, :cond_2

    .line 91
    move-object v1, v0

    .line 97
    :cond_1
    :goto_2
    invoke-virtual {v2, v0}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->add(Lcom/mediatek/ngin3d/animation/Animation;)Lcom/mediatek/ngin3d/animation/AnimationGroup;

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v0}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v6

    invoke-virtual {v1}, Lcom/mediatek/ngin3d/animation/BasicAnimation;->getDuration()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 94
    move-object v1, v0

    goto :goto_2

    .line 100
    .end local v0           #anim:Lcom/mediatek/ngin3d/animation/KeyframeAnimation;
    .end local v5           #kfData:Lcom/mediatek/ngin3d/animation/KeyframeData;
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/mediatek/ngin3d/animation/Animation;->setName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->getTargetWidth()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setProposedWidth(I)V

    .line 102
    invoke-virtual {v3}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->getTargetHeight()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/mediatek/ngin3d/animation/AnimationGroup;->setProposedHeight(I)V

    .line 103
    invoke-virtual {v3, v1}, Lcom/mediatek/ngin3d/animation/KeyframeDataSet;->applyMarker(Lcom/mediatek/ngin3d/animation/KeyframeAnimation;)V

    goto :goto_0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/KeyframeAnimator;
    .locals 2
    .parameter "ctx"
    .parameter "scriptResId"
    .parameter "actor"

    .prologue
    .line 127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->loadAnimator(Landroid/content/Context;IZLjava/lang/String;Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public static loadAnimator(Landroid/content/Context;IZLjava/lang/String;Lcom/mediatek/ngin3d/Actor;)Lcom/mediatek/ngin3d/animation/KeyframeAnimator;
    .locals 2
    .parameter "ctx"
    .parameter "scriptResId"
    .parameter "saveCache"
    .parameter "cacheFileName"
    .parameter "actor"

    .prologue
    .line 119
    if-nez p1, :cond_0

    .line 120
    const/4 v1, 0x0

    .line 123
    :goto_0
    return-object v1

    .line 122
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->getKeyframeDataSet(Landroid/content/Context;IZLjava/lang/String;)Lcom/mediatek/ngin3d/animation/KeyframeDataSet;

    move-result-object v0

    .line 123
    .local v0, dataSet:Lcom/mediatek/ngin3d/animation/KeyframeDataSet;
    new-instance v1, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;

    invoke-direct {v1, p4, v0}, Lcom/mediatek/ngin3d/animation/KeyframeAnimator;-><init>(Lcom/mediatek/ngin3d/Actor;Lcom/mediatek/ngin3d/animation/KeyframeDataSet;)V

    goto :goto_0
.end method

.method private static loadCachedObject(Ljava/io/File;)Ljava/lang/Object;
    .locals 12
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 145
    if-nez p0, :cond_0

    .line 146
    const/4 v3, 0x0

    .line 170
    :goto_0
    return-object v3

    .line 150
    :cond_0
    const/4 v3, 0x0

    .line 152
    .local v3, cachedObj:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 153
    .local v5, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 154
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v7, 0x0

    .line 156
    .local v7, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 157
    .end local v5           #fis:Ljava/io/FileInputStream;
    .local v6, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x2000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 158
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v8, Ljava/io/ObjectInputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 159
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .local v8, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v3

    .line 165
    invoke-static {v8}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v1}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v6}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 168
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .line 160
    :catch_0
    move-exception v4

    .line 161
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "AnimationLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Load cache failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 165
    invoke-static {v7}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v0}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v5}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 162
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 163
    .local v2, cE:Ljava/lang/ClassNotFoundException;
    :goto_2
    :try_start_5
    const-string v9, "AnimationLoader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Class not found in: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " !"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 165
    invoke-static {v7}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v0}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v5}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 165
    .end local v2           #cE:Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-static {v7}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 166
    invoke-static {v0}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 167
    invoke-static {v5}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 165
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 162
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v2

    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 160
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v7           #ois:Ljava/io/ObjectInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    .restart local v8       #ois:Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v4

    move-object v7, v8

    .end local v8           #ois:Ljava/io/ObjectInputStream;
    .restart local v7       #ois:Ljava/io/ObjectInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method

.method private static mkdirs(Ljava/io/File;)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 247
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/mediatek/ngin3d/utils/Ngin3dException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create cache directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/ngin3d/utils/Ngin3dException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    return-void
.end method

.method private static saveObjectToCache(Ljava/lang/Object;Ljava/io/File;)Z
    .locals 11
    .parameter "obj"
    .parameter "filePath"

    .prologue
    .line 176
    if-nez p0, :cond_0

    .line 177
    const/4 v7, 0x0

    .line 200
    :goto_0
    return v7

    .line 180
    :cond_0
    const/4 v7, 0x1

    .line 181
    .local v7, succeeded:Z
    const/4 v3, 0x0

    .line 182
    .local v3, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 183
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v5, 0x0

    .line 185
    .local v5, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v8, 0x2000

    invoke-direct {v1, v4, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 187
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .local v6, oos:Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v6, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 193
    invoke-static {v6}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v1}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    invoke-static {v4}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v5, v6

    .end local v6           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .line 196
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    .line 190
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v8, "AnimationLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Save cache failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 191
    const/4 v7, 0x0

    .line 193
    invoke-static {v5}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v0}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    invoke-static {v3}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 193
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v5}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    invoke-static {v0}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 195
    invoke-static {v3}, Lcom/mediatek/ngin3d/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .line 193
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #oos:Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v8

    move-object v5, v6

    .end local v6           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 189
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v5           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #oos:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v2

    move-object v5, v6

    .end local v6           #oos:Ljava/io/ObjectOutputStream;
    .restart local v5       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static setCacheDir(Ljava/io/File;)V
    .locals 0
    .parameter "dir"

    .prologue
    .line 242
    sput-object p0, Lcom/mediatek/ngin3d/animation/AnimationLoader;->sCacheDir:Ljava/io/File;

    .line 243
    invoke-static {p0}, Lcom/mediatek/ngin3d/animation/AnimationLoader;->mkdirs(Ljava/io/File;)V

    .line 244
    return-void
.end method
