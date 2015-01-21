.class public Lcom/zte/retrieve/utils/CommonFunctions;
.super Ljava/lang/Object;
.source "CommonFunctions.java"


# static fields
.field public static final bInitAccountLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adapterWindowSize(Landroid/content/Context;)Landroid/widget/RadioGroup$LayoutParams;
    .locals 10
    .parameter "ctx"

    .prologue
    .line 140
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 141
    .local v5, wm:Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 142
    .local v0, display:Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 143
    .local v3, size:Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 144
    iget v6, v3, Landroid/graphics/Point;->x:I

    int-to-double v6, v6

    const-wide v8, 0x3feccccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v4, v6

    .line 145
    .local v4, width:I
    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    const-wide v8, 0x3fdae147ae147ae1L

    mul-double/2addr v6, v8

    double-to-int v1, v6

    .line 146
    .local v1, height:I
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v4, v1}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 148
    .local v2, p:Landroid/widget/RadioGroup$LayoutParams;
    return-object v2
.end method

.method public static checkSDCardIsEnabled()Z
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/zte/retrieve/utils/CommonFunctions;->sDcardJudge()Z

    move-result v0

    return v0
.end method

.method public static copyRawToFiles(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .parameter "c"
    .parameter "DestName"
    .parameter "resID"
    .parameter "FileMode"

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, byteread:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 101
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 102
    .local v4, out:Ljava/io/FileOutputStream;
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 103
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 106
    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 109
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 113
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 104
    .restart local v0       #buffer:[B
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    .end local v0           #buffer:[B
    .end local v4           #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 111
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static formatNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "phone"

    .prologue
    .line 157
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 162
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 159
    .restart local p0
    :cond_1
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    .line 80
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, manager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 85
    .local v1, networkinfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isSimInfoNull(Ljava/lang/String;)Z
    .locals 1
    .parameter "simInfo"

    .prologue
    .line 152
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static loadCloudAccountApp(Landroid/content/Context;)V
    .locals 3
    .parameter "cx"

    .prologue
    .line 116
    const-string v0, "authcomp.apk"

    const v1, 0x7f040001

    .line 117
    const/4 v2, 0x2

    .line 116
    invoke-static {p0, v0, v1, v2}, Lcom/zte/retrieve/utils/CommonFunctions;->copyRawToFiles(Landroid/content/Context;Ljava/lang/String;II)V

    .line 118
    return-void
.end method

.method public static prepareAuthEnvir(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 123
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "org.zx.AuthComp"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    if-nez v1, :cond_0

    .line 130
    const-string v3, "authcomp is not installed"

    invoke-static {v3}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 134
    :goto_1
    return v2

    .line 124
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .line 126
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v2, "authcomp is already installed"

    invoke-static {v2}, Lcom/zte/retrieve/utils/LogHelper;->i(Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static sDcardJudge()Z
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-static {}, Lcom/zte/retrieve/utils/CommonFunctions;->sdCardExtJudge()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    .line 48
    :cond_1
    const-string v1, ""

    const-string v2, "sdcard null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sdCardExtJudge()Z
    .locals 7

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 59
    .local v4, tSDFile:Ljava/io/File;
    invoke-static {}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getInstance()Lcom/zte/retrieve/utils/config/RetrieveConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/retrieve/utils/config/RetrieveConfig;->getSDCardExtName()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, sTcardExtName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    .line 65
    :cond_0
    return v0
.end method
