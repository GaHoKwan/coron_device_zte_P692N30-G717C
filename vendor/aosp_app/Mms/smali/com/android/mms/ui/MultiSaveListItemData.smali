.class public Lcom/android/mms/ui/MultiSaveListItemData;
.super Ljava/lang/Object;
.source "MultiSaveListItemData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MultiSaveListItemData"

.field private static sThumbDefaultAudio:Landroid/graphics/Bitmap;

.field private static sThumbDefaultImage:Landroid/graphics/Bitmap;

.field private static sThumbDefaultVCalendar:Landroid/graphics/Bitmap;

.field private static sThumbDefaultVCard:Landroid/graphics/Bitmap;

.field private static sThumbDefaultVideo:Landroid/graphics/Bitmap;


# instance fields
.field private mDataUri:Landroid/net/Uri;

.field private mFallbackName:Ljava/lang/String;

.field private mItemSelected:Z

.field private mMessageId:J

.field private mName:Ljava/lang/String;

.field private mPduPart:Lcom/google/android/mms/pdu/PduPart;

.field private mSize:Ljava/lang/String;

.field private mThumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;J)V
    .locals 3
    .parameter "context"
    .parameter "part"
    .parameter "msgid"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mItemSelected:Z

    .line 100
    iput-object p2, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mPduPart:Lcom/google/android/mms/pdu/PduPart;

    .line 101
    iput-wide p3, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mMessageId:J

    .line 102
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mFallbackName:Ljava/lang/String;

    .line 103
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mDataUri:Landroid/net/Uri;

    .line 104
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MultiSaveListItemData;->getNameFromPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Lcom/android/mms/ui/MultiSaveListItemData;->getSizeFromPart(Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mSize:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 107
    .local v0, density:F
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getDesiredThumbnailWidth(F)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getDesiredThumbnailHeight(F)I

    move-result v2

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/mms/ui/MultiSaveListItemData;->getThumbnailFromPart(Lcom/google/android/mms/pdu/PduPart;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mThumbnail:Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;JI)V
    .locals 3
    .parameter "context"
    .parameter "part"
    .parameter "msgid"
    .parameter "flag"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mItemSelected:Z

    .line 114
    iput-object p2, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mPduPart:Lcom/google/android/mms/pdu/PduPart;

    .line 115
    iput-wide p3, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mMessageId:J

    .line 116
    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mFallbackName:Ljava/lang/String;

    .line 117
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MultiSaveListItemData;->getNameFromPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mName:Ljava/lang/String;

    .line 118
    invoke-virtual {p2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/MultiSaveListItemData;->getSizeFromData(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mSize:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 120
    .local v0, density:F
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getDesiredThumbnailWidth(F)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiSaveListItemData;->getDesiredThumbnailHeight(F)I

    move-result v2

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/android/mms/ui/MultiSaveListItemData;->getThumbnailFromPart(Lcom/google/android/mms/pdu/PduPart;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mThumbnail:Landroid/graphics/Bitmap;

    .line 122
    return-void
.end method

.method private getDesiredThumbnailHeight(F)I
    .locals 1
    .parameter "density"

    .prologue
    .line 230
    const/high16 v0, 0x4248

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private getDesiredThumbnailWidth(F)I
    .locals 1
    .parameter "density"

    .prologue
    .line 226
    const/high16 v0, 0x4248

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private getNameFromPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 9
    .parameter "part"

    .prologue
    .line 158
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v3

    .line 160
    .local v3, mylocation:[B
    if-nez v3, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v3

    .line 164
    :cond_0
    if-nez v3, :cond_1

    .line 165
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v3

    .line 169
    :cond_1
    if-nez v3, :cond_5

    .line 171
    iget-object v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mFallbackName:Ljava/lang/String;

    .line 177
    .local v1, fileName:Ljava/lang/String;
    :goto_0
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, index:I
    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 178
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 179
    .local v5, type:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, extension:Ljava/lang/String;
    if-nez v0, :cond_2

    const-string v6, "audio/amr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 182
    const-string v0, "amr"

    .line 185
    :cond_2
    if-nez v0, :cond_3

    const-string v6, "text/x-vcard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 186
    const-string v0, "vcf"

    .line 189
    :cond_3
    if-nez v0, :cond_4

    const-string v6, "text/x-vcalendar"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 190
    const-string v0, "vcs"

    .line 197
    .end local v5           #type:Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v4, "[:\\/?,. ]"

    .line 198
    .local v4, regex:Ljava/lang/String;
    const-string v6, "[:\\/?,. ]"

    const-string v7, "_"

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    const-string v6, "<"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    const-string v6, ">"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v6, "Mms/MultiSaveListItemData"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getNameFromPart, fileName is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", extension is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 173
    .end local v0           #extension:Ljava/lang/String;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #index:I
    .end local v4           #regex:Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .restart local v1       #fileName:Ljava/lang/String;
    goto/16 :goto_0

    .line 193
    .restart local v2       #index:I
    :cond_6
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    .restart local v0       #extension:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSizeFromData(I)Ljava/lang/String;
    .locals 8
    .parameter "size"

    .prologue
    .line 125
    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%.2f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-double v4, p1

    const-wide/high16 v6, 0x4090

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSizeFromPart(Lcom/google/android/mms/pdu/PduPart;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 12
    .parameter "part"
    .parameter "cr"

    .prologue
    .line 206
    const-wide/16 v2, 0x0

    .line 207
    .local v2, size:J
    const/4 v1, 0x0

    .line 210
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mDataUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {p2, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 213
    if-eqz v1, :cond_0

    .line 214
    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :cond_0
    :goto_0
    const-wide/16 v4, 0x400

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 213
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 214
    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 213
    :cond_1
    throw v4
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "Mms/MultiSaveListItemData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSizeFromPart, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    const-string v4, "Mms/MultiSaveListItemData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSizeFromPart, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 222
    .end local v0           #e:Ljava/io/IOException;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-double v8, v2

    const-wide/high16 v10, 0x4090

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private getThumbnailFromPart(Lcom/google/android/mms/pdu/PduPart;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "part"
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 234
    new-instance v12, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/String;-><init>([B)V

    .line 235
    .local v12, type:Ljava/lang/String;
    invoke-static {v12}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isImageType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 236
    const/4 v6, 0x0

    .line 237
    .local v6, input:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 238
    .local v7, inputForDegree:Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 240
    .local v9, raw:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MultiSaveListItemData;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/MultiSaveListItemData;->mDataUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    .line 242
    const/4 v8, 0x0

    .line 243
    .local v8, orientation:I
    const/4 v2, 0x0

    .line 244
    .local v2, degree:I
    if-eqz v6, :cond_1

    .line 245
    new-instance v5, Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;

    invoke-direct {v5, v7}, Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 246
    .local v5, exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    if-eqz v5, :cond_0

    .line 247
    const-string v13, "Orientation"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v8

    .line 248
    invoke-static {v8}, Lcom/android/mms/ui/UriImage;->getExifRotation(I)I

    move-result v2

    .line 250
    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v6, v13, v14}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 251
    invoke-static {v9, v2}, Lcom/android/mms/ui/UriImage;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v9

    .line 264
    .end local v5           #exif:Lcom/mediatek/encapsulation/android/media/EncapsulatedExifInterface;
    :cond_1
    if-eqz v6, :cond_2

    .line 266
    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d

    .line 271
    :cond_2
    :goto_0
    if-eqz v7, :cond_3

    .line 273
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e

    .line 280
    .end local v2           #degree:I
    .end local v8           #orientation:I
    :cond_3
    :goto_1
    if-nez v9, :cond_b

    .line 281
    sget-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultImage:Landroid/graphics/Bitmap;

    if-nez v13, :cond_4

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200dd

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sput-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultImage:Landroid/graphics/Bitmap;

    .line 284
    :cond_4
    sget-object v11, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultImage:Landroid/graphics/Bitmap;

    .line 336
    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #inputForDegree:Ljava/io/InputStream;
    .end local v9           #raw:Landroid/graphics/Bitmap;
    :cond_5
    :goto_2
    return-object v11

    .line 253
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v7       #inputForDegree:Ljava/io/InputStream;
    .restart local v9       #raw:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 254
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    if-eqz v6, :cond_6

    .line 266
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 271
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_3
    if-eqz v7, :cond_3

    .line 273
    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 274
    :catch_1
    move-exception v3

    .line 275
    .local v3, e:Ljava/io/IOException;
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    :goto_4
    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 255
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 256
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_6
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 264
    if-eqz v6, :cond_7

    .line 266
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    .line 271
    :cond_7
    :goto_5
    if-eqz v7, :cond_3

    .line 273
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 274
    :catch_3
    move-exception v3

    .line 275
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    .line 257
    .end local v3           #e:Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 258
    .local v4, ex:Ljava/lang/OutOfMemoryError;
    :try_start_9
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 259
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 264
    .end local v4           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v13

    if-eqz v6, :cond_8

    .line 266
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 271
    :cond_8
    :goto_6
    if-eqz v7, :cond_9

    .line 273
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 264
    :cond_9
    :goto_7
    throw v13

    .line 260
    :catch_5
    move-exception v3

    .line 261
    .local v3, e:Ljava/lang/IllegalArgumentException;
    :try_start_c
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200d3

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v11

    .line 264
    if-eqz v6, :cond_a

    .line 266
    :try_start_d
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    .line 271
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :cond_a
    :goto_8
    if-eqz v7, :cond_5

    .line 273
    :try_start_e
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_2

    .line 274
    :catch_6
    move-exception v3

    .line 275
    .local v3, e:Ljava/io/IOException;
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 286
    .end local v3           #e:Ljava/io/IOException;
    :cond_b
    const/4 v13, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v9, v0, v1, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 287
    .local v11, thumb:Landroid/graphics/Bitmap;
    if-eq v11, v9, :cond_5

    .line 288
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 292
    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #inputForDegree:Ljava/io/InputStream;
    .end local v9           #raw:Landroid/graphics/Bitmap;
    .end local v11           #thumb:Landroid/graphics/Bitmap;
    :cond_c
    invoke-static {v12}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 293
    new-instance v10, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v10}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 294
    .local v10, retriever:Landroid/media/MediaMetadataRetriever;
    const/4 v9, 0x0

    .line 297
    .restart local v9       #raw:Landroid/graphics/Bitmap;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiSaveListItemData;->mDataUri:Landroid/net/Uri;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0, v13}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 298
    const-wide/16 v13, -0x1

    invoke-virtual {v10, v13, v14}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v9

    .line 300
    :try_start_10
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_f

    .line 308
    :goto_9
    if-nez v9, :cond_e

    .line 309
    sget-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVideo:Landroid/graphics/Bitmap;

    if-nez v13, :cond_d

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200de

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sput-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVideo:Landroid/graphics/Bitmap;

    .line 312
    :cond_d
    sget-object v11, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVideo:Landroid/graphics/Bitmap;

    .restart local v11       #thumb:Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 300
    .end local v11           #thumb:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v13

    :try_start_11
    invoke-virtual {v10}, Landroid/media/MediaMetadataRetriever;->release()V

    throw v13
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_f

    .line 302
    :catch_7
    move-exception v13

    goto :goto_9

    .line 314
    :cond_e
    const/4 v13, 0x1

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v9, v0, v1, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 315
    .restart local v11       #thumb:Landroid/graphics/Bitmap;
    if-eq v11, v9, :cond_5

    .line 316
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2

    .line 320
    .end local v9           #raw:Landroid/graphics/Bitmap;
    .end local v10           #retriever:Landroid/media/MediaMetadataRetriever;
    .end local v11           #thumb:Landroid/graphics/Bitmap;
    :cond_f
    invoke-static {v12}, Lcom/mediatek/encapsulation/com/google/android/mms/EncapsulatedContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "application/ogg"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 321
    :cond_10
    sget-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultAudio:Landroid/graphics/Bitmap;

    if-nez v13, :cond_11

    .line 322
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200dc

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sput-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultAudio:Landroid/graphics/Bitmap;

    .line 324
    :cond_11
    sget-object v11, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultAudio:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 325
    :cond_12
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->isVCard(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 326
    sget-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVCard:Landroid/graphics/Bitmap;

    if-nez v13, :cond_13

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200ee

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sput-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVCard:Landroid/graphics/Bitmap;

    .line 329
    :cond_13
    sget-object v11, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVCard:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 330
    :cond_14
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/FileAttachmentModel;->isVCalendar(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v13

    if-eqz v13, :cond_16

    .line 331
    sget-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVCalendar:Landroid/graphics/Bitmap;

    if-nez v13, :cond_15

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200ec

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    sput-object v13, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVCalendar:Landroid/graphics/Bitmap;

    .line 334
    :cond_15
    sget-object v11, Lcom/android/mms/ui/MultiSaveListItemData;->sThumbDefaultVCalendar:Landroid/graphics/Bitmap;

    goto/16 :goto_2

    .line 336
    :cond_16
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 267
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v7       #inputForDegree:Ljava/io/InputStream;
    .restart local v9       #raw:Landroid/graphics/Bitmap;
    :catch_8
    move-exception v3

    .line 268
    .restart local v3       #e:Ljava/io/IOException;
    const-string v14, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 274
    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 275
    .restart local v3       #e:Ljava/io/IOException;
    const-string v14, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 267
    .local v3, e:Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v3

    .line 268
    .local v3, e:Ljava/io/IOException;
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 267
    :catch_b
    move-exception v3

    .line 268
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 267
    .local v3, e:Ljava/lang/IllegalArgumentException;
    :catch_c
    move-exception v3

    .line 268
    .local v3, e:Ljava/io/IOException;
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 267
    .end local v3           #e:Ljava/io/IOException;
    .restart local v2       #degree:I
    .restart local v8       #orientation:I
    :catch_d
    move-exception v3

    .line 268
    .restart local v3       #e:Ljava/io/IOException;
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 274
    .end local v3           #e:Ljava/io/IOException;
    :catch_e
    move-exception v3

    .line 275
    .restart local v3       #e:Ljava/io/IOException;
    const-string v13, "Mms/MultiSaveListItemData"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 304
    .end local v2           #degree:I
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #input:Ljava/io/InputStream;
    .end local v7           #inputForDegree:Ljava/io/InputStream;
    .end local v8           #orientation:I
    .restart local v10       #retriever:Landroid/media/MediaMetadataRetriever;
    :catch_f
    move-exception v13

    goto/16 :goto_9
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPduPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mPduPart:Lcom/google/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mSize:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mItemSelected:Z

    return v0
.end method

.method public setSelectedState(Z)V
    .locals 0
    .parameter "isSelected"

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mItemSelected:Z

    .line 150
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MultiSaveListItemData from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MultiSaveListItemData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MultiSaveListItemData;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",selected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MultiSaveListItemData;->mItemSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
