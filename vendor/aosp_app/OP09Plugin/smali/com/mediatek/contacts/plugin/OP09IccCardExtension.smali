.class public Lcom/mediatek/contacts/plugin/OP09IccCardExtension;
.super Lcom/android/contacts/ext/IccCardExtension;
.source "OP09IccCardExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/OP09IccCardExtension$SimPhotoIdAndUri;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mPluginContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/contacts/ext/IccCardExtension;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/contacts/ext/IccCardExtension;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->mPluginContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method public static getPhotoIdByPhotoUri(Landroid/net/Uri;)J
    .locals 8
    .parameter "uri"

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    .line 193
    .local v0, id:J
    if-nez p0, :cond_0

    .line 194
    sget-object v5, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    const-string v6, "getPhotoIdByPhotoUri uri is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v0

    .line 212
    .end local v0           #id:J
    .local v2, id:J
    :goto_0
    return-wide v2

    .line 198
    .end local v2           #id:J
    .restart local v0       #id:J
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    .local v4, photoUri:Ljava/lang/String;
    sget-object v5, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

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

    .line 201
    const-string v5, "content://sdn-33"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 202
    const-wide/16 v0, -0x21

    .line 211
    :cond_1
    :goto_1
    sget-object v5, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

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

    .line 212
    .end local v0           #id:J
    .restart local v2       #id:J
    goto :goto_0

    .line 203
    .end local v2           #id:J
    .restart local v0       #id:J
    :cond_2
    const-string v5, "content://sdn-34"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 204
    const-wide/16 v0, -0x22

    goto :goto_1

    .line 205
    :cond_3
    const-string v5, "content://sdn-31"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 206
    const-wide/16 v0, -0x1f

    goto :goto_1

    .line 207
    :cond_4
    const-string v5, "content://sdn-32"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 208
    const-wide/16 v0, -0x20

    goto :goto_1
.end method


# virtual methods
.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "ExtensionForOP09"

    return-object v0
.end method

.method public getIccPhotoDrawable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter "args"
    .parameter "commd"

    .prologue
    const/4 v6, 0x0

    .line 131
    sget-object v7, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getIccPhotoDrawable commd = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v7, "ExtensionForOP09"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-object v6

    .line 136
    :cond_1
    const-string v7, "key_photo_id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 138
    .local v2, photoId:J
    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-nez v7, :cond_2

    .line 139
    const-string v7, "key_photo_uri"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 140
    .local v5, uri:Landroid/net/Uri;
    invoke-static {v5}, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->getPhotoIdByPhotoUri(Landroid/net/Uri;)J

    move-result-wide v2

    .line 142
    .end local v5           #uri:Landroid/net/Uri;
    :cond_2
    const-string v7, "key_dark_theme"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 143
    .local v0, darkTheme:Z
    long-to-int v1, v2

    .line 144
    .local v1, id:I
    const/4 v4, 0x0

    .line 145
    .local v4, res:I
    sget-object v7, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applySimDefaultImage photoId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    packed-switch v1, :pswitch_data_0

    .line 183
    :goto_1
    sget-object v7, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "applySimDefaultImage res = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v4, :cond_0

    .line 185
    iget-object v6, p0, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .line 149
    :pswitch_0
    if-eqz v0, :cond_3

    .line 150
    const v4, 0x7f0200a8

    goto :goto_1

    .line 152
    :cond_3
    const v4, 0x7f02009e

    .line 154
    goto :goto_1

    .line 157
    :pswitch_1
    if-eqz v0, :cond_4

    .line 158
    const v4, 0x7f0200a9

    goto :goto_1

    .line 160
    :cond_4
    const v4, 0x7f02009f

    .line 162
    goto :goto_1

    .line 165
    :pswitch_2
    if-eqz v0, :cond_5

    .line 166
    const v4, 0x7f020094

    goto :goto_1

    .line 168
    :cond_5
    const v4, 0x7f02008a

    .line 170
    goto :goto_1

    .line 173
    :pswitch_3
    if-eqz v0, :cond_6

    .line 174
    const v4, 0x7f020095

    goto :goto_1

    .line 176
    :cond_6
    const v4, 0x7f02008b

    .line 178
    goto :goto_1

    .line 147
    :pswitch_data_0
    .packed-switch -0x22
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getIccPhotoId(Landroid/os/Bundle;Ljava/lang/String;)J
    .locals 7
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 103
    sget-object v4, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIccPhotoId commd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-wide/16 v2, 0x0

    .line 107
    .local v2, photoId:J
    const-string v4, "key_is_sdn"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 108
    .local v1, isSdn:Z
    const-string v4, "key_color_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, colorId:I
    sget-object v4, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[getIccPhotoId] colorId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | isSdn : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 113
    if-eqz v1, :cond_1

    .line 114
    const-wide/16 v2, -0x1f

    .line 126
    :cond_0
    :goto_0
    return-wide v2

    .line 116
    :cond_1
    const-wide/16 v2, -0x21

    goto :goto_0

    .line 118
    :cond_2
    if-nez v0, :cond_0

    .line 119
    if-eqz v1, :cond_3

    .line 120
    const-wide/16 v2, -0x20

    goto :goto_0

    .line 122
    :cond_3
    const-wide/16 v2, -0x22

    goto :goto_0
.end method

.method public getIccPhotoUriString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "args"
    .parameter "commd"

    .prologue
    .line 76
    sget-object v3, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIccPhotoUriString commd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, photoUri:Ljava/lang/String;
    const-string v3, "key_is_sdn"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 80
    .local v1, isSdn:Z
    const-string v3, "key_color_id"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 83
    .local v0, colorId:I
    sget-object v3, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getIccPhotoUriString] colorId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | isSdn : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 85
    if-eqz v1, :cond_1

    .line 86
    const-string v2, "content://sdn-31"

    .line 98
    :cond_0
    :goto_0
    return-object v2

    .line 88
    :cond_1
    const-string v2, "content://sdn-33"

    goto :goto_0

    .line 90
    :cond_2
    if-nez v0, :cond_0

    .line 91
    if-eqz v1, :cond_3

    .line 92
    const-string v2, "content://sdn-32"

    goto :goto_0

    .line 94
    :cond_3
    const-string v2, "content://sdn-34"

    goto :goto_0
.end method

.method public getIconDrawableBySimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "simInfo"
    .parameter "commd"

    .prologue
    const/4 v2, 0x0

    .line 51
    sget-object v3, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIconDrawableBySimInfoRecord commd = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v3, "ExtensionForOP09"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object v2

    .line 55
    :cond_1
    const/4 v1, -0x1

    .line 56
    .local v1, simInfoColor:I
    if-eqz p1, :cond_2

    .line 57
    iget v1, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    .line 60
    :cond_2
    const/4 v0, 0x0

    .line 62
    .local v0, res:I
    if-nez v1, :cond_4

    .line 63
    const v0, 0x7f02009f

    .line 67
    :cond_3
    :goto_1
    if-eqz v0, :cond_0

    .line 68
    iget-object v2, p0, Lcom/mediatek/contacts/plugin/OP09IccCardExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_4
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 65
    const v0, 0x7f02009e

    goto :goto_1
.end method
