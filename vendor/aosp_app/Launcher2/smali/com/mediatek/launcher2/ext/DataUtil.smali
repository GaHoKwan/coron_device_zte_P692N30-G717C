.class public Lcom/mediatek/launcher2/ext/DataUtil;
.super Ljava/lang/Object;
.source "DataUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DataUtil"

.field private static sDataUtil:Lcom/mediatek/launcher2/ext/DataUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/launcher2/ext/DataUtil;->sDataUtil:Lcom/mediatek/launcher2/ext/DataUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/mediatek/launcher2/ext/DataUtil;
    .locals 5

    .prologue
    .line 57
    const-class v2, Lcom/mediatek/launcher2/ext/DataUtil;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/mediatek/launcher2/ext/DataUtil;->sDataUtil:Lcom/mediatek/launcher2/ext/DataUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 59
    :try_start_1
    const-string v1, "com.android.launcher2.LauncherDataUtil"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/launcher2/ext/DataUtil;

    sput-object v1, Lcom/mediatek/launcher2/ext/DataUtil;->sDataUtil:Lcom/mediatek/launcher2/ext/DataUtil;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 69
    .local v0, e:Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    :try_start_2
    const-string v1, "DataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sDataUtil = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/launcher2/ext/DataUtil;->sDataUtil:Lcom/mediatek/launcher2/ext/DataUtil;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/mediatek/launcher2/ext/DataUtil;->sDataUtil:Lcom/mediatek/launcher2/ext/DataUtil;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 61
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 62
    .restart local v0       #e:Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string v1, "DataUtil"

    const-string v3, "LauncherDataUtil Class not found!"

    invoke-static {v1, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 63
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/InstantiationException;
    :try_start_4
    const-string v1, "DataUtil"

    const-string v3, "LauncherDataUtil Instantiation Exception!"

    invoke-static {v1, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v1, "DataUtil"

    const-string v3, "LauncherDataUtil IllegalAccess Exception!"

    invoke-static {v1, v3}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public checkItemInfo(Lcom/android/launcher2/ItemInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 79
    const-string v0, "DataUtil"

    const-string v1, "DataUtil CheckItemInfo!"

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "icon"
    .parameter "context"

    .prologue
    .line 91
    const-string v0, "DataUtil"

    const-string v1, "DataUtil createIconBitmap!"

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentNameFromResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2
    .parameter "info"

    .prologue
    .line 102
    const-string v0, "DataUtil"

    const-string v1, "DataUtil getComponentNameFromResolveInfo!"

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method
