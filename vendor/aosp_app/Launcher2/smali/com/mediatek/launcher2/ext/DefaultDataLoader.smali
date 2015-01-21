.class public Lcom/mediatek/launcher2/ext/DefaultDataLoader;
.super Ljava/lang/Object;
.source "DefaultDataLoader.java"

# interfaces
.implements Lcom/mediatek/launcher2/ext/IDataLoader;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDataLoader"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public createAllAppsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 62
    const-string v0, "DefaultDataLoader"

    const-string v1, " createAllAppsTable."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public generateNewIdForAllAppsList()J
    .locals 2

    .prologue
    .line 67
    const-string v0, "DefaultDataLoader"

    const-string v1, " generateNewIdForAllAppsList."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public initCellCount()V
    .locals 2

    .prologue
    .line 52
    const-string v0, "DefaultDataLoader"

    const-string v1, " initCellCount."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public initializeMaxIdForAllAppsList(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 57
    const-string v0, "DefaultDataLoader"

    const-string v1, " initializeMaxIdForAllAppsList."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public loadDefaultAllAppsIfNecessary(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .parameter "db"

    .prologue
    .line 73
    const-string v0, "DefaultDataLoader"

    const-string v1, " loadDefaultAllAppsIfNecessary."

    invoke-static {v0, v1}, Lcom/mediatek/launcher2/ext/LauncherLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    return v0
.end method
