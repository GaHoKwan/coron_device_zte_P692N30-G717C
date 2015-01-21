.class public Ltmsdk/common/module/software/AppEntity;
.super Ltmsdk/common/BaseEntity;
.source "SourceFile"


# static fields
.field public static final FLAG_APK:I = 0x40

.field public static final FLAG_APPNAME:I = 0x800

.field public static final FLAG_APP_INFO:I = 0x1

.field public static final FLAG_APP_INFO_SIMPLE:I = 0x2

.field public static final FLAG_ICON:I = 0x4

.field public static final FLAG_PERMISSIONS:I = 0x20

.field public static final FLAG_PKGNAME:I = 0x80

.field public static final FLAG_SIGNATURE:I = 0x10

.field public static final FLAG_UID:I = 0x400

.field public static final FLAG_VERSION:I = 0x8

.field public static final FLAG_VERSIONCODE:I = 0x200

.field public static final FLAG_VERSIONNAME:I = 0x100

.field public static final KEY_APK_PATH_STR:Ljava/lang/String; = "apkPath"

.field public static final KEY_APP_NAME_STR:Ljava/lang/String; = "appName"

.field public static final KEY_ICON_DRAWABLE:Ljava/lang/String; = "icon"

.field public static final KEY_IS_APK_BOOL:Ljava/lang/String; = "isApk"

.field public static final KEY_IS_SYSTEM_BOOL:Ljava/lang/String; = "isSystem"

.field public static final KEY_LAST_MODIFIED_LONG:Ljava/lang/String; = "lastModified"

.field public static final KEY_PERMISSION_STR_ARRAY:Ljava/lang/String; = "permissions"

.field public static final KEY_PKG_NAME_STR:Ljava/lang/String; = "pkgName"

.field public static final KEY_SIGNATURE_COMPANY_STR:Ljava/lang/String; = "signatureCompany"

.field public static final KEY_SIGNATURE_MD5_STR:Ljava/lang/String; = "signatureCermMD5"

.field public static final KEY_SIZE_LONG:Ljava/lang/String; = "size"

.field public static final KEY_UID:Ljava/lang/String; = "uid"

.field public static final KEY_VERSION_CODE_INT:Ljava/lang/String; = "versionCode"

.field public static final KEY_VERSION_STR:Ljava/lang/String; = "version"


# instance fields
.field private AY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ltmsdk/common/BaseEntity;-><init>()V

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    return-void
.end method

.method private c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "obj"

    .prologue
    .line 417
    if-nez p1, :cond_0

    .line 418
    const/4 p1, 0x0

    .line 423
    .end local p1
    :goto_0
    return-object p1

    .line 420
    .restart local p1
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 421
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 423
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 175
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "apkPath"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 388
    .local v0, obj:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "appName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, obj:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCertMD5()Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "signatureCermMD5"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, obj:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCompany()Ljava/lang/String;
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "signatureCompany"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 354
    .local v0, obj:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .end local v0           #obj:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastModifiedTime()J
    .locals 3

    .prologue
    .line 319
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "lastModified"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 183
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "pkgName"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, obj:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPermissions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 370
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 371
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, [Ljava/lang/String;

    .end local v0           #obj:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSize()J
    .locals 3

    .prologue
    .line 302
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Long;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getUid()I
    .locals 3

    .prologue
    .line 208
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "uid"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 209
    .local v0, uid:I
    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 268
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    .local v0, obj:Ljava/lang/Object;
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/AppEntity;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVersionCode()I
    .locals 3

    .prologue
    .line 285
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "versionCode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApk()Z
    .locals 3

    .prologue
    .line 404
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "isApk"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 405
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 3

    .prologue
    .line 234
    iget-object v1, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v2, "isSystem"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, obj:Ljava/lang/Object;
    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #obj:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 166
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setApkFlag(Z)V
    .locals 3
    .parameter "isApk"

    .prologue
    .line 413
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "isApk"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 2
    .parameter "apkPath"

    .prologue
    .line 396
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "apkPath"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 226
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "appName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    return-void
.end method

.method public setCertMD5(Ljava/lang/String;)V
    .locals 2
    .parameter "certMD5"

    .prologue
    .line 345
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "signatureCermMD5"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 2
    .parameter "company"

    .prologue
    .line 362
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "signatureCompany"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 260
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "icon"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    return-void
.end method

.method public setLastModifiedTime(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 328
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "lastModified"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 192
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-void
.end method

.method public setPermissions([Ljava/lang/String;)V
    .locals 2
    .parameter "permissions"

    .prologue
    .line 379
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "permissions"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    return-void
.end method

.method public setSize(J)V
    .locals 3
    .parameter "size"

    .prologue
    .line 311
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "size"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method public setSystemFlag(Z)V
    .locals 3
    .parameter "isSys"

    .prologue
    .line 243
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "isSystem"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    return-void
.end method

.method public setUid(I)V
    .locals 3
    .parameter "uid"

    .prologue
    .line 200
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 2
    .parameter "version"

    .prologue
    .line 277
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    return-void
.end method

.method public setVersionCode(I)V
    .locals 3
    .parameter "versionCode"

    .prologue
    .line 294
    iget-object v0, p0, Ltmsdk/common/module/software/AppEntity;->AY:Ljava/util/HashMap;

    const-string v1, "versionCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    return-void
.end method
