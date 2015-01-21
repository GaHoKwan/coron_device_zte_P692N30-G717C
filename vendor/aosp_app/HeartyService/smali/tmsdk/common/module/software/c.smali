.class final Ltmsdk/common/module/software/c;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private Bj:Ltmsdk/common/utils/ZipChecker;

.field private Bk:Ltmsdk/common/module/software/b;

.field private Bl:Ljava/security/cert/CertificateFactory;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    .line 53
    iput-object v0, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    iput-object v0, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    .line 60
    iput-object v0, p0, Ltmsdk/common/module/software/c;->Bl:Ljava/security/cert/CertificateFactory;

    return-void
.end method

.method private a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;
    .locals 5
    .parameter "signature"

    .prologue
    .line 1032
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1033
    .local v3, inputStream:Ljava/io/ByteArrayInputStream;
    const/4 v1, 0x0

    .line 1035
    .local v1, cert:Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v4, p0, Ltmsdk/common/module/software/c;->Bl:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v4, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 1041
    if-eqz v3, :cond_0

    .line 1043
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1049
    :cond_0
    :goto_0
    return-object v1

    .line 1044
    :catch_0
    move-exception v2

    .line 1045
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1036
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 1037
    .local v2, e:Ljava/security/cert/CertificateException;
    :try_start_2
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1041
    if-eqz v3, :cond_0

    .line 1043
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1044
    :catch_2
    move-exception v2

    .line 1045
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1038
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 1039
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1041
    if-eqz v3, :cond_0

    .line 1043
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 1044
    :catch_4
    move-exception v2

    .line 1045
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1041
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    .line 1043
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1046
    :cond_1
    :goto_1
    throw v4

    .line 1044
    :catch_5
    move-exception v2

    .line 1045
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 10
    .parameter "dir"
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .parameter "strictMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 671
    if-nez p1, :cond_1

    .line 672
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 700
    :cond_0
    :goto_0
    return-object v3

    .line 675
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 677
    .local v6, ignorePathList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 678
    move-object v4, p2

    .local v4, arr$:[Ljava/lang/String;
    array-length v7, v4

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v8, v4, v5

    .line 679
    .local v8, path:Ljava/lang/String;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 682
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v8           #path:Ljava/lang/String;
    :cond_2
    invoke-static {p1, v6, p5}, Ltmsdkobf/jv;->a(Ljava/io/File;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    .line 683
    .local v1, apkPaths:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_3

    .line 684
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 687
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v3, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .local v0, apkPath:Ljava/lang/String;
    if-eqz v0, :cond_4

    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 692
    invoke-virtual {p0, v0, p4}, Ltmsdk/common/module/software/c;->getApkInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v2

    .line 693
    .local v2, app:Ltmsdk/common/module/software/AppEntity;
    if-nez v2, :cond_5

    if-eqz p3, :cond_5

    .line 694
    invoke-direct {p0, v0}, Ltmsdk/common/module/software/c;->cu(Ljava/lang/String;)Ltmsdk/common/module/software/AppEntity;

    move-result-object v2

    .line 696
    :cond_5
    if-eqz v2, :cond_4

    .line 697
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 4
    .parameter "apkPath"
    .parameter "appInfo"
    .parameter "flag"

    .prologue
    .line 794
    const/4 v1, 0x0

    .line 796
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p3}, Ltmsdk/common/module/software/c;->bR(I)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 807
    :goto_0
    if-eqz v1, :cond_6

    .line 809
    and-int/lit16 v2, p3, 0x80

    if-eqz v2, :cond_0

    .line 810
    const-string v2, "pkgName"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 813
    :cond_0
    and-int/lit16 v2, p3, 0x100

    if-eqz v2, :cond_1

    .line 814
    const-string v2, "version"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 817
    :cond_1
    and-int/lit16 v2, p3, 0x200

    if-eqz v2, :cond_2

    .line 818
    const-string v2, "versionCode"

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 821
    :cond_2
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_3

    .line 822
    const-string v2, "permissions"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 825
    :cond_3
    and-int/lit16 v2, p3, 0x800

    if-eqz v2, :cond_4

    .line 826
    iget-object v2, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ltmsdk/common/module/software/AppEntity;->setAppName(Ljava/lang/String;)V

    .line 831
    :cond_4
    and-int/lit16 v2, p3, 0x400

    if-eqz v2, :cond_5

    .line 832
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_5

    .line 833
    const-string v2, "uid"

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 838
    .end local p2
    :cond_5
    :goto_1
    return-object p2

    .line 797
    .restart local p2
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {v0}, Ltmsdkobf/id;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 838
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    const/4 p2, 0x0

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;)V
    .locals 6
    .parameter "packageInfo"
    .parameter "appInfo"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, v4}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 265
    .local v1, cert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 267
    const/4 v3, 0x0

    .line 269
    .local v3, signatureMD5:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 270
    .local v0, bytes:[B
    invoke-static {v0}, Ltmsdkobf/kd;->v([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 274
    .end local v0           #bytes:[B
    :goto_1
    const-string v4, "signatureCermMD5"

    invoke-virtual {p2, v4, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    :catch_0
    move-exception v2

    .line 272
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V
    .locals 7
    .parameter "packageInfo"
    .parameter "appEntity"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 216
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_2

    .line 221
    const-string v1, "pkgName"

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v5}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    const-string v1, "appName"

    iget-object v5, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v1, v5}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string v5, "isSystem"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v5, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    const-string v5, "uid"

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_a

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v5, v1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 226
    :cond_2
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_4

    .line 227
    const-string v1, "pkgName"

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1, v5}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    const-string v1, "isSystem"

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_b

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const-string v1, "uid"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 231
    :cond_4
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_5

    .line 232
    const-string v1, "icon"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 234
    :cond_5
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_6

    .line 235
    const-string v1, "version"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    const-string v1, "versionCode"

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, file:Ljava/io/File;
    const-string v1, "size"

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 239
    const-string v1, "lastModified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    .end local v0           #file:Ljava/io/File;
    :cond_6
    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_7

    .line 242
    invoke-direct {p0, p1, p2}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;)V

    .line 244
    :cond_7
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_8

    .line 245
    const-string v1, "permissions"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    :cond_8
    and-int/lit8 v1, p3, 0x40

    if-eqz v1, :cond_0

    .line 248
    const-string v1, "apkPath"

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 249
    const-string v1, "isApk"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    move v1, v3

    .line 223
    goto/16 :goto_1

    :cond_a
    move v1, v4

    .line 224
    goto/16 :goto_2

    :cond_b
    move v2, v3

    .line 228
    goto/16 :goto_3
.end method

.method private b(Ljava/lang/String;Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 24
    .parameter "apkPath"
    .parameter "appInfo"
    .parameter "flag"

    .prologue
    .line 849
    :try_start_0
    const-string v20, "android.content.pm.PackageParser"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object p1, v21, v22

    invoke-static/range {v20 .. v21}, Ltmsdkobf/kh;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 850
    .local v10, packageParser:Ljava/lang/Object;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 851
    .local v17, sourceFile:Ljava/io/File;
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 852
    .local v9, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v9}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 853
    const-string v20, "parsePackage"

    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    aput-object p1, v21, v22

    const/16 v22, 0x2

    aput-object v9, v21, v22

    const/16 v22, 0x3

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v10, v0, v1}, Ltmsdkobf/kh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 855
    .local v11, pkgParserPkg:Ljava/lang/Object;
    if-nez v11, :cond_1

    .line 856
    const/16 p2, 0x0

    .line 956
    .end local v9           #metrics:Landroid/util/DisplayMetrics;
    .end local v10           #packageParser:Ljava/lang/Object;
    .end local v11           #pkgParserPkg:Ljava/lang/Object;
    .end local v17           #sourceFile:Ljava/io/File;
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 859
    .restart local v9       #metrics:Landroid/util/DisplayMetrics;
    .restart local v10       #packageParser:Ljava/lang/Object;
    .restart local v11       #pkgParserPkg:Ljava/lang/Object;
    .restart local v17       #sourceFile:Ljava/io/File;
    .restart local p2
    :cond_1
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x80

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 860
    const-string v20, "packageName"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 861
    .local v12, pkgname:Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 862
    const-string v20, "pkgName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 866
    .end local v12           #pkgname:Ljava/lang/String;
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x100

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 867
    const-string v20, "mVersionName"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 868
    .local v19, versionname:Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 869
    const-string v20, "version"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 873
    .end local v19           #versionname:Ljava/lang/String;
    :cond_3
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x200

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 874
    const-string v20, "mVersionCode"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 875
    .local v18, versioncode:I
    const-string v20, "versionCode"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 878
    .end local v18           #versioncode:I
    :cond_4
    and-int/lit8 v20, p3, 0x20

    if-eqz v20, :cond_5

    .line 880
    const-string v20, "requestedPermissions"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 881
    .local v13, requestedPermissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v13, :cond_5

    .line 882
    const-string v20, "permissions"

    invoke-virtual {v13}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 885
    .end local v13           #requestedPermissions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x0

    .line 887
    .local v7, info:Landroid/content/pm/ApplicationInfo;
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x400

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 888
    const-string v20, "applicationInfo"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 889
    .restart local v7       #info:Landroid/content/pm/ApplicationInfo;
    if-eqz v7, :cond_6

    .line 890
    const-string v20, "uid"

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 894
    :cond_6
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    if-nez v20, :cond_7

    and-int/lit8 v20, p3, 0x4

    if-eqz v20, :cond_10

    .line 895
    :cond_7
    const/4 v14, 0x0

    .line 896
    .local v14, res:Landroid/content/res/Resources;
    if-nez v7, :cond_8

    .line 897
    const-string v20, "applicationInfo"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 900
    .restart local v7       #info:Landroid/content/pm/ApplicationInfo;
    :cond_8
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v20, v0

    if-eqz v20, :cond_c

    if-eqz v7, :cond_c

    .line 901
    const/4 v8, 0x0

    .line 902
    .local v8, label:Ljava/lang/CharSequence;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v20, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v20, :cond_9

    .line 904
    :try_start_1
    invoke-direct/range {p0 .. p1}, Ltmsdk/common/module/software/c;->ct(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 905
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 910
    :cond_9
    :goto_1
    if-eqz v8, :cond_a

    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_b

    .line 911
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 913
    :cond_b
    const-string v20, "appName"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 916
    .end local v8           #label:Ljava/lang/CharSequence;
    :cond_c
    and-int/lit8 v20, p3, 0x4

    if-eqz v20, :cond_10

    if-eqz v7, :cond_10

    .line 917
    const/4 v6, 0x0

    .line 918
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v20, :cond_e

    .line 920
    if-nez v14, :cond_d

    .line 921
    :try_start_3
    invoke-direct/range {p0 .. p1}, Ltmsdk/common/module/software/c;->ct(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 923
    :cond_d
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    .line 928
    :cond_e
    :goto_2
    if-nez v6, :cond_f

    .line 929
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 931
    :cond_f
    const-string v20, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 935
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #res:Landroid/content/res/Resources;
    :cond_10
    and-int/lit8 v20, p3, 0x10

    if-eqz v20, :cond_0

    .line 936
    const-string v20, "collectCertificates"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v11, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v10, v0, v1}, Ltmsdkobf/kh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v20, "mSignatures"

    move-object/from16 v0, v20

    invoke-static {v11, v0}, Ltmsdkobf/kh;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/content/pm/Signature;

    move-object/from16 v0, v20

    check-cast v0, [Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    .line 938
    .local v16, signatures:[Landroid/content/pm/Signature;
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_0

    .line 939
    const/16 v20, 0x0

    aget-object v20, v16, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/Signature;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 940
    .local v4, cert:Ljava/security/cert/X509Certificate;
    if-eqz v4, :cond_0

    .line 941
    const/4 v15, 0x0

    .line 943
    .local v15, signatureMD5:Ljava/lang/String;
    :try_start_5
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v3

    .line 944
    .local v3, bytes:[B
    invoke-static {v3}, Ltmsdkobf/kd;->v([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v15

    .line 948
    .end local v3           #bytes:[B
    :goto_3
    :try_start_6
    const-string v20, "signatureCermMD5"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 953
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    .end local v7           #info:Landroid/content/pm/ApplicationInfo;
    .end local v9           #metrics:Landroid/util/DisplayMetrics;
    .end local v10           #packageParser:Ljava/lang/Object;
    .end local v11           #pkgParserPkg:Ljava/lang/Object;
    .end local v15           #signatureMD5:Ljava/lang/String;
    .end local v16           #signatures:[Landroid/content/pm/Signature;
    .end local v17           #sourceFile:Ljava/io/File;
    :catch_0
    move-exception v20

    .line 956
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 945
    .restart local v4       #cert:Ljava/security/cert/X509Certificate;
    .restart local v7       #info:Landroid/content/pm/ApplicationInfo;
    .restart local v9       #metrics:Landroid/util/DisplayMetrics;
    .restart local v10       #packageParser:Ljava/lang/Object;
    .restart local v11       #pkgParserPkg:Ljava/lang/Object;
    .restart local v15       #signatureMD5:Ljava/lang/String;
    .restart local v16       #signatures:[Landroid/content/pm/Signature;
    .restart local v17       #sourceFile:Ljava/io/File;
    :catch_1
    move-exception v5

    .line 946
    .local v5, e:Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v5}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 924
    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    .end local v5           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v15           #signatureMD5:Ljava/lang/String;
    .end local v16           #signatures:[Landroid/content/pm/Signature;
    .restart local v6       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v14       #res:Landroid/content/res/Resources;
    :catch_2
    move-exception v20

    goto/16 :goto_2

    .line 906
    .end local v6           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v8       #label:Ljava/lang/CharSequence;
    :catch_3
    move-exception v20

    goto/16 :goto_1
.end method

.method private bR(I)I
    .locals 2
    .parameter "flag"

    .prologue
    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, pmFlag:I
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 999
    or-int/lit8 v0, v0, 0x40

    .line 1001
    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 1002
    or-int/lit16 v0, v0, 0x1000

    .line 1004
    :cond_1
    return v0
.end method

.method private ct(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6
    .parameter "apkPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 960
    iget-object v2, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 961
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "android.content.res.AssetManager"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ltmsdkobf/kh;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 962
    .local v0, assetMag:Ljava/lang/Object;
    const-string v2, "addAssetPath"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v2, v3}, Ltmsdkobf/kh;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    const-string v2, "android.content.res.Resources"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ltmsdkobf/kh;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #res:Landroid/content/res/Resources;
    check-cast v1, Landroid/content/res/Resources;

    .line 965
    .restart local v1       #res:Landroid/content/res/Resources;
    return-object v1
.end method

.method private cu(Ljava/lang/String;)Ltmsdk/common/module/software/AppEntity;
    .locals 6
    .parameter "apkPath"

    .prologue
    .line 975
    new-instance v1, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v1}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 976
    .local v1, app:Ltmsdk/common/module/software/AppEntity;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 977
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, apkName:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 979
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 982
    :cond_0
    const-string v3, "appName"

    invoke-virtual {v1, v3, v0}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 983
    const-string v3, "size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 984
    const-string v3, "apkPath"

    invoke-virtual {v1, v3, p1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    const-string v3, "isApk"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 986
    return-object v1
.end method

.method private getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "pkgName"
    .parameter "flag"

    .prologue
    .line 1018
    :try_start_0
    iget-object v1, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v1, p1, p2}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1022
    :goto_0
    return-object v1

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "SoftwareManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1022
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canMoveToSdcard(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "pkgName"
    .parameter "useRoot"

    .prologue
    const/4 v1, 0x0

    .line 544
    invoke-direct {p0, p1, v1}, Ltmsdk/common/module/software/c;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 545
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 546
    invoke-static {v0, p2}, Ltmsdk/common/module/software/a;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    .line 548
    :cond_0
    return v1
.end method

.method public existedAppsCanMovable(IIZ)Z
    .locals 6
    .parameter "flag"
    .parameter "getFlag"
    .parameter "useRoot"

    .prologue
    const/4 v3, 0x1

    .line 1084
    iget-object v4, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Ltmsdk/common/module/software/c;->bR(I)I

    move-result v5

    invoke-static {v4, v5, v3}, Ltmsdkobf/id;->a(Landroid/content/pm/PackageManager;IZ)Ljava/util/List;

    move-result-object v0

    .line 1085
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v0, :cond_2

    .line 1086
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 1087
    .local v2, pkgInfo:Landroid/content/pm/PackageInfo;
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_1

    .line 1088
    invoke-static {v2, p3}, Ltmsdk/common/module/software/a;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1100
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 1092
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    and-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_0

    .line 1093
    invoke-static {v2}, Ltmsdk/common/module/software/a;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 1100
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getApkInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;
    .locals 2
    .parameter "apkPath"
    .parameter "flag"

    .prologue
    .line 737
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 738
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    const-string v1, "apkPath"

    invoke-virtual {v0, v1, p1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    invoke-virtual {p0, v0, p2}, Ltmsdk/common/module/software/c;->getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v1

    return-object v1
.end method

.method public getApkInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 5
    .parameter "appInfo"
    .parameter "flag"

    .prologue
    .line 753
    const-string v2, "apkPath"

    invoke-virtual {p1, v2}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 754
    .local v0, apkPath:Ljava/lang/String;
    iget-object v2, p0, Ltmsdk/common/module/software/c;->Bj:Ltmsdk/common/utils/ZipChecker;

    invoke-virtual {v2, v0}, Ltmsdk/common/utils/ZipChecker;->check(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    const/4 v2, 0x0

    .line 782
    :goto_0
    return-object v2

    .line 757
    :cond_0
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_1

    .line 758
    const-string v2, "isSystem"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 759
    or-int/lit16 p2, p2, 0x80

    .line 760
    or-int/lit16 p2, p2, 0x800

    .line 761
    or-int/lit16 p2, p2, 0x400

    .line 763
    :cond_1
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_2

    .line 764
    const-string v2, "isSystem"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    or-int/lit16 p2, p2, 0x80

    .line 766
    or-int/lit16 p2, p2, 0x400

    .line 768
    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-eqz v2, :cond_3

    .line 769
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 770
    .local v1, file:Ljava/io/File;
    const-string v2, "size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 771
    const-string v2, "lastModified"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 772
    or-int/lit16 p2, p2, 0x100

    .line 773
    or-int/lit16 p2, p2, 0x200

    .line 775
    .end local v1           #file:Ljava/io/File;
    :cond_3
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_4

    .line 776
    const-string v2, "apkPath"

    invoke-virtual {p1, v2, v0}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 777
    const-string v2, "isApk"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    :cond_4
    and-int/lit16 v2, p2, 0x800

    if-nez v2, :cond_5

    and-int/lit8 v2, p2, 0x4

    if-nez v2, :cond_5

    and-int/lit8 v2, p2, 0x10

    if-nez v2, :cond_5

    .line 780
    invoke-direct {p0, v0, p1, p2}, Ltmsdk/common/module/software/c;->a(Ljava/lang/String;Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v2

    goto :goto_0

    .line 782
    :cond_5
    invoke-direct {p0, v0, p1, p2}, Ltmsdk/common/module/software/c;->b(Ljava/lang/String;Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v2

    goto :goto_0
.end method

.method public getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 6
    .parameter "path"
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ltmsdk/common/module/software/c;->a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getApkList(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;
    .locals 1
    .parameter "path"
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .parameter "strictMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "ZIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    invoke-direct/range {p0 .. p5}, Ltmsdk/common/module/software/c;->a(Ljava/io/File;[Ljava/lang/String;ZIZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getApkListFromSDCard([Ljava/lang/String;ZI)Ljava/util/ArrayList;
    .locals 3
    .parameter "ignorePaths"
    .parameter "isGetBrokenApk"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v0, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 720
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 721
    invoke-virtual {p0, v1, p1, p2, p3}, Ltmsdk/common/module/software/c;->getApkList(Ljava/io/File;[Ljava/lang/String;ZI)Ljava/util/ArrayList;

    move-result-object v0

    .line 723
    :cond_0
    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;I)Ltmsdk/common/module/software/AppEntity;
    .locals 2
    .parameter "pkgName"
    .parameter "flag"

    .prologue
    .line 180
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 181
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Ltmsdk/common/module/software/AppEntity;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p0, v0, p2}, Ltmsdk/common/module/software/c;->getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;

    move-result-object v1

    return-object v1
.end method

.method public getAppInfo(Ltmsdk/common/module/software/AppEntity;I)Ltmsdk/common/module/software/AppEntity;
    .locals 3
    .parameter "app"
    .parameter "flag"

    .prologue
    .line 196
    const-string v1, "pkgName"

    invoke-virtual {p1, v1}, Ltmsdk/common/module/software/AppEntity;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p2}, Ltmsdk/common/module/software/c;->bR(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Ltmsdk/common/module/software/c;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 197
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0, v0, p1, p2}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V

    .line 201
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getAppVersionStatus(Ljava/lang/String;I)I
    .locals 3
    .parameter "pkgName"
    .parameter "versionCode"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, v1}, Ltmsdk/common/module/software/c;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 101
    .local v0, packageInfo:Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 102
    const/4 v1, -0x1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq p2, v2, :cond_0

    .line 105
    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge p2, v1, :cond_3

    .line 106
    if-nez p2, :cond_2

    .line 107
    const/4 v1, -0x2

    goto :goto_0

    .line 109
    :cond_2
    const/4 v1, 0x2

    goto :goto_0

    .line 112
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAppsCanMovable(IIZ)Ljava/util/ArrayList;
    .locals 8
    .parameter "flag"
    .parameter "getFlag"
    .parameter "useRoot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 486
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    iget-object v6, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Ltmsdk/common/module/software/c;->bR(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 497
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    .local v1, appEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    if-eqz v2, :cond_2

    .line 499
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 500
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    and-int/lit8 v6, p2, 0x1

    if-eqz v6, :cond_1

    .line 501
    invoke-static {v5, p3}, Ltmsdk/common/module/software/a;->a(Landroid/content/pm/PackageInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 502
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 503
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    invoke-direct {p0, v5, v0, p1}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V

    .line 504
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v0           #appEntity:Ltmsdk/common/module/software/AppEntity;
    :cond_1
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_0

    .line 509
    invoke-static {v5}, Ltmsdk/common/module/software/a;->a(Landroid/content/pm/PackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 510
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 511
    .restart local v0       #appEntity:Ltmsdk/common/module/software/AppEntity;
    invoke-direct {p0, v5, v0, p1}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V

    .line 512
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    .end local v0           #appEntity:Ltmsdk/common/module/software/AppEntity;
    .end local v1           #appEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    .line 495
    .local v3, e:Ljava/lang/RuntimeException;
    invoke-static {v3}, Ltmsdkobf/id;->a(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 518
    .end local v3           #e:Ljava/lang/RuntimeException;
    .restart local v1       #appEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    :cond_2
    return-object v1
.end method

.method public getInstalledApp(II)Ljava/util/ArrayList;
    .locals 11
    .parameter "flag"
    .parameter "getType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/software/AppEntity;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 127
    const/4 v2, 0x0

    .line 138
    .local v2, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    iget-object v9, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0, p1}, Ltmsdk/common/module/software/c;->bR(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 142
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, appEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    if-eqz v2, :cond_4

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 155
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v5, v8

    .line 156
    .local v5, isSys:Z
    :goto_2
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 157
    .local v7, pkgName:Ljava/lang/String;
    if-nez v5, :cond_1

    if-eq p2, v8, :cond_0

    :cond_1
    if-eqz v5, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    iget-object v9, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 160
    new-instance v0, Ltmsdk/common/module/software/AppEntity;

    invoke-direct {v0}, Ltmsdk/common/module/software/AppEntity;-><init>()V

    .line 161
    .local v0, appEntity:Ltmsdk/common/module/software/AppEntity;
    invoke-direct {p0, v6, v0, p1}, Ltmsdk/common/module/software/c;->a(Landroid/content/pm/PackageInfo;Ltmsdk/common/module/software/AppEntity;I)V

    .line 162
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 139
    .end local v0           #appEntity:Ltmsdk/common/module/software/AppEntity;
    .end local v1           #appEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #isSys:Z
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v7           #pkgName:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 140
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 155
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #appEntityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v6       #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 166
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_4
    return-object v1
.end method

.method public getSingletonType()I
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x2

    return v0
.end method

.method public goToInstalledAppDetails(Ljava/lang/String;)V
    .locals 7
    .parameter "pkgName"

    .prologue
    .line 412
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v3, intent:Landroid/content/Intent;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 414
    .local v1, apiLevel:I
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    const/16 v5, 0x9

    if-lt v1, v5, :cond_0

    .line 417
    :try_start_0
    const-string v5, "android.provider.Settings"

    const-string v6, "ACTION_APPLICATION_DETAILS_SETTINGS"

    invoke-static {v5, v6}, Ltmsdkobf/kh;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 418
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    const-string v5, "package"

    const/4 v6, 0x0

    invoke-static {v5, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 424
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 433
    .end local v0           #action:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    :try_start_1
    iget-object v5, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 446
    :goto_1
    return-void

    .line 419
    :catch_0
    move-exception v2

    .line 420
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 426
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v5, "pkg"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v5, "com.android.settings.ApplicationPkgName"

    invoke-virtual {v3, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 434
    :catch_1
    move-exception v2

    .line 444
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public installApp(Ljava/io/File;)V
    .locals 3
    .parameter "apkfile"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 315
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    return-void

    .line 318
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "the apkfile dosn\'t exist."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public installApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 3
    .parameter "apkPath"
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 296
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    if-ltz p3, :cond_0

    .line 299
    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 303
    :goto_0
    return-void

    .line 301
    :cond_0
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public installAppSilently(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "apkPath"

    .prologue
    .line 329
    const-string v1, ""

    .line 330
    .local v1, result:Ljava/lang/String;
    invoke-static {p1}, Ltmsdkobf/jv;->bZ(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v2

    invoke-interface {v2, p1}, Ltmsdkobf/ln;->cD(Ljava/lang/String;)Z

    .line 341
    :cond_0
    :goto_0
    return-object v1

    .line 334
    :cond_1
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v2

    if-nez v2, :cond_0

    .line 335
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pm install -r "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ltmsdk/common/utils/ScriptHelper;->runScript([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, output:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 337
    move-object v1, v0

    goto :goto_0
.end method

.method public isInstalledSdcard(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 529
    invoke-direct {p0, p1, v1}, Ltmsdk/common/module/software/c;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 530
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 531
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Ltmsdk/common/module/software/a;->b(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 533
    :cond_0
    return v1
.end method

.method public isPackageInstalled(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkgName"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Ltmsdk/common/module/software/c;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public movePackageToExternal(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 574
    const v0, 0x1d4d6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 576
    invoke-static {p1}, Ltmsdk/common/module/software/a;->movePackageToExternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public movePackageToInteranl(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 560
    const v0, 0x1d4d6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 562
    invoke-static {p1}, Ltmsdk/common/module/software/a;->movePackageToInteranl(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public moveToExternal(Ljava/lang/String;)I
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 612
    const v0, 0x1d4d6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 614
    invoke-static {p1}, Ltmsdk/common/module/software/a;->moveToExternal(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public moveToInteranl(Ljava/lang/String;)I
    .locals 2
    .parameter "pkg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 593
    const v0, 0x1d4d6

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 595
    invoke-static {p1}, Ltmsdk/common/module/software/a;->moveToInteranl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    iput-object p1, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    .line 66
    new-instance v1, Ltmsdk/common/utils/ZipChecker;

    invoke-direct {v1}, Ltmsdk/common/utils/ZipChecker;-><init>()V

    iput-object v1, p0, Ltmsdk/common/module/software/c;->Bj:Ltmsdk/common/utils/ZipChecker;

    .line 67
    new-instance v1, Ltmsdk/common/module/software/b;

    invoke-direct {v1}, Ltmsdk/common/module/software/b;-><init>()V

    iput-object v1, p0, Ltmsdk/common/module/software/c;->Bk:Ltmsdk/common/module/software/b;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 70
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Ltmsdk/common/module/software/c;->Bl:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/security/cert/CertificateException;
    const-string v1, "SoftwareManagerImpl"

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public packageHasActiveAdmins(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1059
    iget-object v0, p0, Ltmsdk/common/module/software/c;->Bk:Ltmsdk/common/module/software/b;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/software/b;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startUpApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 456
    const/4 v2, 0x0

    .line 458
    .local v2, isstartOK:Z
    :try_start_0
    iget-object v3, p0, Ltmsdk/common/module/software/c;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 459
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 460
    const/high16 v3, 0x1020

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    iget-object v3, p0, Ltmsdk/common/module/software/c;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 462
    const/4 v2, 0x1

    .line 469
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 464
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    const-string v3, "SoftwareManagerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a visualble application"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SoftwareManagerImpl"

    invoke-static {v3, v0}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public uninstallApp(Ljava/lang/String;)V
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 374
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 375
    .local v1, uninstallIntent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 376
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 377
    return-void
.end method

.method public uninstallApp(Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 4
    .parameter "pkgName"
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 358
    .local v0, packageURI:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v1, uninstallIntent:Landroid/content/Intent;
    if-ltz p3, :cond_0

    .line 360
    invoke-virtual {p2, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public uninstallAppSilently(Ljava/lang/String;)Z
    .locals 6
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 386
    const/4 v0, 0x0

    .line 388
    .local v0, result:Z
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->providerSupportPmRelative()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 390
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->provider()Ltmsdkobf/ln;

    move-result-object v1

    invoke-interface {v1, p1}, Ltmsdkobf/ln;->cE(Ljava/lang/String;)Z

    move-result v0

    .line 401
    :cond_0
    :goto_0
    return v0

    .line 391
    :cond_1
    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->isSystemUid()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Ltmsdk/common/utils/ScriptHelper;->canRunAtRoot()I

    move-result v3

    if-nez v3, :cond_0

    .line 393
    :cond_2
    iget-object v3, p0, Ltmsdk/common/module/software/c;->Bk:Ltmsdk/common/module/software/b;

    invoke-virtual {v3, p1}, Ltmsdk/common/module/software/b;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 394
    iget-object v3, p0, Ltmsdk/common/module/software/c;->Bk:Ltmsdk/common/module/software/b;

    invoke-virtual {v3, p1}, Ltmsdk/common/module/software/b;->cs(Ljava/lang/String;)Z

    .line 398
    :cond_3
    new-array v3, v1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pm uninstall "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v3}, Ltmsdk/common/utils/ScriptHelper;->runScriptIfSystemUidOrAsRoot([Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method
