.class public Lcom/android/mms/draft/MmsDraftData;
.super Ljava/lang/Object;
.source "MmsDraftData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[Mms][Draft][MmsDraftData]"


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mBooleanResult:Z

.field private mCreateOrUpdate:I

.field private mMessageUri:Landroid/net/Uri;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;)V
    .locals 2
    .parameter "slideshow"
    .parameter "subject"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v0, "[Mms][Draft][MmsDraftData]"

    const-string v1, "slideshow is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iput-object p1, p0, Lcom/android/mms/draft/MmsDraftData;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 54
    iput-object p2, p0, Lcom/android/mms/draft/MmsDraftData;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "slideshow"
    .parameter "subject"
    .parameter "uri"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 36
    :cond_0
    const-string v0, "[Mms][Draft][MmsDraftData]"

    const-string v1, "[MmsDraftData]Constructor parameters maybe is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_1
    iput-object p1, p0, Lcom/android/mms/draft/MmsDraftData;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 40
    iput-object p2, p0, Lcom/android/mms/draft/MmsDraftData;->mSubject:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/mms/draft/MmsDraftData;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public getBooleanResult()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/mms/draft/MmsDraftData;->mBooleanResult:Z

    return v0
.end method

.method public getCreateOrUpdate()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/mms/draft/MmsDraftData;->mCreateOrUpdate:I

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/draft/MmsDraftData;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/draft/MmsDraftData;->mBody:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/mms/draft/MmsDraftData;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/draft/MmsDraftData;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public setBooleanResult(Z)V
    .locals 0
    .parameter "result"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/mms/draft/MmsDraftData;->mBooleanResult:Z

    .line 83
    return-void
.end method

.method public setCreateOrUpdate(I)V
    .locals 0
    .parameter "create"

    .prologue
    .line 106
    iput p1, p0, Lcom/android/mms/draft/MmsDraftData;->mCreateOrUpdate:I

    .line 107
    return-void
.end method

.method public setMessageUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iput-object p1, p0, Lcom/android/mms/draft/MmsDraftData;->mMessageUri:Landroid/net/Uri;

    .line 79
    :cond_0
    return-void
.end method

.method public setPduBody(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0
    .parameter "pb"

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    iput-object p1, p0, Lcom/android/mms/draft/MmsDraftData;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 73
    :cond_0
    return-void
.end method

.method public setSlideshow(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "slideshow"

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/android/mms/draft/MmsDraftData;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 61
    :cond_0
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .parameter "subject"

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-object p1, p0, Lcom/android/mms/draft/MmsDraftData;->mSubject:Ljava/lang/String;

    .line 67
    :cond_0
    return-void
.end method
