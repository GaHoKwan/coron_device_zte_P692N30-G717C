.class public Lcom/zte/heartyservice/setting/NewPackageShare;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "NewPackageShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;
    }
.end annotation


# instance fields
.field private aliveshareName:[Ljava/lang/String;

.field private bluetoothName:[Ljava/lang/String;

.field private emailName:[Ljava/lang/String;

.field private images:[I

.field private texts:[Ljava/lang/String;

.field private weiboClassName:Ljava/lang/String;

.field private weiboName:[Ljava/lang/String;

.field private weiboPkgName:Ljava/lang/String;

.field private weixinClassName:Ljava/lang/String;

.field private weixinName:[Ljava/lang/String;

.field private weixinPkgName:Ljava/lang/String;

.field private yixinClassName:Ljava/lang/String;

.field private yixinName:[Ljava/lang/String;

.field private yixinPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->texts:[Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->images:[I

    .line 40
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboPkgName:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinPkgName:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinPkgName:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinClassName:Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.mediatek.bluetooth"

    aput-object v1, v0, v2

    const-string v1, "com.android.bluetooth"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->bluetoothName:[Ljava/lang/String;

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->emailName:[Ljava/lang/String;

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "cuuca.sendfiles.Activity"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->aliveshareName:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.sina.weibog3"

    aput-object v1, v0, v2

    const-string v1, "com.sina.weibo"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboName:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinName:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "im.yixin"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinName:[Ljava/lang/String;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareByBluetooth()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareByQRCode()V

    return-void
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareBySms()V

    return-void
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareByEmail()V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareByAliveShare()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/NewPackageShare;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareByWeixin()V

    return-void
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/setting/NewPackageShare;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareBySinaWeibo()V

    return-void
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/setting/NewPackageShare;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->shareByYixin()V

    return-void
.end method

.method private getHeartyServiceAPK()Ljava/io/File;
    .locals 10

    .prologue
    .line 290
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/app/HeartyService.apk"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 291
    .local v0, f:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v7, "/system/app/HeartyService.apk"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 292
    .local v1, f1:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 294
    move-object v0, v1

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 297
    .local v5, packMan:Landroid/content/pm/PackageManager;
    const/16 v7, 0x2000

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    .line 298
    .local v4, pack:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 299
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 300
    .local v3, p:Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 302
    .local v6, s:Ljava/lang/String;
    const-string v7, "/data/app/com.zte.heartyservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    new-instance v0, Ljava/io/File;

    .end local v0           #f:Ljava/io/File;
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .end local v3           #p:Landroid/content/pm/PackageInfo;
    .end local v6           #s:Ljava/lang/String;
    .restart local v0       #f:Ljava/io/File;
    :cond_1
    const-string v7, ""

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "f to string"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-object v0

    .line 298
    .restart local v3       #p:Landroid/content/pm/PackageInfo;
    .restart local v6       #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 13

    .prologue
    .line 60
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "text/plain"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    const-string v11, "android.intent.extra.TEXT"

    const-string v12, "http://apps.ztems.com/ztetd/index.html"

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 65
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/high16 v11, 0x1

    invoke-virtual {v7, v4, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 68
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboName:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 69
    .local v8, weiboList:Ljava/util/List;
    iget-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinName:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 70
    .local v9, weixinList:Ljava/util/List;
    iget-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinName:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 71
    .local v10, yixinList:Ljava/util/List;
    iget-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->aliveshareName:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 72
    .local v0, aliveshareList:Ljava/util/List;
    const/4 v3, 0x0

    .line 76
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v3, 0x0

    .line 77
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 78
    .local v1, each:Landroid/content/pm/ResolveInfo;
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 79
    .local v6, pkgName:Ljava/lang/String;
    const-string v11, "share"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 81
    move-object v3, v1

    .line 82
    iput-object v6, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboPkgName:Ljava/lang/String;

    .line 86
    .end local v1           #each:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_1
    if-nez v3, :cond_6

    .line 94
    :goto_0
    const/4 v3, 0x0

    .line 95
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 96
    .restart local v1       #each:Landroid/content/pm/ResolveInfo;
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 97
    .restart local v6       #pkgName:Ljava/lang/String;
    const-string v11, "share"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 99
    move-object v3, v1

    .line 100
    iput-object v6, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinPkgName:Ljava/lang/String;

    .line 104
    .end local v1           #each:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_3
    if-nez v3, :cond_7

    .line 113
    :goto_1
    const/4 v3, 0x0

    .line 114
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 115
    .restart local v1       #each:Landroid/content/pm/ResolveInfo;
    iget-object v11, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 116
    .restart local v6       #pkgName:Ljava/lang/String;
    const-string v11, "share"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-interface {v10, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 118
    move-object v3, v1

    .line 119
    iput-object v6, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinPkgName:Ljava/lang/String;

    .line 123
    .end local v1           #each:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_5
    if-nez v3, :cond_8

    .line 134
    :goto_2
    return-void

    .line 90
    :cond_6
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    goto :goto_0

    .line 108
    :cond_7
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    goto :goto_1

    .line 127
    :cond_8
    iget-object v11, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v11, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinClassName:Ljava/lang/String;

    goto :goto_2
.end method

.method private shareByAliveShare()V
    .locals 13

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getHeartyServiceAPK()Ljava/io/File;

    move-result-object v3

    .line 403
    .local v3, f:Ljava/io/File;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 404
    .local v6, intent:Landroid/content/Intent;
    const-string v10, "android.intent.action.SEND"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v10, "*/*"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v10, "android.intent.extra.STREAM"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 409
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/high16 v10, 0x1

    invoke-virtual {v9, v6, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 412
    .local v7, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->aliveshareName:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 413
    .local v0, AliveShareList:Ljava/util/List;
    const/4 v8, 0x0

    .line 414
    .local v8, pkgName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 415
    .local v5, info:Landroid/content/pm/ResolveInfo;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 416
    .local v2, each:Landroid/content/pm/ResolveInfo;
    iget-object v10, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 417
    const-string v10, "xxx"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 419
    move-object v5, v2

    .line 423
    .end local v2           #each:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v5, :cond_2

    .line 447
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a05a8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a0233

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a05a6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/zte/heartyservice/setting/NewPackageShare$2;

    invoke-direct {v12, p0}, Lcom/zte/heartyservice/setting/NewPackageShare$2;-><init>(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a05a7

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/zte/heartyservice/setting/NewPackageShare$1;

    invoke-direct {v12, p0}, Lcom/zte/heartyservice/setting/NewPackageShare$1;-><init>(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 469
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 479
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 475
    :cond_2
    const-string v10, "xxx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info.activityInfo.name"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v8, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shareByBluetooth()V
    .locals 12

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getHeartyServiceAPK()Ljava/io/File;

    move-result-object v2

    .line 319
    .local v2, f:Ljava/io/File;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.SEND"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    const-string v9, "*/*"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    const-string v9, "android.intent.extra.STREAM"

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 325
    .local v8, pm:Landroid/content/pm/PackageManager;
    const/high16 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 328
    .local v6, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v9, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->bluetoothName:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 329
    .local v0, bluetoothList:Ljava/util/List;
    const/4 v7, 0x0

    .line 330
    .local v7, pkgName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 331
    .local v4, info:Landroid/content/pm/ResolveInfo;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 332
    .local v1, each:Landroid/content/pm/ResolveInfo;
    iget-object v9, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 333
    const-string v9, "xxx"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 335
    move-object v4, v1

    .line 339
    .end local v1           #each:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v4, :cond_2

    .line 340
    const-string v9, "xxx"

    const-string v10, "No bluetooth "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_2
    const-string v9, "xxx"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "info.activityInfo.name"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shareByEmail()V
    .locals 11

    .prologue
    .line 367
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.SEND"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "text/plain"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a05ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 374
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/high16 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 377
    .local v5, matches:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v8, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->emailName:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 378
    .local v1, emailList:Ljava/util/List;
    const/4 v3, 0x0

    .line 379
    .local v3, info:Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 380
    .local v6, pkgName:Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 381
    .local v0, each:Landroid/content/pm/ResolveInfo;
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 382
    const-string v8, "share"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 384
    move-object v3, v0

    .line 388
    .end local v0           #each:Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v3, :cond_2

    .line 389
    const-string v8, "xxx"

    const-string v9, "No email "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_0
    return-void

    .line 392
    :cond_2
    const-string v8, "xxx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "info.activityInfo.name"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shareByQRCode()V
    .locals 2

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/zte/heartyservice/setting/QRCodeDownload;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, intentQR:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method private shareBySinaWeibo()V
    .locals 4

    .prologue
    .line 500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 503
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 506
    const-string v1, "share"

    const-string v2, "No sinaweibo "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :goto_0
    return-void

    .line 509
    :cond_0
    const-string v1, "share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.activityInfo.name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shareBySms()V
    .locals 5

    .prologue
    .line 357
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 358
    .local v1, smsToUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 359
    .local v0, sendIntent:Landroid/content/Intent;
    const-string v2, "sms_body"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v2, "vnd.android-dir/mms-sms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    .line 363
    return-void
.end method

.method private shareByWeixin()V
    .locals 4

    .prologue
    .line 483
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 488
    const-string v1, "xxx"

    const-string v2, "No weixin "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 491
    :cond_0
    const-string v1, "xxx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.activityInfo.name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private shareByYixin()V
    .locals 4

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a05ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinClassName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 524
    const-string v1, "share"

    const-string v2, "No yixin "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :goto_0
    return-void

    .line 527
    :cond_0
    const-string v1, "share"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.activityInfo.name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinPkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinClassName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/setting/NewPackageShare;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x5

    .line 137
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const v1, 0x7f03009a

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/NewPackageShare;->setContentView(I)V

    .line 139
    const v1, 0x7f0a05aa

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/NewPackageShare;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/zte/heartyservice/setting/NewPackageShare;->initActionBar(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->init()V

    .line 145
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->images:[I

    .line 148
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a059e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a059f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a05a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a05a2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v9

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v11

    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/NewPackageShare;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a05a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    iput-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->texts:[Ljava/lang/String;

    .line 154
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/setting/NewPackageShare;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/GridView;

    .line 155
    .local v6, gridview:Landroid/widget/GridView;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, lstImageItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 159
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 160
    .local v8, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->images:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "itemText"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->texts:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 166
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weixinClassName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 168
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 169
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->images:[I

    aget v3, v3, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "itemText"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->texts:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->weiboClassName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 175
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 176
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->images:[I

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "itemText"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->texts:[Ljava/lang/String;

    aget-object v3, v3, v11

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->yixinClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 182
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 183
    .restart local v8       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "itemImage"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->images:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v1, "itemText"

    iget-object v3, p0, Lcom/zte/heartyservice/setting/NewPackageShare;->texts:[Ljava/lang/String;

    aget-object v3, v3, v12

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    .end local v8           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030099

    new-array v4, v10, [Ljava/lang/String;

    const-string v1, "itemImage"

    aput-object v1, v4, v13

    const/4 v1, 0x1

    const-string v5, "itemText"

    aput-object v5, v4, v1

    new-array v5, v10, [I

    fill-array-data v5, :array_1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 197
    .local v0, saImageItems:Landroid/widget/SimpleAdapter;
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    new-instance v1, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/setting/NewPackageShare$ItemClickListener;-><init>(Lcom/zte/heartyservice/setting/NewPackageShare;)V

    invoke-virtual {v6, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 199
    return-void

    .line 145
    nop

    :array_0
    .array-data 0x4
        0x32t 0x0t 0x2t 0x7ft
        0x64t 0x2t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0x12t 0x0t 0x2t 0x7ft
        0xe4t 0x2t 0x2t 0x7ft
        0x97t 0x2t 0x2t 0x7ft
        0xf0t 0x2t 0x2t 0x7ft
    .end array-data

    .line 192
    :array_1
    .array-data 0x4
        0x33t 0x0t 0xet 0x7ft
        0x7t 0x1t 0xet 0x7ft
    .end array-data
.end method
