.class Lcom/android/providers/downloads/DownloadThread$InnerState;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerState"
.end annotation


# instance fields
.field public mAuthHeader:Landroid/net/http/HttpAuthHeader;

.field public mAuthScheme:I

.field public mHeaderContentDisposition:Ljava/lang/String;

.field public mHeaderContentLength:Ljava/lang/String;

.field public mHeaderContentLocation:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mIsAuthNeeded:Z

.field public mPort:I

.field public mScheme:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mAuthScheme:I

    .line 176
    iput-object v1, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mAuthHeader:Landroid/net/http/HttpAuthHeader;

    .line 177
    iput-object v1, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHost:Ljava/lang/String;

    .line 178
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mIsAuthNeeded:Z

    .line 180
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mPort:I

    .line 181
    iput-object v1, p0, Lcom/android/providers/downloads/DownloadThread$InnerState;->mScheme:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/DownloadThread$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>()V

    return-void
.end method
