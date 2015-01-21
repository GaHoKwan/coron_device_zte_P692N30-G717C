.class public Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;
.super Ljava/lang/Object;
.source "ZteAccountUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$DownLoadTask;,
        Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;
    }
.end annotation


# static fields
.field public static mToken:Ljava/lang/String;


# instance fields
.field private final APPID:Ljava/lang/String;

.field private final JSON_BAIDU_TOKEN:Ljava/lang/String;

.field private final JSON_KEY_EMAIL:Ljava/lang/String;

.field private final JSON_KEY_MOBILE:Ljava/lang/String;

.field private final JSON_KEY_UID:Ljava/lang/String;

.field private final PACKAGENAME:Ljava/lang/String;

.field private conn:Ljava/net/HttpURLConnection;

.field private downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private fos:Ljava/io/FileOutputStream;

.field private is:Ljava/io/InputStream;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mContext:Landroid/content/Context;

.field public mMyService:Lorg/zx/AuthComp/IMyService;

.field private mOnServiceConnectedListener:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mServiceConnection:Landroid/content/ServiceConnection;

.field private mVersionCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "org.zx.AuthComp"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->PACKAGENAME:Ljava/lang/String;

    .line 41
    const-string v0, "5a74654e6f7465636f6c6c656374696f"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->APPID:Ljava/lang/String;

    .line 42
    const-string v0, "email"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->JSON_KEY_EMAIL:Ljava/lang/String;

    .line 43
    const-string v0, "mobile"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->JSON_KEY_MOBILE:Ljava/lang/String;

    .line 44
    const-string v0, "uid"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->JSON_KEY_UID:Ljava/lang/String;

    .line 45
    const-string v0, "baidu_token"

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->JSON_BAIDU_TOKEN:Ljava/lang/String;

    .line 46
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mVersionCode:I

    .line 48
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    .line 52
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    .line 53
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->fos:Ljava/io/FileOutputStream;

    .line 54
    iput-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    .line 65
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$1;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 285
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$2;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    iput-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 82
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$0(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mOnServiceConnectedListener:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;

    return-object v0
.end method

.method static synthetic access$1(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$3(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->cancelDownload()V

    return-void
.end method

.method static synthetic access$4(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 285
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downloadApkCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$5(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downLoadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->openApkFile(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method private addAccount(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 480
    const/4 v2, 0x0

    .line 482
    .local v2, result:Landroid/os/Bundle;
    :try_start_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v3}, Lorg/zx/AuthComp/IMyService;->startAddAccountActivity()Landroid/os/Bundle;

    move-result-object v2

    .line 483
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 484
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "invoker"

    const-string v4, "5a74654e6f7465636f6c6c656374696f"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "wangna"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addAccountException"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private authForLoginZte(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 378
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getAccount()Ljava/lang/String;

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->addAccount(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private cancelDownload()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 328
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 332
    :cond_0
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 335
    :cond_1
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_2
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private downLoadFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 12
    .parameter "context"
    .parameter "httpUrl"

    .prologue
    const/4 v10, 0x0

    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v11

    invoke-virtual {v11}, Lzte/com/cn/cloudnotepad/NoteApp;->getSavePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "download"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, dir:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v7, tmpFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 161
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    .line 163
    :cond_0
    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/ZteAccount.apk"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v5, file:Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    .local v8, url:Ljava/net/URL;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    check-cast v9, Ljava/net/HttpURLConnection;

    iput-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    .line 168
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    iput-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    .line 169
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    if-nez v9, :cond_1

    move-object v9, v10

    .line 202
    .end local v8           #url:Ljava/net/URL;
    :goto_0
    return-object v9

    .line 172
    .restart local v8       #url:Ljava/net/URL;
    :cond_1
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    .line 173
    .local v0, apkSize:I
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->fos:Ljava/io/FileOutputStream;

    .line 174
    const/16 v9, 0x100

    new-array v1, v9, [B

    .line 175
    .local v1, buf:[B
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->connect()V

    .line 176
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v11, 0x190

    if-lt v9, v11, :cond_3

    .line 177
    const/4 v5, 0x0

    .line 189
    :cond_2
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 190
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 191
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    move-object v9, v5

    .line 202
    goto :goto_0

    .line 179
    :cond_3
    const/4 v6, 0x0

    .line 180
    .local v6, numRead:I
    const/4 v2, 0x0

    .line 181
    .local v2, count:I
    :goto_1
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->is:Ljava/io/InputStream;

    invoke-virtual {v9, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 182
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->fos:Ljava/io/FileOutputStream;

    const/4 v11, 0x0

    invoke-virtual {v9, v1, v11, v6}, Ljava/io/FileOutputStream;->write([BII)V

    .line 183
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v9, :cond_4

    .line 184
    iget-object v9, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    mul-int/lit16 v11, v2, 0x6400

    div-int/2addr v11, v0

    invoke-virtual {v9, v11}, Landroid/app/ProgressDialog;->setProgress(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 186
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    .end local v0           #apkSize:I
    .end local v1           #buf:[B
    .end local v2           #count:I
    .end local v6           #numRead:I
    :catch_0
    move-exception v4

    .line 194
    .local v4, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v9, v10

    .line 195
    goto :goto_0

    .line 197
    .end local v4           #e:Ljava/io/IOException;
    .end local v8           #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    .line 199
    .local v4, e:Ljava/net/MalformedURLException;
    invoke-virtual {v4}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v9, v10

    .line 200
    goto :goto_0
.end method

.method private downloadApk(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 273
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 274
    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 275
    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;

    invoke-direct {v2, p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$4;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 281
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 283
    return-void
.end method

.method private enableAuthComp(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 136
    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 137
    const v1, 0x7f0900d4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    const v1, 0x104000a

    new-instance v2, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$3;

    invoke-direct {v2, p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$3;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 152
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 154
    return-void
.end method

.method private getAccessTokenFromUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "user"

    .prologue
    .line 409
    const/4 v1, 0x0

    .line 411
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "baidu_token"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 414
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 413
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private getUser()Ljava/lang/String;
    .locals 3

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 430
    .local v1, user:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v2}, Lorg/zx/AuthComp/IMyService;->getUser()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 434
    :goto_0
    return-object v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getUserAccount(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "user"

    .prologue
    .line 449
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserMobile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 451
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserEmail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_0
    return-object v0
.end method

.method private getUserEmail(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "user"

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 460
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "email"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 463
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 462
    :catch_0
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 462
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private getUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "user"

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 440
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "uid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 443
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 442
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private getUserMobile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "user"

    .prologue
    .line 469
    const/4 v1, 0x0

    .line 471
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "mobile"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v1, v2

    .line 474
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 473
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method

.method private openApkFile(Landroid/content/Context;Ljava/io/File;)V
    .locals 3
    .parameter "context"
    .parameter "file"

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 209
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method


# virtual methods
.method public bindService()Z
    .locals 5

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, success:Z
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "org.zx.AuthComp.IMyService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 89
    return v0
.end method

.method public createBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "access_token"
    .parameter "expires"

    .prologue
    .line 506
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    sget-object v3, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Lorg/zx/AuthComp/IMyService;->createBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 507
    .local v1, result:I
    const-string v2, "wangna"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createBaiduDiskAccount"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    .end local v1           #result:I
    :goto_0
    return-void

    .line 508
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 389
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, user:Ljava/lang/String;
    const/4 v0, 0x0

    .line 391
    .local v0, account:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 392
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_0
    return-object v0
.end method

.method public getBaiduAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, accessToken:Ljava/lang/String;
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUser()Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, user:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 403
    invoke-direct {p0, v1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getAccessTokenFromUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 405
    :cond_0
    return-object v0
.end method

.method public getConnectivityReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;

    invoke-direct {v0, p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$5;-><init>(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;)V

    .line 323
    .local v0, mConnectivityReceiver:Landroid/content/BroadcastReceiver;
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 354
    :try_start_0
    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v1}, Lorg/zx/AuthComp/IMyService;->getToken()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    .line 355
    const-string v1, "wangna"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token2"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    sget-object v1, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    return-object v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    sput-object v1, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 419
    invoke-direct {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUser()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, user:Ljava/lang/String;
    const/4 v1, 0x0

    .line 421
    .local v1, userId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0, v0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_0
    return-object v1
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->getToken()Ljava/lang/String;

    .line 346
    sget-object v0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public managerAccount(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 492
    const/4 v1, 0x0

    .line 494
    .local v1, result:Landroid/os/Bundle;
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    invoke-interface {v2}, Lorg/zx/AuthComp/IMyService;->startAccountManagerActivity()Landroid/os/Bundle;

    move-result-object v1

    .line 495
    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 496
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 497
    const-string v2, "invoker"

    const-string v3, "5a74654e6f7465636f6c6c656374696f"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setOnServiceConnectedListener(Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mOnServiceConnectedListener:Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils$OnServiceConnectedListener;

    .line 59
    return-void
.end method

.method public startClient(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 100
    invoke-static {}, Lzte/com/cn/cloudnotepad/NoteApp;->getInstance()Lzte/com/cn/cloudnotepad/NoteApp;

    move-result-object v3

    invoke-virtual {v3}, Lzte/com/cn/cloudnotepad/NoteApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 101
    .local v1, mPm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    .line 103
    .local v2, versionCode:I
    :try_start_0
    const-string v3, "org.zx.AuthComp"

    .line 104
    const/16 v4, 0x2000

    .line 103
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_2

    .line 110
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->conn:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 132
    :cond_0
    :goto_1
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    iput-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->downloadApk(Landroid/content/Context;)V

    goto :goto_1

    .line 118
    :cond_2
    :try_start_1
    const-string v3, "org.zx.AuthComp"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v2, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_2
    iget v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mVersionCode:I

    if-lt v2, v3, :cond_0

    .line 123
    iget-object v3, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_3

    .line 124
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->enableAuthComp(Landroid/content/Context;)V

    goto :goto_1

    .line 119
    :catch_1
    move-exception v0

    .line 120
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2

    .line 126
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    invoke-direct {p0, p1}, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->authForLoginZte(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public unbindService()V
    .locals 2

    .prologue
    .line 94
    :try_start_0
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public updateBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "access_token"
    .parameter "expire"

    .prologue
    .line 517
    :try_start_0
    iget-object v2, p0, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mMyService:Lorg/zx/AuthComp/IMyService;

    sget-object v3, Lzte/com/cn/cloudnotepad/backup/ZteAccountUtils;->mToken:Ljava/lang/String;

    invoke-interface {v2, v3, p1, p2}, Lorg/zx/AuthComp/IMyService;->updateBaiduDiskAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 518
    .local v1, result:I
    const-string v2, "wangna"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateBaiduDiskAccount"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v1           #result:I
    :goto_0
    return-void

    .line 519
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
