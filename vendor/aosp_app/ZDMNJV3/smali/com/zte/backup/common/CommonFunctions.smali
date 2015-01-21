.class public Lcom/zte/backup/common/CommonFunctions;
.super Ljava/lang/Object;
.source "CommonFunctions.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType:[I = null

.field public static final EXCHANGE_TYPE:Ljava/lang/String; = "org.zx.authenticator.ztecloud"

.field private static final MINPADSCREENINTCH:I = 0x7

.field private static final SIMINFO_CONTENT_URI:Landroid/net/Uri;

.field public static bInitLoaded:Z

.field static final bSocket6939IsListen:Z

.field private static heightPixels:I

.field private static widthPixels:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$backup$composer$DataType()[I
    .locals 3

    .prologue
    .line 49
    sget-object v0, Lcom/zte/backup/common/CommonFunctions;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/backup/composer/DataType;->values()[Lcom/zte/backup/composer/DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zte/backup/composer/DataType;->ALARM:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_e

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zte/backup/composer/DataType;->APPS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_d

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zte/backup/composer/DataType;->BROWSER:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_c

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zte/backup/composer/DataType;->CALENDAR:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_b

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zte/backup/composer/DataType;->CALLHISTORY:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_a

    :goto_5
    :try_start_5
    sget-object v1, Lcom/zte/backup/composer/DataType;->FAVORITES:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_9

    :goto_6
    :try_start_6
    sget-object v1, Lcom/zte/backup/composer/DataType;->GALLERY:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_8

    :goto_7
    :try_start_7
    sget-object v1, Lcom/zte/backup/composer/DataType;->MMS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_8
    :try_start_8
    sget-object v1, Lcom/zte/backup/composer/DataType;->NONEAPP:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_6

    :goto_9
    :try_start_9
    sget-object v1, Lcom/zte/backup/composer/DataType;->NOTES:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_5

    :goto_a
    :try_start_a
    sget-object v1, Lcom/zte/backup/composer/DataType;->PHONEBOOK:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4

    :goto_b
    :try_start_b
    sget-object v1, Lcom/zte/backup/composer/DataType;->SETTINGS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_3

    :goto_c
    :try_start_c
    sget-object v1, Lcom/zte/backup/composer/DataType;->SMS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2

    :goto_d
    :try_start_d
    sget-object v1, Lcom/zte/backup/composer/DataType;->SMSMMS:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_1

    :goto_e
    :try_start_e
    sget-object v1, Lcom/zte/backup/composer/DataType;->ZTEBROWSER:Lcom/zte/backup/composer/DataType;

    invoke-virtual {v1}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_0

    :goto_f
    sput-object v0, Lcom/zte/backup/common/CommonFunctions;->$SWITCH_TABLE$com$zte$backup$composer$DataType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_f

    :catch_1
    move-exception v1

    goto :goto_e

    :catch_2
    move-exception v1

    goto :goto_d

    :catch_3
    move-exception v1

    goto :goto_c

    :catch_4
    move-exception v1

    goto :goto_b

    :catch_5
    move-exception v1

    goto :goto_a

    :catch_6
    move-exception v1

    goto :goto_9

    :catch_7
    move-exception v1

    goto :goto_8

    :catch_8
    move-exception v1

    goto :goto_7

    :catch_9
    move-exception v1

    goto :goto_6

    :catch_a
    move-exception v1

    goto :goto_5

    :catch_b
    move-exception v1

    goto/16 :goto_4

    :catch_c
    move-exception v1

    goto/16 :goto_3

    :catch_d
    move-exception v1

    goto/16 :goto_2

    :catch_e
    move-exception v1

    goto/16 :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/zte/backup/common/CommonFunctions;->SIMINFO_CONTENT_URI:Landroid/net/Uri;

    .line 53
    sput-boolean v1, Lcom/zte/backup/common/CommonFunctions;->bInitLoaded:Z

    .line 55
    sput v1, Lcom/zte/backup/common/CommonFunctions;->widthPixels:I

    .line 56
    sput v1, Lcom/zte/backup/common/CommonFunctions;->heightPixels:I

    .line 1303
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->socket6939IsListen()Z

    move-result v0

    sput-boolean v0, Lcom/zte/backup/common/CommonFunctions;->bSocket6939IsListen:Z

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 807
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return v1

    .line 811
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    const/4 v1, 0x1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static checkBackupDataForSettingsUpdate()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 953
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getRootSDPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/updateBackup/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 954
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 955
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 956
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 957
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v4, v1

    if-ge v4, v3, :cond_1

    .line 958
    :cond_0
    const/4 v3, 0x0

    .line 961
    .end local v1           #files:[Ljava/io/File;
    :cond_1
    return v3
.end method

.method public static checkInputPwd(Ljava/lang/String;)I
    .locals 2
    .parameter "pwd"

    .prologue
    .line 971
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 972
    :cond_0
    const/4 v0, 0x1

    .line 976
    :goto_0
    return v0

    .line 973
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_3

    .line 974
    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    .line 976
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPassWord(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "pwd"
    .parameter "pwdConfim"

    .prologue
    .line 987
    invoke-static {p0}, Lcom/zte/backup/common/CommonFunctions;->checkInputPwd(Ljava/lang/String;)I

    move-result v0

    .line 988
    .local v0, ret:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 995
    :goto_0
    return v1

    .line 991
    :cond_0
    invoke-static {p1}, Lcom/zte/backup/common/CommonFunctions;->checkInputPwd(Ljava/lang/String;)I

    move-result v0

    .line 992
    if-eqz v0, :cond_1

    move v1, v0

    .line 993
    goto :goto_0

    .line 995
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private static closeBufInputStream(Ljava/io/BufferedInputStream;)V
    .locals 1
    .parameter "bis"

    .prologue
    .line 1154
    if-eqz p0, :cond_0

    .line 1155
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1158
    :catch_0
    move-exception v0

    .line 1159
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copyRawToFiles(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 6
    .parameter "c"
    .parameter "DestName"
    .parameter "resID"
    .parameter "FileMode"

    .prologue
    .line 384
    const/4 v1, 0x0

    .line 385
    .local v1, byteread:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 386
    .local v3, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 388
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 389
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 390
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    .line 398
    if-eqz v4, :cond_0

    .line 400
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 406
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 408
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 415
    .end local v0           #buffer:[B
    :cond_1
    :goto_2
    return-void

    .line 391
    .restart local v0       #buffer:[B
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v5, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 394
    .end local v0           #buffer:[B
    :catch_0
    move-exception v2

    .line 395
    .local v2, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    if-eqz v4, :cond_3

    .line 400
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 406
    :cond_3
    :goto_3
    if-eqz v3, :cond_1

    .line 408
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 410
    :catch_1
    move-exception v2

    .line 411
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 402
    :catch_2
    move-exception v2

    .line 403
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 397
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 398
    if-eqz v4, :cond_4

    .line 400
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 406
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 408
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 414
    :cond_5
    :goto_5
    throw v5

    .line 402
    :catch_3
    move-exception v2

    .line 403
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 410
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 411
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 402
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #buffer:[B
    :catch_5
    move-exception v2

    .line 403
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 410
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 411
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static deleteDirRecursion(Ljava/lang/String;)Z
    .locals 9
    .parameter "dirPath"

    .prologue
    const/4 v5, 0x0

    .line 436
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, dir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, children:[Ljava/lang/String;
    array-length v6, v2

    :goto_0
    if-lt v5, v6, :cond_1

    .line 448
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    .line 449
    .local v1, bDel:Z
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "bDel:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 450
    const/4 v5, 0x1

    .line 452
    .end local v1           #bDel:Z
    .end local v2           #children:[Ljava/lang/String;
    :cond_0
    return v5

    .line 439
    .restart local v2       #children:[Ljava/lang/String;
    :cond_1
    aget-object v0, v2, v5

    .line 440
    .local v0, arg:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 441
    .local v4, item:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 442
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 439
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v1

    .line 445
    .restart local v1       #bDel:Z
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bDel:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static deleteZCloudDiskTempData(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 1293
    if-eqz p0, :cond_0

    sget-object v0, Lcom/zte/backup/common/PathInfo;->BACKUP_ZCLOUD_DISK_TEMP_DIR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-static {p0}, Lcom/zte/backup/common/CommonFunctions;->deleteDirRecursion(Ljava/lang/String;)Z

    .line 1296
    :cond_0
    return-void
.end method

.method public static dirSize(Ljava/io/File;)J
    .locals 6
    .parameter "dir"

    .prologue
    .line 530
    const-wide/16 v2, 0x0

    .line 531
    .local v2, result:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 532
    .local v0, fileList:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 539
    return-wide v2

    .line 533
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 534
    aget-object v4, v0, v1

    invoke-static {v4}, Lcom/zte/backup/common/CommonFunctions;->dirSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 532
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    :cond_1
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_1
.end method

.method public static fileNameInputJudge(Ljava/lang/String;)Z
    .locals 5
    .parameter "strFileName"

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1043
    .local v0, bRet:Z
    const/16 v3, 0xd

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\\"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, ":"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "*"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "?"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\""

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "<"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, ">"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "("

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, ")"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "|"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "."

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, " "

    aput-object v4, v2, v3

    .line 1045
    .local v2, tmp:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-lt v1, v3, :cond_0

    .line 1052
    :goto_1
    return v0

    .line 1046
    :cond_0
    aget-object v3, v2, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1048
    const/4 v0, 0x1

    .line 1049
    goto :goto_1

    .line 1045
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static fileNameJudge(Ljava/lang/String;)Z
    .locals 1
    .parameter "strFileName"

    .prologue
    .line 1056
    invoke-static {p0}, Lcom/zte/backup/common/CommonFunctions;->judgeFileNameExist(Ljava/lang/String;)Z

    move-result v0

    .line 1057
    .local v0, bRet:Z
    return v0
.end method

.method public static getCardID(Landroid/database/Cursor;Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "cur"
    .parameter "mContext"

    .prologue
    const-wide/16 v9, 0x0

    .line 1164
    if-nez p0, :cond_0

    .line 1165
    const/4 v5, 0x0

    .line 1181
    :goto_0
    return-object v5

    .line 1167
    :cond_0
    const-wide/16 v0, 0x0

    .line 1168
    .local v0, cardId:J
    invoke-static {}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->isDoubleCard()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1169
    const-string v5, "sub_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long v0, v5, v7

    .line 1171
    :cond_1
    invoke-static {}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->hasSimID()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1172
    const-string v5, "sim_id"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1173
    .local v2, simId:J
    cmp-long v5, v2, v9

    if-lez v5, :cond_2

    .line 1174
    invoke-static {p1, v2, v3}, Lcom/zte/backup/common/CommonFunctions;->getMtkCardIdById(Landroid/content/Context;J)I

    move-result v4

    .line 1175
    .local v4, slot:I
    add-int/lit8 v5, v4, 0x1

    int-to-long v0, v5

    .line 1178
    .end local v2           #simId:J
    .end local v4           #slot:I
    :cond_2
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/backup/utils/VersionInfo3G;->getIsMTKDouble()Z

    move-result v5

    if-eqz v5, :cond_3

    cmp-long v5, v0, v9

    if-nez v5, :cond_3

    .line 1179
    const-wide/16 v0, 0x1

    .line 1181
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "filePath"

    .prologue
    const/16 v11, 0xbf

    const/16 v10, 0x80

    const/4 v9, -0x1

    .line 1101
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1102
    .local v4, file:Ljava/io/File;
    const-string v2, "GBK"

    .line 1103
    .local v2, charset:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [B

    .line 1104
    .local v5, first3Bytes:[B
    const/4 v0, 0x0

    .line 1106
    .local v0, bis:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v7, 0x3

    :try_start_1
    invoke-virtual {v1, v7}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 1108
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v1, v5, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    .line 1109
    .local v6, read:I
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1111
    if-ne v6, v9, :cond_0

    .line 1147
    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v2

    .line 1149
    .end local v6           #read:I
    :goto_0
    return-object v7

    .line 1113
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #read:I
    :cond_0
    const/4 v7, 0x0

    :try_start_2
    aget-byte v7, v5, v7

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    aget-byte v7, v5, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v8, -0x2

    if-ne v7, v8, :cond_1

    .line 1147
    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    .line 1114
    const-string v7, "UTF-16LE"

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 1115
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_1
    const/4 v7, 0x0

    :try_start_3
    aget-byte v7, v5, v7

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    aget-byte v7, v5, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-ne v7, v9, :cond_2

    .line 1147
    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    .line 1116
    const-string v7, "UTF-16BE"

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 1117
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_2
    const/4 v7, 0x0

    :try_start_4
    aget-byte v7, v5, v7

    const/16 v8, -0x11

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    aget-byte v7, v5, v7

    const/16 v8, -0x45

    if-ne v7, v8, :cond_6

    const/4 v7, 0x2

    aget-byte v7, v5, v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/16 v8, -0x41

    if-ne v7, v8, :cond_6

    .line 1147
    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    .line 1118
    const-string v7, "UTF-8"

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 1122
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_3
    const/16 v7, 0xf0

    if-ge v6, v7, :cond_4

    if-gt v10, v6, :cond_5

    if-gt v6, v11, :cond_5

    .line 1147
    :cond_4
    :goto_1
    invoke-static {v1}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #read:I
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :goto_2
    move-object v7, v2

    .line 1149
    goto :goto_0

    .line 1124
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v6       #read:I
    :cond_5
    const/16 v7, 0xc0

    if-gt v7, v6, :cond_7

    const/16 v7, 0xdf

    if-gt v6, v7, :cond_7

    .line 1125
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 1126
    if-gt v10, v6, :cond_4

    if-gt v6, v11, :cond_4

    .line 1121
    :cond_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    if-ne v6, v9, :cond_3

    goto :goto_1

    .line 1131
    :cond_7
    const/16 v7, 0xe0

    if-gt v7, v6, :cond_6

    const/16 v7, 0xef

    if-gt v6, v7, :cond_6

    .line 1132
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 1133
    if-gt v10, v6, :cond_4

    if-gt v6, v11, :cond_4

    .line 1134
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->read()I

    move-result v6

    .line 1135
    if-gt v10, v6, :cond_4

    if-gt v6, v11, :cond_4

    .line 1136
    const-string v2, "UTF-8"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 1139
    goto :goto_1

    .line 1143
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #read:I
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v3

    .line 1144
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1147
    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    goto :goto_2

    .line 1146
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 1147
    :goto_4
    invoke-static {v0}, Lcom/zte/backup/common/CommonFunctions;->closeBufInputStream(Ljava/io/BufferedInputStream;)V

    .line 1148
    throw v7

    .line 1146
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 1143
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method

.method public static getCurrentDate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 555
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 556
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 558
    .local v1, date:Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 559
    .local v3, strDate:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy.MM.dd    HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 560
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getFileNameByDataType(Lcom/zte/backup/composer/DataType;)Ljava/lang/String;
    .locals 2
    .parameter "dataType"

    .prologue
    .line 676
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 700
    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 678
    :pswitch_1
    const-string v0, "contact.vcf"

    goto :goto_0

    .line 680
    :pswitch_2
    const-string v0, "sms.vmsg"

    goto :goto_0

    .line 682
    :pswitch_3
    const-string v0, "mms.vmsg"

    goto :goto_0

    .line 684
    :pswitch_4
    const-string v0, "calendar.vcs"

    goto :goto_0

    .line 686
    :pswitch_5
    const-string v0, "CallHistory.db"

    goto :goto_0

    .line 688
    :pswitch_6
    const-string v0, "bookmark.db"

    goto :goto_0

    .line 690
    :pswitch_7
    const-string v0, ""

    goto :goto_0

    .line 692
    :pswitch_8
    const-string v0, "alarm.db"

    goto :goto_0

    .line 694
    :pswitch_9
    const-string v0, "note.db"

    goto :goto_0

    .line 696
    :pswitch_a
    const-string v0, "wallpaper"

    goto :goto_0

    .line 698
    :pswitch_b
    const-string v0, "bookmark.db"

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public static getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "path"

    .prologue
    .line 782
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 783
    const-string v1, ""

    .line 784
    .local v1, fileName:Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "\\"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v3, v1

    .line 795
    :goto_0
    return-object v3

    .line 787
    :cond_1
    const/4 v2, -0x1

    .line 788
    .local v2, lastSpIndex:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, a:I
    :goto_1
    if-gtz v0, :cond_2

    .line 794
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 795
    .local v3, tmp:Ljava/lang/String;
    goto :goto_0

    .line 789
    .end local v3           #tmp:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_4

    .line 790
    :cond_3
    add-int/lit8 v2, v0, 0x1

    .line 791
    goto :goto_2

    .line 788
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static getFolderFileByDataType(Lcom/zte/backup/composer/DataType;)Ljava/lang/String;
    .locals 2
    .parameter "dataType"

    .prologue
    .line 645
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 671
    const-string v0, ""

    :goto_0
    return-object v0

    .line 647
    :pswitch_0
    const-string v0, "Contact"

    goto :goto_0

    .line 649
    :pswitch_1
    const-string v0, "Sms"

    goto :goto_0

    .line 651
    :pswitch_2
    const-string v0, "Mms"

    goto :goto_0

    .line 653
    :pswitch_3
    const-string v0, "Calendar"

    goto :goto_0

    .line 655
    :pswitch_4
    const-string v0, "CallHistory"

    goto :goto_0

    .line 657
    :pswitch_5
    const-string v0, "Browser"

    goto :goto_0

    .line 659
    :pswitch_6
    const-string v0, "Setting"

    goto :goto_0

    .line 661
    :pswitch_7
    const-string v0, "Alarm"

    goto :goto_0

    .line 663
    :pswitch_8
    const-string v0, "Note"

    goto :goto_0

    .line 665
    :pswitch_9
    const-string v0, "Desktop"

    goto :goto_0

    .line 667
    :pswitch_a
    const-string v0, "Pictures"

    goto :goto_0

    .line 669
    :pswitch_b
    const-string v0, "ZTEBrowser"

    goto :goto_0

    .line 645
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getFolderName()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    const/16 v1, 0xa

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Contact"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Sms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 289
    const-string v2, "Calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "CallHistory"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 290
    const-string v2, "Setting"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Alarm"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Note"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 291
    const-string v2, "Desktop"

    aput-object v2, v0, v1

    .line 292
    .local v0, item:[Ljava/lang/String;
    return-object v0
.end method

.method public static getItemCountFromBackupXml(Lcom/zte/backup/composer/DataType;)I
    .locals 2
    .parameter "dataType"

    .prologue
    .line 723
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 749
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 725
    :pswitch_0
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getContactsNum()I

    move-result v0

    goto :goto_0

    .line 727
    :pswitch_1
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getSmsCount()I

    move-result v0

    goto :goto_0

    .line 729
    :pswitch_2
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getMmsCount()I

    move-result v0

    goto :goto_0

    .line 731
    :pswitch_3
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getCalendarNum()I

    move-result v0

    goto :goto_0

    .line 733
    :pswitch_4
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getCallHistryNum()I

    move-result v0

    goto :goto_0

    .line 735
    :pswitch_5
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getBrowseNum()I

    move-result v0

    goto :goto_0

    .line 737
    :pswitch_6
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getSettingsSize()I

    move-result v0

    goto :goto_0

    .line 739
    :pswitch_7
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getAlarmsNum()I

    move-result v0

    goto :goto_0

    .line 741
    :pswitch_8
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getNotesNum()I

    move-result v0

    goto :goto_0

    .line 743
    :pswitch_9
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getFavoritesSize()I

    move-result v0

    goto :goto_0

    .line 745
    :pswitch_a
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getGalleryNum()I

    move-result v0

    goto :goto_0

    .line 747
    :pswitch_b
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/backup/utils/VersionInfo3G;->getZTEBrowseNum()I

    move-result v0

    goto :goto_0

    .line 723
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getMtkCardIdById(Landroid/content/Context;J)I
    .locals 8
    .parameter "ctx"
    .parameter "simId"

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 1243
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    move v0, v7

    .line 1259
    :cond_0
    :goto_0
    return v0

    .line 1245
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/backup/common/CommonFunctions;->SIMINFO_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1246
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "slot"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 1245
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1248
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1249
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1250
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1255
    if-eqz v6, :cond_0

    .line 1256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1254
    :catchall_0
    move-exception v0

    .line 1255
    if-eqz v6, :cond_2

    .line 1256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1258
    :cond_2
    throw v0

    .line 1255
    :cond_3
    if-eqz v6, :cond_4

    .line 1256
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v7

    .line 1259
    goto :goto_0
.end method

.method public static getMtkSimId(Landroid/content/Context;J)Ljava/lang/Long;
    .locals 10
    .parameter "ctx"
    .parameter "cardSlot"

    .prologue
    const/4 v2, 0x0

    .line 1214
    const-wide/16 v7, 0x1

    .line 1215
    .local v7, mSimId:J
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 1216
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1233
    :cond_0
    :goto_0
    return-object v0

    .line 1218
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zte/backup/common/CommonFunctions;->SIMINFO_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "slot=?"

    .line 1219
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    move-object v5, v2

    .line 1218
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1221
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1222
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1223
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1224
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1229
    if-eqz v6, :cond_0

    .line 1230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1228
    :catchall_0
    move-exception v0

    .line 1229
    if-eqz v6, :cond_2

    .line 1230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1232
    :cond_2
    throw v0

    .line 1229
    :cond_3
    if-eqz v6, :cond_4

    .line 1230
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1233
    :cond_4
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static getNodeListByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 2
    .parameter "doc"
    .parameter "name"

    .prologue
    .line 456
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 457
    .local v0, root:Lorg/w3c/dom/Element;
    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    return-object v1
.end method

.method public static getSimID(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "messageId"
    .parameter "mContext"

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x1

    .line 1186
    const-wide/16 v0, 0x0

    .line 1187
    .local v0, simId:J
    if-nez p0, :cond_4

    .line 1188
    const-wide/16 v0, 0x0

    .line 1192
    :goto_0
    invoke-static {}, Lcom/zte/backup/format/vxx/vmsg/MessageSmsInterface;->isDoubleCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1193
    cmp-long v4, v0, v6

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x2

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 1194
    :cond_0
    sub-long/2addr v0, v6

    .line 1197
    :cond_1
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/backup/utils/VersionInfo3G;->isMTKPlatform()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1198
    sub-long v2, v0, v6

    .line 1199
    .local v2, soltid:J
    cmp-long v4, v2, v8

    if-gez v4, :cond_2

    .line 1200
    const-wide/16 v0, -0x1

    .line 1202
    :cond_2
    invoke-static {}, Lcom/zte/backup/utils/VersionInfo3G;->getInstance()Lcom/zte/backup/utils/VersionInfo3G;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/backup/utils/VersionInfo3G;->getIsMTKDouble()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1203
    cmp-long v4, v2, v8

    if-gez v4, :cond_5

    .line 1204
    const-wide/16 v0, 0x1

    .line 1210
    .end local v2           #soltid:J
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1190
    :cond_4
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 1206
    .restart local v2       #soltid:J
    :cond_5
    invoke-static {p1, v2, v3}, Lcom/zte/backup/common/CommonFunctions;->getMtkSimId(Landroid/content/Context;J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_1
.end method

.method public static getSizelongStr(J)Ljava/lang/String;
    .locals 13
    .parameter "size"

    .prologue
    const-wide/32 v11, 0x100000

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    .local v4, str:Ljava/lang/StringBuilder;
    const-wide/32 v2, 0x100000

    .line 635
    .local v2, sizeUnit:J
    long-to-double v5, p0

    long-to-double v7, v2

    const-wide v9, 0x3f847ae147ae147bL

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x3ff0

    sub-double/2addr v5, v7

    const-wide/high16 v7, 0x4059

    mul-double/2addr v5, v7

    long-to-double v7, v2

    div-double/2addr v5, v7

    double-to-long v5, v5

    const-wide/16 v7, 0x64

    rem-long v0, v5, v7

    .line 636
    .local v0, dot:J
    const-wide/16 v5, 0xa

    cmp-long v5, v0, v5

    if-gez v5, :cond_0

    .line 637
    div-long v5, p0, v11

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 639
    :cond_0
    div-long v5, p0, v11

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static isBSocket6939IsListen()Z
    .locals 1

    .prologue
    .line 1299
    sget-boolean v0, Lcom/zte/backup/common/CommonFunctions;->bSocket6939IsListen:Z

    return v0
.end method

.method public static isPad(Landroid/app/Activity;)Z
    .locals 10
    .parameter "ac"

    .prologue
    .line 267
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 268
    .local v2, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 270
    iget v6, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 272
    .local v6, screenX:I
    iget v7, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 274
    .local v7, screenY:I
    iget v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 276
    .local v3, dpi:I
    div-int v8, v6, v3

    int-to-float v0, v8

    .line 278
    .local v0, a:F
    div-int v8, v7, v3

    int-to-float v1, v8

    .line 280
    .local v1, b:F
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 281
    .local v4, screenIn:D
    const-wide/high16 v8, 0x401c

    cmpl-double v8, v4, v8

    if-lez v8, :cond_0

    .line 282
    const/4 v8, 0x1

    .line 284
    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static isRestoreFileValid(Lcom/zte/backup/composer/DataType;Ljava/lang/String;)Z
    .locals 8
    .parameter "dataType"
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 922
    invoke-static {p0}, Lcom/zte/backup/common/CommonFunctions;->isSupportDataType(Lcom/zte/backup/composer/DataType;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 944
    :cond_0
    :goto_0
    return v4

    .line 926
    :cond_1
    invoke-static {p0}, Lcom/zte/backup/common/CommonFunctions;->getFolderFileByDataType(Lcom/zte/backup/composer/DataType;)Ljava/lang/String;

    move-result-object v2

    .line 928
    .local v2, folder:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 929
    .local v3, folderPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 932
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 933
    .local v1, files:[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 936
    array-length v6, v1

    if-lez v6, :cond_0

    move v4, v5

    .line 937
    goto :goto_0

    .end local v1           #files:[Ljava/io/File;
    :cond_2
    move v4, v5

    .line 944
    goto :goto_0
.end method

.method public static isSupportDataType(Lcom/zte/backup/composer/DataType;)Z
    .locals 2
    .parameter "ty"

    .prologue
    .line 85
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->$SWITCH_TABLE$com$zte$backup$composer$DataType()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/zte/backup/composer/DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 115
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isXXhdipPhone()Z
    .locals 2

    .prologue
    .line 1273
    sget v0, Lcom/zte/backup/common/CommonFunctions;->widthPixels:I

    const/16 v1, 0x438

    if-lt v0, v1, :cond_0

    sget v0, Lcom/zte/backup/common/CommonFunctions;->heightPixels:I

    const/16 v1, 0x780

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXhdipPhone()Z
    .locals 2

    .prologue
    .line 1268
    sget v0, Lcom/zte/backup/common/CommonFunctions;->widthPixels:I

    const/16 v1, 0x1e0

    if-le v0, v1, :cond_0

    sget v0, Lcom/zte/backup/common/CommonFunctions;->widthPixels:I

    const/16 v1, 0x438

    if-ge v0, v1, :cond_0

    sget v0, Lcom/zte/backup/common/CommonFunctions;->heightPixels:I

    const/16 v1, 0x320

    if-le v0, v1, :cond_0

    sget v0, Lcom/zte/backup/common/CommonFunctions;->heightPixels:I

    const/16 v1, 0x780

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1269
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static judgeCryptFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "strFileName"
    .parameter "mFullPath"

    .prologue
    .line 1095
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".zip.crypt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, cryptPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1097
    .local v0, cryptFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    return v2
.end method

.method public static judgeFileNameExist(Ljava/lang/String;)Z
    .locals 6
    .parameter "strFileName"

    .prologue
    .line 1071
    const/4 v0, 0x0

    .line 1072
    .local v0, bFind:Z
    if-nez p0, :cond_0

    .line 1073
    const-string p0, ""

    .line 1075
    :cond_0
    invoke-static {}, Lcom/zte/backup/common/CommonFunctions;->setFilePath()Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, mFullPath:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1077
    const/4 v4, 0x1

    .line 1091
    :goto_0
    return v4

    .line 1080
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1082
    .local v3, tmp:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1084
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1086
    .local v2, sdPath:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1088
    if-nez v0, :cond_2

    .line 1089
    invoke-static {p0, v1}, Lcom/zte/backup/common/CommonFunctions;->judgeCryptFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_2
    move v4, v0

    .line 1091
    goto :goto_0
.end method

.method public static mkSdDir(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 418
    const-string v5, "/"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, fileList:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 420
    .local v4, sdPath:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, v2

    if-lt v3, v5, :cond_0

    .line 431
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 421
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    new-instance v1, Ljava/io/File;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v0

    .line 426
    .local v0, bRet:Z
    if-nez v0, :cond_1

    .line 427
    const/4 v5, 0x0

    goto :goto_1

    .line 420
    .end local v0           #bRet:Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static networkIsAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 543
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 544
    .local v0, manager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 551
    :cond_0
    :goto_0
    return v2

    .line 547
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 548
    .local v1, networkinfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 551
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static nodelistHaveChildren(Lorg/w3c/dom/Node;)Z
    .locals 3
    .parameter "node"

    .prologue
    .line 461
    const/4 v1, 0x0

    .line 462
    .local v1, nodelist:Lorg/w3c/dom/NodeList;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 463
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 464
    .local v0, leng:I
    if-nez v0, :cond_0

    .line 465
    const/4 v2, 0x0

    .line 467
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static readXmlFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "xmlPath"

    .prologue
    const/4 v9, 0x0

    .line 471
    if-nez p0, :cond_1

    .line 472
    const-string v10, "client"

    const-string v11, "backupInfoParser is null"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    :goto_0
    return-object v9

    .line 476
    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 477
    .local v8, strBuff:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v7, readFile:Ljava/io/File;
    const/4 v6, 0x0

    .line 479
    .local v6, line:Ljava/lang/String;
    const/4 v4, 0x0

    .line 480
    .local v4, fl:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 482
    .local v0, bf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 483
    .end local v4           #fl:Ljava/io/FileReader;
    .local v5, fl:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 486
    .end local v0           #bf:Ljava/io/BufferedReader;
    .local v1, bf:Ljava/io/BufferedReader;
    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    move-result-object v6

    .line 487
    if-nez v6, :cond_5

    .line 506
    :goto_1
    if-eqz v5, :cond_3

    .line 507
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 509
    :cond_3
    if-eqz v1, :cond_4

    .line 510
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 518
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    .line 519
    .local v9, strXml:Ljava/lang/String;
    goto :goto_0

    .line 490
    .end local v9           #strXml:Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 493
    if-nez v6, :cond_2

    goto :goto_1

    .line 496
    .end local v1           #bf:Ljava/io/BufferedReader;
    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 497
    .local v3, e1:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 506
    if-eqz v4, :cond_6

    .line 507
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 509
    :cond_6
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 513
    :catch_1
    move-exception v2

    .line 514
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 500
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e1:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 501
    .restart local v2       #e:Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 506
    if-eqz v4, :cond_7

    .line 507
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 509
    :cond_7
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_0

    .line 513
    :catch_3
    move-exception v2

    .line 514
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 506
    :goto_5
    if-eqz v4, :cond_8

    .line 507
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 509
    :cond_8
    if-eqz v0, :cond_9

    .line 510
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 516
    :cond_9
    :goto_6
    throw v10

    .line 513
    :catch_4
    move-exception v2

    .line 514
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 513
    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fl:Ljava/io/FileReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    .restart local v5       #fl:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    .line 514
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 504
    .end local v1           #bf:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    goto :goto_5

    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v4           #fl:Ljava/io/FileReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    .restart local v5       #fl:Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    goto :goto_5

    .line 500
    .end local v4           #fl:Ljava/io/FileReader;
    .restart local v5       #fl:Ljava/io/FileReader;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v4           #fl:Ljava/io/FileReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    .restart local v5       #fl:Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    goto :goto_4

    .line 496
    .end local v4           #fl:Ljava/io/FileReader;
    .restart local v5       #fl:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v4, v5

    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    goto :goto_3

    .end local v0           #bf:Ljava/io/BufferedReader;
    .end local v4           #fl:Ljava/io/FileReader;
    .restart local v1       #bf:Ljava/io/BufferedReader;
    .restart local v5       #fl:Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v0, v1

    .end local v1           #bf:Ljava/io/BufferedReader;
    .restart local v0       #bf:Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5           #fl:Ljava/io/FileReader;
    .restart local v4       #fl:Ljava/io/FileReader;
    goto :goto_3
.end method

.method public static setAppMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1
    .parameter "outMetrics"

    .prologue
    .line 1263
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/zte/backup/common/CommonFunctions;->widthPixels:I

    .line 1264
    iget v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/zte/backup/common/CommonFunctions;->heightPixels:I

    .line 1265
    return-void
.end method

.method private static setFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1061
    const/4 v0, 0x0

    .line 1062
    .local v0, mFullPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, sDStateString:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1064
    invoke-static {}, Lcom/zte/backup/common/PathInfo;->getDataFullPath()Ljava/lang/String;

    move-result-object v0

    .line 1065
    invoke-static {v0}, Lcom/zte/backup/common/Logging;->d(Ljava/lang/String;)V

    .line 1067
    :cond_0
    return-object v0
.end method

.method static socket6939IsListen()Z
    .locals 2

    .prologue
    .line 1305
    new-instance v1, Lcom/zte/backup/service/RootRestoreClient;

    invoke-direct {v1}, Lcom/zte/backup/service/RootRestoreClient;-><init>()V

    .line 1306
    .local v1, rc:Lcom/zte/backup/service/RootRestoreClient;
    invoke-virtual {v1}, Lcom/zte/backup/service/RootRestoreClient;->isSocketOpen()Z

    move-result v0

    .line 1307
    .local v0, bHasRoot:Z
    return v0
.end method

.method public static socketCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "src"
    .parameter "des"
    .parameter "uid"
    .parameter "flag"

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, command:Ljava/lang/String;
    return-object v0
.end method

.method public static transformString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "str"

    .prologue
    .line 523
    const-string v0, "\'"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    const-string v0, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 526
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static unZipFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "zipFileName"
    .parameter "srcFile"
    .parameter "desFile"

    .prologue
    .line 883
    const/4 v1, 0x0

    .line 885
    .local v1, bResult:Z
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 886
    .local v9, zipFile:Ljava/util/zip/ZipFile;
    invoke-virtual {v9, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v8

    .line 888
    .local v8, zipEntry:Ljava/util/zip/ZipEntry;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_0

    .line 889
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 890
    .local v5, f:Ljava/io/File;
    const/4 v6, 0x0

    .line 891
    .local v6, in:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 892
    .local v7, out:Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 893
    .local v0, bCreat:Z
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "bCreat:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/zte/backup/common/Logging;->i(Ljava/lang/String;)V

    .line 894
    invoke-virtual {v9, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    .line 895
    new-instance v7, Ljava/io/FileOutputStream;

    .end local v7           #out:Ljava/io/FileOutputStream;
    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 897
    .restart local v7       #out:Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v2, v10, [B

    .line 898
    .local v2, by:[B
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    .local v3, c:I
    const/4 v10, -0x1

    if-ne v3, v10, :cond_1

    .line 901
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 902
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 903
    const/4 v1, 0x1

    .line 905
    .end local v0           #bCreat:Z
    .end local v2           #by:[B
    .end local v3           #c:I
    .end local v5           #f:Ljava/io/File;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 911
    .end local v8           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    :goto_1
    return v1

    .line 899
    .restart local v0       #bCreat:Z
    .restart local v2       #by:[B
    .restart local v3       #c:I
    .restart local v5       #f:Ljava/io/File;
    .restart local v6       #in:Ljava/io/InputStream;
    .restart local v7       #out:Ljava/io/FileOutputStream;
    .restart local v8       #zipEntry:Ljava/util/zip/ZipEntry;
    .restart local v9       #zipFile:Ljava/util/zip/ZipFile;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {v7, v2, v10, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 907
    .end local v0           #bCreat:Z
    .end local v2           #by:[B
    .end local v3           #c:I
    .end local v5           #f:Ljava/io/File;
    .end local v6           #in:Ljava/io/InputStream;
    .end local v7           #out:Ljava/io/FileOutputStream;
    .end local v8           #zipEntry:Ljava/util/zip/ZipEntry;
    .end local v9           #zipFile:Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v4

    .line 908
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
