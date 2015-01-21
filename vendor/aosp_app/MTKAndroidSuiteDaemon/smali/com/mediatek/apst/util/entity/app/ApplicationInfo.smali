.class public Lcom/mediatek/apst/util/entity/app/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Lcom/mediatek/apst/util/entity/IRawTransferable;
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_DOWNLOADED:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private apkSize:J

.field private dataDirectory:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private iconBytes:[B

.field private label:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private requestedPermissions:[Ljava/lang/String;

.field private sdkVersion:I

.field private sourceDirectory:Ljava/lang/String;

.field private type:I

.field private uid:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApkSize()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->apkSize:J

    return-wide v0
.end method

.method public getDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->dataDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconBytes()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->iconBytes:[B

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestedPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->requestedPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sdkVersion:I

    return v0
.end method

.method public getSourceDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sourceDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->type:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->uid:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public readRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->type:I

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->apkSize:J

    .line 253
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sdkVersion:I

    .line 254
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->uid:I

    .line 255
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->iconBytes:[B

    .line 256
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 257
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->label:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->description:Ljava/lang/String;

    .line 259
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->versionName:Ljava/lang/String;

    .line 260
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sourceDirectory:Ljava/lang/String;

    .line 261
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->dataDirectory:Ljava/lang/String;

    .line 262
    invoke-static {p1}, Lcom/mediatek/apst/util/entity/RawTransUtil;->getStringArray(Ljava/nio/ByteBuffer;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->requestedPermissions:[Ljava/lang/String;

    .line 263
    return-void
.end method

.method public setApkSize(J)V
    .locals 0
    .parameter "apkSize"

    .prologue
    .line 201
    iput-wide p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->apkSize:J

    .line 202
    return-void
.end method

.method public setDataDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "dataDirectory"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->dataDirectory:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "description"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->description:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setIconBytes([B)V
    .locals 0
    .parameter "iconBytes"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->iconBytes:[B

    .line 218
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->label:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setRequestedPermissions([Ljava/lang/String;)V
    .locals 0
    .parameter "requestedPermissions"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->requestedPermissions:[Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setSdkVersion(I)V
    .locals 0
    .parameter "sdkVersion"

    .prologue
    .line 209
    iput p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sdkVersion:I

    .line 210
    return-void
.end method

.method public setSourceDirectory(Ljava/lang/String;)V
    .locals 0
    .parameter "sourceDirectory"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sourceDirectory:Ljava/lang/String;

    .line 222
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 181
    iput p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->type:I

    .line 182
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 213
    iput p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->uid:I

    .line 214
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .parameter "versionName"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->versionName:Ljava/lang/String;

    .line 194
    return-void
.end method

.method public writeRaw(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 233
    iget v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->type:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 234
    iget-wide v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->apkSize:J

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 236
    iget v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sdkVersion:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 237
    iget v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->iconBytes:[B

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putBytes(Ljava/nio/ByteBuffer;[B)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->label:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->description:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->versionName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->sourceDirectory:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->dataDirectory:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/mediatek/apst/util/entity/app/ApplicationInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mediatek/apst/util/entity/RawTransUtil;->putStringArray(Ljava/nio/ByteBuffer;[Ljava/lang/String;)V

    .line 246
    return-void
.end method
