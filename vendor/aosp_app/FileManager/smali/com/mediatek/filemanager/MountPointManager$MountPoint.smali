.class Lcom/mediatek/filemanager/MountPointManager$MountPoint;
.super Ljava/lang/Object;
.source "MountPointManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/filemanager/MountPointManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MountPoint"
.end annotation


# instance fields
.field mDescription:Ljava/lang/String;

.field mIsExternal:Z

.field mIsMounted:Z

.field mMaxFileSize:J

.field mPath:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/filemanager/MountPointManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mediatek/filemanager/MountPointManager$MountPoint;-><init>()V

    return-void
.end method
