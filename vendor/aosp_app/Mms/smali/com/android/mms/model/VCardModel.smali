.class public Lcom/android/mms/model/VCardModel;
.super Lcom/android/mms/model/FileAttachmentModel;
.source "VCardModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/VCardModel"


# instance fields
.field private mContactCount:I

.field private mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 77
    const-string v0, "text/x-vCard"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/model/FileAttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportVCardPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1, p2}, Lcom/android/mms/util/VCardUtils;->getVCardFirstContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VCardModel;->mDisplayName:Ljava/lang/String;

    .line 81
    invoke-static {p1, p2}, Lcom/android/mms/util/VCardUtils;->getVCardContactsCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/model/VCardModel;->mContactCount:I

    .line 82
    const-string v0, "Mms/VCardModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDisplayName(): displayName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/model/VCardModel;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mContactCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/model/VCardModel;->mContactCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/model/FileAttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 90
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportVCardPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {p1, p4}, Lcom/android/mms/util/VCardUtils;->getVCardFirstContactName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/VCardModel;->mDisplayName:Ljava/lang/String;

    .line 92
    invoke-static {p1, p4}, Lcom/android/mms/util/VCardUtils;->getVCardContactsCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/model/VCardModel;->mContactCount:I

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public getContactCount()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/mms/model/VCardModel;->mContactCount:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/model/VCardModel;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method
