.class Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadInfo"
.end annotation


# instance fields
.field public mDescription:Ljava/lang/String;

.field public mInstallNotifyUrl:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mNextUrl:Ljava/lang/String;

.field public mObjectUrl:Ljava/lang/String;

.field public mSize:I

.field public mSupportByDevice:Z

.field public mType:Ljava/lang/String;

.field public mVendor:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "vendor"
    .parameter "type"
    .parameter "objectUrl"
    .parameter "nextUrl"
    .parameter "installNotifyUrl"
    .parameter "description"
    .parameter "size"
    .parameter "isSupportByDevice"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mName:Ljava/lang/String;

    .line 239
    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mVendor:Ljava/lang/String;

    .line 240
    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mType:Ljava/lang/String;

    .line 241
    iput-object p5, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mObjectUrl:Ljava/lang/String;

    .line 242
    iput-object p6, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mNextUrl:Ljava/lang/String;

    .line 243
    iput-object p7, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mInstallNotifyUrl:Ljava/lang/String;

    .line 244
    iput-object p8, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mDescription:Ljava/lang/String;

    .line 245
    iput p9, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mSize:I

    .line 246
    iput-boolean p10, p0, Lcom/android/providers/downloads/ui/DownloadList$DownloadInfo;->mSupportByDevice:Z

    .line 247
    return-void
.end method
