.class public Lcom/mediatek/contacts/util/SimContactPhotoUtils;
.super Ljava/lang/Object;
.source "SimContactPhotoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/SimContactPhotoUtils$SimPhotoColors;,
        Lcom/mediatek/contacts/util/SimContactPhotoUtils$SimPhotoIdAndUri;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SimContactPhotoUtils"


# instance fields
.field private mIccExt:Lcom/android/contacts/ext/IccCardExtension;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getIccCardExtension()Lcom/android/contacts/ext/IccCardExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->mIccExt:Lcom/android/contacts/ext/IccCardExtension;

    return-void
.end method

.method public static getPhotoIdByPhotoUri(Landroid/net/Uri;)J
    .locals 8
    .parameter "uri"

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    .line 57
    .local v0, id:J
    if-nez p0, :cond_0

    .line 58
    const-string v5, "SimContactPhotoUtils"

    const-string v6, "getPhotoIdByPhotoUri uri is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 88
    .end local v0           #id:J
    .local v2, id:J
    :goto_0
    return-wide v2

    .line 62
    .end local v2           #id:J
    .restart local v0       #id:J
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, photoUri:Ljava/lang/String;
    const-string v5, "SimContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPhotoIdByPhotoUri uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v5, "content://sim"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    const-wide/16 v0, -0x1

    .line 87
    :cond_1
    :goto_1
    const-string v5, "SimContactPhotoUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimIdByUri id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 88
    .end local v0           #id:J
    .restart local v2       #id:J
    goto :goto_0

    .line 67
    .end local v2           #id:J
    .restart local v0       #id:J
    :cond_2
    const-string v5, "content://sdn"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    const-wide/16 v0, -0x9

    goto :goto_1

    .line 69
    :cond_3
    const-string v5, "content://sim-10"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 70
    const-wide/16 v0, -0xa

    goto :goto_1

    .line 71
    :cond_4
    const-string v5, "content://sdn-5"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 72
    const-wide/16 v0, -0x5

    goto :goto_1

    .line 73
    :cond_5
    const-string v5, "content://sim-11"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 74
    const-wide/16 v0, -0xb

    goto :goto_1

    .line 75
    :cond_6
    const-string v5, "content://sdn-6"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 76
    const-wide/16 v0, -0x6

    goto :goto_1

    .line 77
    :cond_7
    const-string v5, "content://sim-12"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 78
    const-wide/16 v0, -0xc

    goto :goto_1

    .line 79
    :cond_8
    const-string v5, "content://sdn-7"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 80
    const-wide/16 v0, -0x7

    goto :goto_1

    .line 81
    :cond_9
    const-string v5, "content://sim-13"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 82
    const-wide/16 v0, -0xd

    goto :goto_1

    .line 83
    :cond_a
    const-string v5, "content://sdn-8"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 84
    const-wide/16 v0, -0x8

    goto :goto_1
.end method

.method public static isSimPhotoId(J)Z
    .locals 3
    .parameter "photoId"

    .prologue
    .line 118
    const-string v0, "SimContactPhotoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimPhotoId photoId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x9

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xa

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x5

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xc

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x7

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xb

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x6

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xd

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x8

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimPhotoUri(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 92
    if-nez p0, :cond_1

    .line 93
    const-string v2, "SimContactPhotoUtils"

    const-string v3, "isSimPhotoUri uri is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 97
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, photoUri:Ljava/lang/String;
    const-string v2, "SimContactPhotoUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimPhotoUri uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const-string v2, "content://sim"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-10"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-5"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-11"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-6"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-12"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-7"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sim-13"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content://sdn-8"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getPhotoId(II)J
    .locals 9
    .parameter "isSdnContact"
    .parameter "colorId"

    .prologue
    .line 199
    const-wide/16 v2, 0x0

    .line 200
    .local v2, photoId:J
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 201
    .local v1, isSdn:Z
    :goto_0
    const-string v6, "SimContactPhotoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[getSimType] i = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | isSdn : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, argsForExt:Landroid/os/Bundle;
    const-string v6, "key_is_sdn"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-string v6, "key_color_id"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 209
    iget-object v6, p0, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->mIccExt:Lcom/android/contacts/ext/IccCardExtension;

    const-string v7, "ExtensionForOP09"

    invoke-virtual {v6, v0, v7}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J

    move-result-wide v2

    .line 210
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    .line 211
    const-string v6, "SimContactPhotoUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get photoId from ext: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 256
    .end local v2           #photoId:J
    .local v4, photoId:J
    :goto_1
    return-wide v4

    .line 200
    .end local v0           #argsForExt:Landroid/os/Bundle;
    .end local v1           #isSdn:Z
    .end local v4           #photoId:J
    .restart local v2       #photoId:J
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 218
    .restart local v0       #argsForExt:Landroid/os/Bundle;
    .restart local v1       #isSdn:Z
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 248
    const-string v6, "SimContactPhotoUtils"

    const-string v7, "no match color"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-eqz v1, :cond_6

    .line 250
    const-wide/16 v2, -0x9

    :goto_2
    move-wide v4, v2

    .line 256
    .end local v2           #photoId:J
    .restart local v4       #photoId:J
    goto :goto_1

    .line 220
    .end local v4           #photoId:J
    .restart local v2       #photoId:J
    :pswitch_0
    if-eqz v1, :cond_2

    .line 221
    const-wide/16 v2, -0x5

    goto :goto_2

    .line 223
    :cond_2
    const-wide/16 v2, -0xa

    .line 225
    goto :goto_2

    .line 227
    :pswitch_1
    if-eqz v1, :cond_3

    .line 228
    const-wide/16 v2, -0x6

    goto :goto_2

    .line 230
    :cond_3
    const-wide/16 v2, -0xb

    .line 232
    goto :goto_2

    .line 234
    :pswitch_2
    if-eqz v1, :cond_4

    .line 235
    const-wide/16 v2, -0x7

    goto :goto_2

    .line 237
    :cond_4
    const-wide/16 v2, -0xc

    .line 239
    goto :goto_2

    .line 241
    :pswitch_3
    if-eqz v1, :cond_5

    .line 242
    const-wide/16 v2, -0x8

    goto :goto_2

    .line 244
    :cond_5
    const-wide/16 v2, -0xd

    .line 246
    goto :goto_2

    .line 252
    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_2

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPhotoUri(II)Ljava/lang/String;
    .locals 7
    .parameter "isSdnContact"
    .parameter "colorId"

    .prologue
    .line 136
    const/4 v2, 0x0

    .line 138
    .local v2, photoUri:Ljava/lang/String;
    if-lez p1, :cond_0

    const/4 v1, 0x1

    .line 139
    .local v1, isSdn:Z
    :goto_0
    const-string v4, "SimContactPhotoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onLoadFinished] i = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | isSdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 145
    .local v0, argsForExt:Landroid/os/Bundle;
    const-string v4, "key_is_sdn"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    const-string v4, "key_color_id"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    iget-object v4, p0, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->mIccExt:Lcom/android/contacts/ext/IccCardExtension;

    const-string v5, "ExtensionForOP09"

    invoke-virtual {v4, v0, v5}, Lcom/android/contacts/ext/IccCardExtension;->getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    if-eqz v2, :cond_1

    .line 149
    const-string v4, "SimContactPhotoUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got photoUri from ext: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 195
    .end local v2           #photoUri:Ljava/lang/String;
    .local v3, photoUri:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 138
    .end local v0           #argsForExt:Landroid/os/Bundle;
    .end local v1           #isSdn:Z
    .end local v3           #photoUri:Ljava/lang/String;
    .restart local v2       #photoUri:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 156
    .restart local v0       #argsForExt:Landroid/os/Bundle;
    .restart local v1       #isSdn:Z
    :cond_1
    packed-switch p2, :pswitch_data_0

    .line 186
    const-string v4, "SimContactPhotoUtils"

    const-string v5, "no match color"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz v1, :cond_6

    .line 188
    const-string v2, "content://sdn"

    :goto_2
    move-object v3, v2

    .line 195
    .end local v2           #photoUri:Ljava/lang/String;
    .restart local v3       #photoUri:Ljava/lang/String;
    goto :goto_1

    .line 158
    .end local v3           #photoUri:Ljava/lang/String;
    .restart local v2       #photoUri:Ljava/lang/String;
    :pswitch_0
    if-eqz v1, :cond_2

    .line 159
    const-string v2, "content://sdn-5"

    goto :goto_2

    .line 161
    :cond_2
    const-string v2, "content://sim-10"

    .line 163
    goto :goto_2

    .line 165
    :pswitch_1
    if-eqz v1, :cond_3

    .line 166
    const-string v2, "content://sdn-6"

    goto :goto_2

    .line 168
    :cond_3
    const-string v2, "content://sim-11"

    .line 170
    goto :goto_2

    .line 172
    :pswitch_2
    if-eqz v1, :cond_4

    .line 173
    const-string v2, "content://sdn-7"

    goto :goto_2

    .line 175
    :cond_4
    const-string v2, "content://sim-12"

    .line 177
    goto :goto_2

    .line 179
    :pswitch_3
    if-eqz v1, :cond_5

    .line 180
    const-string v2, "content://sdn-8"

    goto :goto_2

    .line 182
    :cond_5
    const-string v2, "content://sim-13"

    .line 184
    goto :goto_2

    .line 190
    :cond_6
    const-string v2, "content://sim"

    goto :goto_2

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
