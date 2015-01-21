.class Lcom/android/providers/downloads/OmaDescription;
.super Ljava/lang/Object;
.source "OmaDescription.java"


# static fields
.field protected static final DDVERSION:Ljava/lang/String; = "DDVersion"

.field protected static final DESCRIPTION:Ljava/lang/String; = "Description"

.field protected static final ICON_URL:Ljava/lang/String; = "iconURI"

.field protected static final INFO_URL:Ljava/lang/String; = "infoURL"

.field protected static final INSTALL_NOTIFY_URL:Ljava/lang/String; = "installNotifyURI"

.field protected static final INSTALL_PARAM:Ljava/lang/String; = "installParam"

.field protected static final NAME:Ljava/lang/String; = "name"

.field protected static final NEXT_URL:Ljava/lang/String; = "nextURL"

.field protected static final OBJECT_URL:Ljava/lang/String; = "objectURI"

.field protected static final ROOT:Ljava/lang/String; = "media"

.field protected static final SIZE:Ljava/lang/String; = "size"

.field protected static final STATUS_CODE:Ljava/lang/String; = "statusCode"

.field private static final TAG:Ljava/lang/String; = "OmaDescription"

.field protected static final TYPE:Ljava/lang/String; = "type"

.field protected static final VENDOR:Ljava/lang/String; = "vendor"


# instance fields
.field private mDDVersion:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mIconUrl:Ljava/net/URL;

.field private mInfoUrl:Ljava/net/URL;

.field private mInstallNotifyUrl:Ljava/net/URL;

.field private mInstallParam:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNextUrl:Ljava/net/URL;

.field private mObjectUrl:Ljava/net/URL;

.field private mSize:I

.field private mStatusCode:I

.field private mType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Lcom/android/providers/downloads/OmaDescription;->mSize:I

    .line 50
    iput v1, p0, Lcom/android/providers/downloads/OmaDescription;->mStatusCode:I

    .line 51
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mDDVersion:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mDescription:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallParam:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mName:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mVendor:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mIconUrl:Ljava/net/URL;

    .line 57
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mInfoUrl:Ljava/net/URL;

    .line 58
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallNotifyUrl:Ljava/net/URL;

    .line 59
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mObjectUrl:Ljava/net/URL;

    .line 60
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mNextUrl:Ljava/net/URL;

    .line 61
    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mType:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mType:Ljava/util/ArrayList;

    .line 84
    return-void
.end method

.method protected static readObject(Ljava/lang/String;)Lcom/android/providers/downloads/OmaDescription;
    .locals 14
    .parameter "str"

    .prologue
    .line 197
    const/4 v2, 0x0

    .line 198
    .local v2, key:I
    const/4 v9, 0x1

    .line 199
    .local v9, value:I
    const/4 v3, 0x2

    .line 200
    .local v3, pair:I
    const/4 v6, 0x0

    .line 202
    .local v6, url:Ljava/net/URL;
    new-instance v0, Lcom/android/providers/downloads/OmaDescription;

    invoke-direct {v0}, Lcom/android/providers/downloads/OmaDescription;-><init>()V

    .line 204
    .local v0, component:Lcom/android/providers/downloads/OmaDescription;
    if-eqz p0, :cond_d

    .line 205
    const-string v11, ","

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, tokens:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, x:I
    :goto_0
    array-length v11, v5

    if-ge v10, v11, :cond_d

    .line 208
    aget-object v11, v5, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ltz v11, :cond_0

    aget-object v11, v5, v10

    const-string v12, "[a-zA-Z]+:.+"

    invoke-virtual {v11, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 213
    aget-object v11, v5, v10

    const-string v12, ":"

    const/4 v13, 0x2

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, result:[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v11, v4

    if-ne v11, v3, :cond_0

    .line 216
    aget-object v11, v4, v2

    const-string v12, "DDVersion"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 217
    aget-object v11, v4, v9

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setDDVersion(Ljava/lang/String;)V

    .line 207
    .end local v4           #result:[Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 218
    .restart local v4       #result:[Ljava/lang/String;
    :cond_1
    aget-object v11, v4, v2

    const-string v12, "Description"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 219
    aget-object v11, v4, v9

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setDescription(Ljava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_2
    aget-object v11, v4, v2

    const-string v12, "iconURI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 222
    :try_start_0
    new-instance v7, Ljava/net/URL;

    aget-object v11, v4, v9

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v6           #url:Ljava/net/URL;
    .local v7, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v0, v7}, Lcom/android/providers/downloads/OmaDescription;->setIconUrl(Ljava/net/URL;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_b

    move-object v6, v7

    .line 226
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/net/MalformedURLException;
    :goto_2
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 227
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_3
    aget-object v11, v4, v2

    const-string v12, "infoURL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 229
    :try_start_2
    new-instance v7, Ljava/net/URL;

    aget-object v11, v4, v9

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 230
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :try_start_3
    invoke-virtual {v0, v7}, Lcom/android/providers/downloads/OmaDescription;->setInfoUrl(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_a

    move-object v6, v7

    .line 233
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_1

    .line 231
    :catch_1
    move-exception v1

    .line 232
    .restart local v1       #e:Ljava/net/MalformedURLException;
    :goto_3
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 234
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_4
    aget-object v11, v4, v2

    const-string v12, "installNotifyURI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 236
    :try_start_4
    new-instance v7, Ljava/net/URL;

    aget-object v11, v4, v9

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    .line 237
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :try_start_5
    invoke-virtual {v0, v7}, Lcom/android/providers/downloads/OmaDescription;->setInstallNotifyUrl(Ljava/net/URL;)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_9

    move-object v6, v7

    .line 240
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_1

    .line 238
    :catch_2
    move-exception v1

    .line 239
    .restart local v1       #e:Ljava/net/MalformedURLException;
    :goto_4
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_5
    aget-object v11, v4, v2

    const-string v12, "installParam"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 242
    aget-object v11, v4, v9

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setInstallParam(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 243
    :cond_6
    aget-object v11, v4, v2

    const-string v12, "objectURI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 245
    :try_start_6
    new-instance v7, Ljava/net/URL;

    aget-object v11, v4, v9

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_3

    .line 246
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :try_start_7
    invoke-virtual {v0, v7}, Lcom/android/providers/downloads/OmaDescription;->setObjectUrl(Ljava/net/URL;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_8

    move-object v6, v7

    .line 249
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto/16 :goto_1

    .line 247
    :catch_3
    move-exception v1

    .line 248
    .restart local v1       #e:Ljava/net/MalformedURLException;
    :goto_5
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 250
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_7
    aget-object v11, v4, v2

    const-string v12, "name"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 251
    aget-object v11, v4, v9

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setName(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 252
    :cond_8
    aget-object v11, v4, v2

    const-string v12, "nextURL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 254
    :try_start_8
    new-instance v7, Ljava/net/URL;

    aget-object v11, v4, v9

    invoke-direct {v7, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_4

    .line 255
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :try_start_9
    invoke-virtual {v0, v7}, Lcom/android/providers/downloads/OmaDescription;->setNextUrl(Ljava/net/URL;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_7

    move-object v6, v7

    .line 258
    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto/16 :goto_1

    .line 256
    :catch_4
    move-exception v1

    .line 257
    .restart local v1       #e:Ljava/net/MalformedURLException;
    :goto_6
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 259
    .end local v1           #e:Ljava/net/MalformedURLException;
    :cond_9
    aget-object v11, v4, v2

    const-string v12, "size"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 261
    :try_start_a
    aget-object v11, v4, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 262
    .local v8, val:I
    invoke-virtual {v0, v8}, Lcom/android/providers/downloads/OmaDescription;->setSize(I)V
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 263
    .end local v8           #val:I
    :catch_5
    move-exception v1

    .line 264
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 266
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_a
    aget-object v11, v4, v2

    const-string v12, "statusCode"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 268
    :try_start_b
    aget-object v11, v4, v9

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 269
    .restart local v8       #val:I
    invoke-virtual {v0, v8}, Lcom/android/providers/downloads/OmaDescription;->setStatusCode(I)V
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    .line 270
    .end local v8           #val:I
    :catch_6
    move-exception v1

    .line 271
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v11, "DownloadManager/OMA"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 273
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_b
    aget-object v11, v4, v2

    const-string v12, "type"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 274
    aget-object v11, v4, v9

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 275
    :cond_c
    aget-object v11, v4, v2

    const-string v12, "vendor"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 276
    aget-object v11, v4, v9

    invoke-virtual {v0, v11}, Lcom/android/providers/downloads/OmaDescription;->setVendor(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 282
    .end local v4           #result:[Ljava/lang/String;
    .end local v5           #tokens:[Ljava/lang/String;
    .end local v10           #x:I
    :cond_d
    return-object v0

    .line 256
    .end local v6           #url:Ljava/net/URL;
    .restart local v4       #result:[Ljava/lang/String;
    .restart local v5       #tokens:[Ljava/lang/String;
    .restart local v7       #url:Ljava/net/URL;
    .restart local v10       #x:I
    :catch_7
    move-exception v1

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto :goto_6

    .line 247
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_8
    move-exception v1

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto/16 :goto_5

    .line 238
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_9
    move-exception v1

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto/16 :goto_4

    .line 231
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_a
    move-exception v1

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto/16 :goto_3

    .line 224
    .end local v6           #url:Ljava/net/URL;
    .restart local v7       #url:Ljava/net/URL;
    :catch_b
    move-exception v1

    move-object v6, v7

    .end local v7           #url:Ljava/net/URL;
    .restart local v6       #url:Ljava/net/URL;
    goto/16 :goto_2
.end method

.method protected static writeObject(Lcom/android/providers/downloads/OmaDescription;)Ljava/lang/String;
    .locals 6
    .parameter "component"

    .prologue
    const/4 v5, -0x1

    .line 395
    const/4 v2, 0x0

    .line 397
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mDDVersion:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DDVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mDDVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 401
    :cond_0
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Description"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    :cond_1
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mIconUrl:Ljava/net/URL;

    if-eqz v3, :cond_2

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "iconURI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mIconUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    :cond_2
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mInfoUrl:Ljava/net/URL;

    if-eqz v3, :cond_3

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "infoURL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mInfoUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    :cond_3
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallNotifyUrl:Ljava/net/URL;

    if-eqz v3, :cond_4

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "installNotifyURI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallNotifyUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 417
    :cond_4
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallParam:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "installParam"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallParam:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    :cond_5
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mObjectUrl:Ljava/net/URL;

    if-eqz v3, :cond_6

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "objectURI"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mObjectUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 425
    :cond_6
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mName:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 429
    :cond_7
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mNextUrl:Ljava/net/URL;

    if-eqz v3, :cond_8

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nextURL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mNextUrl:Ljava/net/URL;

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 433
    :cond_8
    iget v3, p0, Lcom/android/providers/downloads/OmaDescription;->mSize:I

    if-eq v3, v5, :cond_9

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "size"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/providers/downloads/OmaDescription;->mSize:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 438
    :cond_9
    iget v3, p0, Lcom/android/providers/downloads/OmaDescription;->mStatusCode:I

    if-eq v3, v5, :cond_a

    .line 440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "statusCode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/providers/downloads/OmaDescription;->mStatusCode:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 443
    :cond_a
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mType:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    .line 444
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mType:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 445
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 449
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/android/providers/downloads/OmaDescription;->mVendor:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 450
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "vendor"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/OmaDescription;->mVendor:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 453
    :cond_c
    return-object v2
.end method


# virtual methods
.method protected getDDVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mDDVersion:Ljava/lang/String;

    return-object v0
.end method

.method protected getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method protected getIconUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mIconUrl:Ljava/net/URL;

    return-object v0
.end method

.method protected getInfoUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mInfoUrl:Ljava/net/URL;

    return-object v0
.end method

.method protected getInstallNotifyUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallNotifyUrl:Ljava/net/URL;

    return-object v0
.end method

.method protected getInstallParam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallParam:Ljava/lang/String;

    return-object v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getNextUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mNextUrl:Ljava/net/URL;

    return-object v0
.end method

.method protected getObjectUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mObjectUrl:Ljava/net/URL;

    return-object v0
.end method

.method protected getSize()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/android/providers/downloads/OmaDescription;->mSize:I

    return v0
.end method

.method protected getStatusCode()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/providers/downloads/OmaDescription;->mStatusCode:I

    return v0
.end method

.method protected getType()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mType:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method protected setDDVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mDDVersion:Ljava/lang/String;

    .line 291
    return-void
.end method

.method protected setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mDescription:Ljava/lang/String;

    .line 299
    return-void
.end method

.method protected setIconUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mIconUrl:Ljava/net/URL;

    .line 307
    return-void
.end method

.method protected setInfoUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mInfoUrl:Ljava/net/URL;

    .line 315
    return-void
.end method

.method protected setInstallNotifyUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallNotifyUrl:Ljava/net/URL;

    .line 323
    return-void
.end method

.method protected setInstallParam(Ljava/lang/String;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mInstallParam:Ljava/lang/String;

    .line 331
    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mName:Ljava/lang/String;

    .line 347
    return-void
.end method

.method protected setNextUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mNextUrl:Ljava/net/URL;

    .line 355
    return-void
.end method

.method protected setObjectUrl(Ljava/net/URL;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mObjectUrl:Ljava/net/URL;

    .line 339
    return-void
.end method

.method protected setSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 362
    iput p1, p0, Lcom/android/providers/downloads/OmaDescription;->mSize:I

    .line 363
    return-void
.end method

.method protected setStatusCode(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 370
    iput p1, p0, Lcom/android/providers/downloads/OmaDescription;->mStatusCode:I

    .line 371
    return-void
.end method

.method protected setType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/providers/downloads/OmaDescription;->mType:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    return-void
.end method

.method protected setVendor(Ljava/lang/String;)V
    .locals 0
    .parameter "vendor"

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/providers/downloads/OmaDescription;->mVendor:Ljava/lang/String;

    .line 387
    return-void
.end method
