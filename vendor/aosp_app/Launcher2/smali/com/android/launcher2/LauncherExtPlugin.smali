.class public Lcom/android/launcher2/LauncherExtPlugin;
.super Ljava/lang/Object;
.source "LauncherExtPlugin.java"


# static fields
.field private static sLauncherExtPluginInstance:Lcom/android/launcher2/LauncherExtPlugin;


# instance fields
.field private mAllAppsListExt:Lcom/mediatek/launcher2/ext/IAllAppsListExt;

.field private mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;

.field private mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;

.field private mSearchButtonExt:Lcom/mediatek/launcher2/ext/ISearchButtonExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/launcher2/LauncherExtPlugin;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherExtPlugin;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherExtPlugin;->sLauncherExtPluginInstance:Lcom/android/launcher2/LauncherExtPlugin;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/launcher2/LauncherExtPlugin;->mAllAppsListExt:Lcom/mediatek/launcher2/ext/IAllAppsListExt;

    .line 59
    iput-object v0, p0, Lcom/android/launcher2/LauncherExtPlugin;->mSearchButtonExt:Lcom/mediatek/launcher2/ext/ISearchButtonExt;

    .line 60
    iput-object v0, p0, Lcom/android/launcher2/LauncherExtPlugin;->mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;

    .line 61
    iput-object v0, p0, Lcom/android/launcher2/LauncherExtPlugin;->mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;

    .line 65
    return-void
.end method

.method public static getInstance()Lcom/android/launcher2/LauncherExtPlugin;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/launcher2/LauncherExtPlugin;->sLauncherExtPluginInstance:Lcom/android/launcher2/LauncherExtPlugin;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAllAppsListExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IAllAppsListExt;
    .locals 3
    .parameter "context"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mAllAppsListExt:Lcom/mediatek/launcher2/ext/IAllAppsListExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 74
    :try_start_1
    const-class v1, Lcom/mediatek/launcher2/ext/IAllAppsListExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/launcher2/ext/IAllAppsListExt;

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mAllAppsListExt:Lcom/mediatek/launcher2/ext/IAllAppsListExt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mAllAppsListExt:Lcom/mediatek/launcher2/ext/IAllAppsListExt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/launcher2/ext/DefaultAllAppsListExt;

    invoke-direct {v1}, Lcom/mediatek/launcher2/ext/DefaultAllAppsListExt;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mAllAppsListExt:Lcom/mediatek/launcher2/ext/IAllAppsListExt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 72
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getLoadDataExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IDataLoader;
    .locals 4
    .parameter "context"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 112
    :try_start_1
    const-class v1, Lcom/mediatek/launcher2/ext/IDataLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/launcher2/ext/IDataLoader;

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 118
    :cond_0
    :goto_0
    :try_start_2
    const-string v1, "LoadDataExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLoadDataExt: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mLoadDataExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExtPlugin;->mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/launcher2/ext/DefaultDataLoader;

    invoke-direct {v1, p1}, Lcom/mediatek/launcher2/ext/DefaultDataLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mLoadDataExt:Lcom/mediatek/launcher2/ext/IDataLoader;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 110
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getOperatorCheckerExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/IOperatorChecker;
    .locals 4
    .parameter "context"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 98
    :try_start_1
    const-class v1, Lcom/mediatek/launcher2/ext/IOperatorChecker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/launcher2/ext/IOperatorChecker;

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :cond_0
    :goto_0
    :try_start_2
    const-string v1, "OperatorChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorCheckerExt: context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOperatorCheckerExt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExtPlugin;->mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/launcher2/ext/DefaultOperatorChecker;

    invoke-direct {v1}, Lcom/mediatek/launcher2/ext/DefaultOperatorChecker;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mOperatorCheckerExt:Lcom/mediatek/launcher2/ext/IOperatorChecker;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 96
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getSearchButtonExt(Landroid/content/Context;)Lcom/mediatek/launcher2/ext/ISearchButtonExt;
    .locals 3
    .parameter "context"

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mSearchButtonExt:Lcom/mediatek/launcher2/ext/ISearchButtonExt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 86
    :try_start_1
    const-class v1, Lcom/mediatek/launcher2/ext/ISearchButtonExt;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/launcher2/ext/ISearchButtonExt;

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mSearchButtonExt:Lcom/mediatek/launcher2/ext/ISearchButtonExt;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 92
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mSearchButtonExt:Lcom/mediatek/launcher2/ext/ISearchButtonExt;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :try_start_3
    new-instance v1, Lcom/mediatek/launcher2/ext/DefaultSearchButtonExt;

    invoke-direct {v1}, Lcom/mediatek/launcher2/ext/DefaultSearchButtonExt;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/LauncherExtPlugin;->mSearchButtonExt:Lcom/mediatek/launcher2/ext/ISearchButtonExt;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 84
    .end local v0           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
