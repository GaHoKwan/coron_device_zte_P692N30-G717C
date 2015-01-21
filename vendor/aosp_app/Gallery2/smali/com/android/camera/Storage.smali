.class public Lcom/android/camera/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# static fields
.field public static final BUCKET_ID:Ljava/lang/String; = null

.field public static final CANNOT_STAT_ERROR:I = -0x2

.field public static final DCIM:Ljava/lang/String; = null

.field public static final DIRECTORY:Ljava/lang/String; = null

.field public static final FILE_TYPE_LIV:I = 0x3

.field public static final FILE_TYPE_PANO:I = 0x2

.field public static final FILE_TYPE_PHOTO:I = 0x0

.field public static final FILE_TYPE_VIDEO:I = 0x1

.field private static FOLDER_INTERMEDIA_NAME:Ljava/lang/String; = null

.field private static final FOLDER_PATH:Ljava/lang/String; = null

.field private static final FOLDER_PATH_ORIGNAL:Ljava/lang/String; = null

.field public static final FULL_SDCARD:J = -0x4L

.field private static final LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong; = null

#the value of this static final field might be set in the static constructor
.field public static final LOW_STORAGE_THRESHOLD:J = 0x0L

.field static final PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/DefaultHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PICTURE_TYPE_JPG:I = 0x0

.field public static final PICTURE_TYPE_JPS:I = 0x2

.field public static final PICTURE_TYPE_MPO:I = 0x1

.field public static final PICTURE_TYPE_MPO_3D:I = 0x3

.field public static final PREPARING:J = -0x2L

#the value of this static final field might be set in the static constructor
.field public static final RECORD_LOW_STORAGE_THRESHOLD:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "CameraStorage"

.field public static final UNAVAILABLE:J = -0x1L

.field public static final UNKNOWN_SIZE:J = -0x3L

.field private static motionTrackFolder:Ljava/lang/String;

.field private static sMountPoint:Ljava/lang/String;

.field private static sStorageManager:Landroid/os/storage/StorageManager;

.field private static sStorageReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, 0x1e000

    const/16 v6, 0x7800

    const/16 v5, 0x3400

    const/high16 v4, 0x3

    const v3, 0x28000

    .line 36
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->FOLDER_PATH:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/camera/Storage;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.ConShots"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->FOLDER_PATH_ORIGNAL:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/Storage;->BUCKET_ID:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/android/camera/Storage;->motionTrackFolder:Ljava/lang/String;

    .line 68
    const-string v0, "InterMedia"

    sput-object v0, Lcom/android/camera/Storage;->FOLDER_INTERMEDIA_NAME:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/camera/DefaultHashMap;

    invoke-direct {v0}, Lcom/android/camera/DefaultHashMap;-><init>()V

    sput-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    .line 79
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isMtkFatOnNand()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isLcaROM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    const-wide/32 v0, 0x989680

    sput-wide v0, Lcom/android/camera/Storage;->LOW_STORAGE_THRESHOLD:J

    .line 81
    const-wide/32 v0, 0x927c00

    sput-wide v0, Lcom/android/camera/Storage;->RECORD_LOW_STORAGE_THRESHOLD:J

    .line 82
    const-string v0, "CameraStorage"

    const-string v1, "LOW_STORAGE_THRESHOLD= 10000000"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_0
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x720-normal"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x720-fine"

    const v2, 0x24000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x720-superfine"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1440-normal"

    const v2, 0x3c000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1440-fine"

    const v2, 0x5a000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1440-superfine"

    const v2, 0x7081e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3328x1872-normal"

    const v2, 0x848c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3328x1872-fine"

    const v2, 0x848c9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3328x1872-superfine"

    const v2, 0xa5afb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x2304-normal"

    const v2, 0xc8c8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x2304-fine"

    const v2, 0xc8c8c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x2304-superfine"

    const v2, 0xfafb0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4608x2592-normal"

    const v2, 0xfe1e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4608x2592-fine"

    const v2, 0xfe1e2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4608x2592-superfine"

    const v2, 0x13da5b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "5120x2880-normal"

    const v2, 0x139b9c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "5120x2880-fine"

    const v2, 0x139b9c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "5120x2880-superfine"

    const v2, 0x188283

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x768-normal"

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x768-fine"

    const v2, 0x26666

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x768-superfine"

    const v2, 0x33333

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2880x1728-normal"

    const v2, 0x51000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2880x1728-fine"

    const v2, 0x79800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2880x1728-superfine"

    const v2, 0x97e00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3600x2160-normal"

    const v2, 0xa570f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3600x2160-fine"

    const v2, 0xa570f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3600x2160-superfine"

    const v2, 0xcecd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3600x2700-normal"

    const v2, 0xcecd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3600x2700-fine"

    const v2, 0xcecd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3600x2700-superfine"

    const v2, 0x102808

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3672x2754-normal"

    const v2, 0xd7280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3672x2754-fine"

    const v2, 0xd7280

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3672x2754-superfine"

    const v2, 0xc0e25c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x3072-normal"

    const v2, 0x10bb66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x3072-fine"

    const v2, 0x10bb66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4096x3072-superfine"

    const v2, 0x14ea40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4160x3120-normal"

    const v2, 0x11424d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4160x3120-fine"

    const v2, 0x11424d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4160x3120-superfine"

    const v2, 0x1592e1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4608x3456-normal"

    const v2, 0x152d2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4608x3456-fine"

    const v2, 0x152d2d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "4608x3456-superfine"

    const v2, 0x1a7879

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "5120x3840-normal"

    const v2, 0x1a24cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "5120x3840-fine"

    const v2, 0x1a24cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "5120x3840-superfine"

    const v2, 0x20ae04

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3264x2448-normal"

    const v2, 0xaa000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3264x2448-fine"

    const v2, 0xaa000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "3264x2448-superfine"

    const v2, 0xd4800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2592x1944-normal"

    const/high16 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2592x1944-fine"

    const v2, 0x78000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2592x1944-superfine"

    const v2, 0x96000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1920-normal"

    const/high16 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1920-fine"

    const v2, 0x78000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1920-superfine"

    const v2, 0x96000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1536-normal"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1536-fine"

    const/high16 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1536-superfine"

    const v2, 0x78000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x1200-normal"

    const v2, 0x32000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x1200-fine"

    const v2, 0x3c000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x1200-superfine"

    const v2, 0x5a000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x960-normal"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x960-fine"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1280x960-superfine"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x768-normal"

    const v2, 0x19000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x768-fine"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x768-superfine"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "640x480-normal"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "640x480-fine"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "640x480-superfine"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "320x240-normal"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "320x240-fine"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "320x240-superfine"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x912-normal"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x912-fine"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x912-superfine"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1152-normal"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1152-fine"

    const v2, 0x3c000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1152-superfine"

    const v2, 0x5a000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x960-normal"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x960-fine"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1600x960-superfine"

    const v2, 0x48000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x688-normal"

    const v2, 0x19000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x688-fine"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1024x688-superfine"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1440x960-normal"

    const v2, 0x2d000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1440x960-fine"

    const v2, 0x36000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "1440x960-superfine"

    const v2, 0x48000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1360-normal"

    const v2, 0x38aab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1360-fine"

    const v2, 0x46d55

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2048x1360-superfine"

    const v2, 0x6a3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1712-normal"

    const v2, 0x47555

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1712-fine"

    const v2, 0x6afff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "2560x1712-superfine"

    const v2, 0x85c00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "mav"

    const v2, 0xfd000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const-string v1, "autorama"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    const v1, 0x16e360

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/DefaultHashMap;->putDefault(Ljava/lang/Object;)V

    .line 467
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    return-void

    .line 85
    :cond_1
    const-wide/32 v0, 0x2faf080

    sput-wide v0, Lcom/android/camera/Storage;->LOW_STORAGE_THRESHOLD:J

    .line 86
    const-wide/32 v0, 0x2dc6c00

    sput-wide v0, Lcom/android/camera/Storage;->RECORD_LOW_STORAGE_THRESHOLD:J

    .line 87
    const-string v0, "CameraStorage"

    const-string v1, "LOW_STORAGE_THRESHOLD= 50000000"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureOSXCompatible()V
    .locals 4

    .prologue
    .line 317
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DCIM:Ljava/lang/String;

    const-string v2, "100ANDRO"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_0
    return-void
.end method

.method public static generateFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "title"
    .parameter "pictureType"

    .prologue
    .line 426
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 427
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mpo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 435
    .end local p0
    :cond_1
    :goto_0
    return-object p0

    .line 428
    .restart local p0
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 430
    :cond_3
    if-nez p1, :cond_1

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "fileName"

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateFilepath(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "fileName"
    .parameter "tag"

    .prologue
    .line 458
    packed-switch p1, :pswitch_data_0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/Storage;->getOrignalFileDirectory(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 460
    :pswitch_0
    invoke-static {p0}, Lcom/android/camera/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static generateMimetype(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "title"
    .parameter "pictureType"

    .prologue
    .line 444
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 445
    :cond_0
    const-string v0, "image/mpo"

    .line 449
    :goto_0
    return-object v0

    .line 446
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 447
    const-string v0, "image/x-jps"

    goto :goto_0

    .line 449
    :cond_2
    const-string v0, "image/jpeg"

    goto :goto_0
.end method

.method public static generateMpoType(I)I
    .locals 1
    .parameter "pictureType"

    .prologue
    .line 416
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 417
    const v0, 0x20003

    .line 421
    :goto_0
    return v0

    .line 418
    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    .line 419
    const v0, 0x20002

    goto :goto_0

    .line 421
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getAvailableSpace()J
    .locals 11

    .prologue
    .line 283
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v6

    .line 284
    .local v6, storageManager:Landroid/os/storage/StorageManager;
    sget-object v7, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, state:Ljava/lang/String;
    const-string v7, "CameraStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External storage state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mount point = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v7, "checking"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    const-wide/16 v7, -0x2

    .line 309
    :goto_0
    return-wide v7

    .line 289
    :cond_0
    const-string v7, "mounted"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 290
    const-wide/16 v7, -0x1

    goto :goto_0

    .line 293
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 295
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    .line 296
    .local v3, isDirectory:Z
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    .line 297
    .local v0, canWrite:Z
    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 298
    :cond_2
    const-string v7, "CameraStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAvailableSpace() isDirectory="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", canWrite="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide/16 v7, -0x4

    goto :goto_0

    .line 304
    :cond_3
    :try_start_0
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 305
    .local v4, stat:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v9, v9

    mul-long/2addr v7, v9

    goto :goto_0

    .line 306
    .end local v4           #stat:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 307
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "CameraStorage"

    const-string v8, "Fail to access external storage"

    invoke-static {v7, v8, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const-wide/16 v7, -0x3

    goto :goto_0
.end method

.method public static getBucketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "directory"

    .prologue
    .line 408
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCameraScreenNailPath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/camera/Storage;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, path:Ljava/lang/String;
    const-string v2, "/local/all/"

    .line 401
    .local v2, prefix:Ljava/lang/String;
    const/4 v0, 0x0

    .line 402
    .local v0, cameraPath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/local/all/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/Storage;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v3, "CameraStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraScreenNailPath() , return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-object v0
.end method

.method public static getFileDirectory()Ljava/lang/String;
    .locals 4

    .prologue
    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/Storage;->FOLDER_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, path:Ljava/lang/String;
    const-string v1, "CameraStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    return-object v0
.end method

.method public static getInternalVolumePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 270
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 271
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 272
    .local v2, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 273
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mounted"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 278
    :goto_1
    return-object v3

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getLeftSpace()J
    .locals 5

    .prologue
    .line 469
    sget-object v2, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 470
    .local v0, left:J
    const-string v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLeftSpace() return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v2, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getMountPoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    return-object v0
.end method

.method public static getOrignalFileDirectory(I)Ljava/lang/String;
    .locals 5
    .parameter "tag"

    .prologue
    .line 381
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Storage;->FOLDER_PATH_ORIGNAL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, path:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Storage;->FOLDER_INTERMEDIA_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 389
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 392
    :cond_1
    const-string v2, "CameraStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFilePath return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-object v1

    .line 384
    .end local v0           #file:Ljava/io/File;
    :cond_2
    sget-object v2, Lcom/android/camera/Storage;->motionTrackFolder:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/camera/Storage;->motionTrackFolder:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSize(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 71
    sget-object v0, Lcom/android/camera/Storage;->PICTURE_SIZE_TABLE:Lcom/android/camera/DefaultHashMap;

    invoke-virtual {v0, p0}, Lcom/android/camera/DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static getStorageManager()Landroid/os/storage/StorageManager;
    .locals 3

    .prologue
    .line 222
    sget-object v1, Lcom/android/camera/Storage;->sStorageManager:Landroid/os/storage/StorageManager;

    if-nez v1, :cond_0

    .line 224
    :try_start_0
    new-instance v1, Landroid/os/storage/StorageManager;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/os/storage/StorageManager;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/camera/Storage;->sStorageManager:Landroid/os/storage/StorageManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .local v0, e:Landroid/os/RemoteException;
    :cond_0
    :goto_0
    sget-object v1, Lcom/android/camera/Storage;->sStorageManager:Landroid/os/storage/StorageManager;

    return-object v1

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 226
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static isHaveExternalSDCard()Z
    .locals 5

    .prologue
    .line 258
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v1

    .line 259
    .local v1, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 260
    .local v2, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 261
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "mounted"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const/4 v3, 0x1

    .line 266
    :goto_1
    return v3

    .line 260
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isMultiStorage()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 253
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 254
    .local v1, volumes:[Landroid/os/storage/StorageVolume;
    array-length v3, v1

    if-le v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSDCard()Z
    .locals 9

    .prologue
    .line 233
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v3

    .line 234
    .local v3, storageManager:Landroid/os/storage/StorageManager;
    sget-object v4, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 235
    .local v4, storagePath:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 236
    .local v5, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v2, -0x1

    .line 237
    .local v2, nVolume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 238
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    move v2, v0

    .line 243
    :cond_0
    const/4 v1, 0x0

    .line 244
    .local v1, isSd:Z
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 245
    aget-object v6, v5, v2

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v1

    .line 247
    :cond_1
    const-string v6, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isSDCard() storagePath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return v1

    .line 237
    .end local v1           #isSd:Z
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isStorageReady()Z
    .locals 3

    .prologue
    .line 330
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isStorageReady() mount point = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/Storage;->sStorageReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-boolean v0, Lcom/android/camera/Storage;->sStorageReady:Z

    return v0
.end method

.method public static prepareMotionTrackFolder(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 440
    sput-object p0, Lcom/android/camera/Storage;->motionTrackFolder:Ljava/lang/String;

    .line 441
    return-void
.end method

.method public static setLeftSpace(J)V
    .locals 3
    .parameter "left"

    .prologue
    .line 475
    sget-object v0, Lcom/android/camera/Storage;->LEFT_SPACE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 476
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLeftSpace("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-void
.end method

.method public static setStorageReady(Z)V
    .locals 3
    .parameter "ready"

    .prologue
    .line 335
    const-string v0, "CameraStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorageReady("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") sStorageReady="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/Storage;->sStorageReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sput-boolean p0, Lcom/android/camera/Storage;->sStorageReady:Z

    .line 337
    return-void
.end method

.method public static updateDefaultDirectory()Z
    .locals 9

    .prologue
    .line 340
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v5

    .line 341
    .local v5, storageManager:Landroid/os/storage/StorageManager;
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, defaultPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 343
    .local v1, diff:Z
    sget-object v3, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 344
    .local v3, old:Ljava/lang/String;
    sput-object v0, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 345
    if-eqz v3, :cond_0

    sget-object v6, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 346
    const/4 v1, 0x1

    .line 348
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 350
    sget-object v6, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 351
    .local v4, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 352
    const-string v6, "CameraStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateDefaultDirectory() old="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sMountPoint="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return v1
.end method

.method public static updateDirectory(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 358
    invoke-static {}, Lcom/android/camera/Storage;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v4

    .line 359
    .local v4, storageManager:Landroid/os/storage/StorageManager;
    const/4 v0, 0x0

    .line 360
    .local v0, diff:Z
    sget-object v2, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 361
    .local v2, old:Ljava/lang/String;
    sput-object p0, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    .line 362
    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 365
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/camera/Storage;->getFileDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 367
    sget-object v5, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 368
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Lcom/android/camera/Storage;->setStorageReady(Z)V

    .line 369
    const-string v5, "CameraStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateDefaultDirectory() old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sMountPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/camera/Storage;->sMountPoint:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v0
.end method
