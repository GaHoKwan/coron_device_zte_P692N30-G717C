.class public Lcom/android/camera/FileSaver;
.super Ljava/lang/Thread;
.source "FileSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FileSaver$1;,
        Lcom/android/camera/FileSaver$VideoOperator;,
        Lcom/android/camera/FileSaver$PanoOperator;,
        Lcom/android/camera/FileSaver$PhotoOperator;,
        Lcom/android/camera/FileSaver$RequestOperator;,
        Lcom/android/camera/FileSaver$FileSaverListener;
    }
.end annotation


# static fields
.field public static final BLENDED_IMAGE:I = 0x3

.field public static final IGNORE_IMAGE_TYPE:I = 0x0

.field public static final INTERMEDIA_IMAGE:I = 0x2

.field private static final INTERMEDIA_PHOTO_SUFFIX:Ljava/lang/String; = "IT"

#the value of this static final field might be set in the static constructor
.field private static final LOG:Z = false

.field private static final MOTION_TRACK_SUFFIX:Ljava/lang/String; = "MT"

.field public static final ORIGINAL_IMAGE:I = 0x1

.field private static final QUEUE_LIMIT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "FileSaver"

.field private static final TEMP_SUFFIX:Ljava/lang/String; = ".tmp"

.field private static final TRACK_PHOTO_SUFFIX:Ljava/lang/String; = "TK"

.field public static final UNKONWEN_TOTATL:I = -0x1

.field private static mObject:Ljava/lang/Object;


# instance fields
.field private mContext:Lcom/android/camera/Camera;

.field private mFileNamer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/Util$ImageFileNamer;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexArrary:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueLimit:I

.field private mResolver:Landroid/content/ContentResolver;

.field private mSaverListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/FileSaver$FileSaverListener;",
            ">;"
        }
    .end annotation
.end field

.field private mStoped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/android/camera/Log;->LOGV:Z

    sput-boolean v0, Lcom/android/camera/FileSaver;->LOG:Z

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/camera/FileSaver;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mIndexArrary:Ljava/util/ArrayList;

    .line 56
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/camera/FileSaver;->mQueueLimit:I

    .line 64
    iput-object p1, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    .line 65
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;

    .line 66
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/FileSaver;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/FileSaver;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/FileSaver;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mIndexArrary:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/FileSaver;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/FileSaver;)Lcom/android/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/FileSaver;Lcom/android/camera/SaveRequest;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver;->addSaveRequest(Lcom/android/camera/SaveRequest;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/FileSaver;IJII)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/FileSaver;->createName(IJII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/FileSaver;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/FileSaver;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addSaveRequest(Lcom/android/camera/SaveRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 189
    monitor-enter p0

    .line 190
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/camera/FileSaver;->mQueueLimit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v1, v2, :cond_0

    .line 192
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "FileSaver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addSaveRequest("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 200
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 198
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 200
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 201
    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 797
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 798
    const-string v0, ".mp4"

    .line 800
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .parameter "outputFileFormat"

    .prologue
    .line 804
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 805
    const-string v0, "video/mp4"

    .line 807
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(IJII)Ljava/lang/String;
    .locals 8
    .parameter "fileType"
    .parameter "dateTaken"
    .parameter "count"
    .parameter "tag"

    .prologue
    .line 811
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 812
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    .line 813
    new-instance v2, Lcom/android/camera/Util$ImageFileNamer;

    iget-object v3, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    const v4, 0x7f0c0162

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    .line 815
    .local v2, photo:Lcom/android/camera/Util$ImageFileNamer;
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/camera/Util$ImageFileNamer;

    iget-object v6, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    const v7, 0x7f0c0163

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/android/camera/Util$ImageFileNamer;

    iget-object v6, p0, Lcom/android/camera/FileSaver;->mContext:Lcom/android/camera/Camera;

    const v7, 0x7f0c0164

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    .end local v2           #photo:Lcom/android/camera/Util$ImageFileNamer;
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 824
    .local v0, date:Ljava/util/Date;
    const/4 v1, 0x0

    .line 826
    .local v1, name:Ljava/lang/String;
    if-eqz p4, :cond_1

    if-eqz p5, :cond_3

    .line 827
    :cond_1
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v3, p2, p3, p5}, Lcom/android/camera/Util$ImageFileNamer;->generateName(JI)Ljava/lang/String;

    move-result-object v1

    .line 831
    :cond_2
    :goto_0
    const-string v3, "FileSaver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createName("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    return-object v1

    .line 828
    :cond_3
    if-lez p4, :cond_2

    .line 829
    iget-object v3, p0, Lcom/android/camera/FileSaver;->mFileNamer:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Util$ImageFileNamer;

    invoke-virtual {v3, p2, p3, p4}, Lcom/android/camera/Util$ImageFileNamer;->generateContinuousName(JI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/camera/FileSaver$FileSaverListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public copyPhotoRequest(Lcom/android/camera/SaveRequest;)Lcom/android/camera/SaveRequest;
    .locals 2
    .parameter "originRequest"

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, request:Lcom/android/camera/SaveRequest;
    instance-of v1, p1, Lcom/android/camera/FileSaver$PhotoOperator;

    if-eqz v1, :cond_0

    .line 218
    check-cast p1, Lcom/android/camera/FileSaver$PhotoOperator;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/FileSaver$PhotoOperator;->copyRequest()Lcom/android/camera/FileSaver$PhotoOperator;

    move-result-object v0

    .line 220
    :cond_0
    return-object v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/camera/FileSaver;->waitDone()V

    .line 138
    monitor-enter p0

    .line 139
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/camera/FileSaver;->mStoped:Z

    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    :goto_0
    return-void

    .line 141
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 144
    :catch_0
    move-exception v0

    .line 146
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "FileSaver"

    const-string v2, "finish()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public finishAfterSaved()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "FileSaver"

    const-string v1, "finishAfterSaved()"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    monitor-enter p0

    .line 154
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/FileSaver;->mStoped:Z

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    monitor-exit p0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWaitTread()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getWaitingCount()I
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, count:I
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 173
    monitor-exit p0

    .line 174
    return v0

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWaitingDataSize()J
    .locals 6

    .prologue
    .line 160
    const-wide/16 v2, 0x0

    .line 161
    .local v2, totalToWrite:J
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/SaveRequest;

    .line 163
    .local v1, r:Lcom/android/camera/SaveRequest;
    invoke-interface {v1}, Lcom/android/camera/SaveRequest;->getDataSize()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    .line 165
    .end local v1           #r:Lcom/android/camera/SaveRequest;
    :cond_0
    monitor-exit p0

    .line 166
    return-wide v2

    .line 165
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public preparePhotoRequest(II)Lcom/android/camera/SaveRequest;
    .locals 3
    .parameter "type"
    .parameter "pictureType"

    .prologue
    const/4 v2, 0x0

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, request:Lcom/android/camera/SaveRequest;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 207
    new-instance v0, Lcom/android/camera/FileSaver$PanoOperator;

    .end local v0           #request:Lcom/android/camera/SaveRequest;
    invoke-direct {v0, p0, p2, v2}, Lcom/android/camera/FileSaver$PanoOperator;-><init>(Lcom/android/camera/FileSaver;ILcom/android/camera/FileSaver$1;)V

    .line 211
    .restart local v0       #request:Lcom/android/camera/SaveRequest;
    :goto_0
    invoke-interface {v0}, Lcom/android/camera/SaveRequest;->prepareRequest()V

    .line 212
    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lcom/android/camera/FileSaver$PhotoOperator;

    .end local v0           #request:Lcom/android/camera/SaveRequest;
    invoke-direct {v0, p0, v2}, Lcom/android/camera/FileSaver$PhotoOperator;-><init>(Lcom/android/camera/FileSaver;Lcom/android/camera/FileSaver$1;)V

    .restart local v0       #request:Lcom/android/camera/SaveRequest;
    goto :goto_0
.end method

.method public prepareVideoRequest(IILjava/lang/String;)Lcom/android/camera/SaveRequest;
    .locals 6
    .parameter "fileType"
    .parameter "outputFileFormat"
    .parameter "resolution"

    .prologue
    .line 226
    new-instance v0, Lcom/android/camera/FileSaver$VideoOperator;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/FileSaver$VideoOperator;-><init>(Lcom/android/camera/FileSaver;IILjava/lang/String;Lcom/android/camera/FileSaver$1;)V

    .line 227
    .local v0, operator:Lcom/android/camera/FileSaver$VideoOperator;
    invoke-virtual {v0}, Lcom/android/camera/FileSaver$VideoOperator;->prepareRequest()V

    .line 228
    return-object v0
.end method

.method public removeListener(Lcom/android/camera/FileSaver$FileSaverListener;)Z
    .locals 1
    .parameter "l"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 73
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 74
    .local v4, r:Lcom/android/camera/SaveRequest;
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 80
    iget-boolean v5, p0, Lcom/android/camera/FileSaver;->mStoped:Z

    if-eqz v5, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    return-void

    .line 83
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 84
    :catch_0
    move-exception v1

    .line 86
    .local v1, ex:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "FileSaver"

    const-string v6, "save thread is interrupted."

    invoke-static {v5, v6, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v1           #ex:Ljava/lang/InterruptedException;
    :cond_2
    iget-object v5, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 93
    iget-object v5, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/camera/SaveRequest;

    move-object v4, v0

    .line 94
    iget-object v5, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    if-eqz v4, :cond_0

    .line 101
    invoke-static {}, Lcom/android/camera/Storage;->isStorageReady()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 102
    invoke-interface {v4}, Lcom/android/camera/SaveRequest;->saveRequest()V

    .line 104
    :cond_4
    monitor-enter p0

    .line 105
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 106
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 107
    invoke-interface {v4}, Lcom/android/camera/SaveRequest;->notifyListener()V

    .line 108
    iget-object v5, p0, Lcom/android/camera/FileSaver;->mSaverListener:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/FileSaver$FileSaverListener;

    .line 109
    .local v3, listener:Lcom/android/camera/FileSaver$FileSaverListener;
    invoke-interface {v3, v4}, Lcom/android/camera/FileSaver$FileSaverListener;->onFileSaved(Lcom/android/camera/SaveRequest;)V

    goto :goto_2

    .line 106
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Lcom/android/camera/FileSaver$FileSaverListener;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5
.end method

.method public waitDone()V
    .locals 3

    .prologue
    .line 117
    monitor-enter p0

    .line 118
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/FileSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "FileSaver"

    const-string v2, "waitDone()"

    invoke-static {v1, v2, v0}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 126
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    return-void
.end method
