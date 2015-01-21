.class public Lcom/android/providers/drm/OmaDrmHelper;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "DRM/OmaDrmHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkClock(Lcom/mediatek/drm/OmaDrmClient;)Z
    .locals 6
    .parameter "client"

    .prologue
    .line 169
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e6

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 172
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "checkClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 176
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v3, "valid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 226
    invoke-virtual {p0}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 227
    .local v0, data:[B
    const-string v2, ""

    .line 228
    .local v2, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 231
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2           #message:Ljava/lang/String;
    const-string v3, "US-ASCII"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .restart local v2       #message:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStringFromDrmInfo : >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-object v2

    .line 232
    .end local v2           #message:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 233
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v3, "DRM/OmaDrmHelper"

    const-string v4, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v2, ""

    .restart local v2       #message:Ljava/lang/String;
    goto :goto_0
.end method

.method public static loadClock(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .parameter "client"

    .prologue
    .line 127
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 130
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "loadClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 134
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static loadDeviceId(Lcom/mediatek/drm/OmaDrmClient;)Ljava/lang/String;
    .locals 6
    .parameter "client"

    .prologue
    .line 189
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e6

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 192
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "loadDeviceId"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 196
    .local v1, info:Landroid/drm/DrmInfo;
    invoke-static {v1}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, id:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadDeviceId : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v0
.end method

.method public static saveClock(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .parameter "client"

    .prologue
    .line 148
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 151
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "saveClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 155
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static saveDeviceId(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)I
    .locals 6
    .parameter "client"
    .parameter "deviceId"

    .prologue
    .line 210
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 213
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "saveDeviceId"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 215
    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 218
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDeviceId : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static updateClock(Lcom/mediatek/drm/OmaDrmClient;I)I
    .locals 6
    .parameter "client"
    .parameter "offset"

    .prologue
    .line 63
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 66
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "updateClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v3, "data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 71
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static updateOffset(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .parameter "client"

    .prologue
    .line 106
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 109
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "updateOffset"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 113
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOffset : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static updateTimeBase(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .parameter "client"

    .prologue
    .line 85
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 88
    .local v2, request:Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "updateTimeBase"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 92
    .local v0, info:Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/android/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, message:Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTimeBase : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method
