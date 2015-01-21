.class Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;
.super Landroid/os/AsyncTask;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareBackupFileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 447
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    .local v0, backupFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 451
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v1, v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->checkData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 452
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #backupFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-object v0

    .line 454
    .restart local v0       #backupFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 457
    .local v3, dbFile:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string v7, "privacy_back.db"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .local v2, dbBackupFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 472
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 463
    :cond_1
    :try_start_3
    invoke-static {v3, v2}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v6

    if-nez v6, :cond_3

    .line 465
    :cond_2
    const-string v6, "PasswordSetting"

    const-string v7, "copy db exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-object v0, v5

    goto :goto_0

    .line 470
    :cond_3
    const/4 v6, 0x0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 472
    :try_start_6
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 477
    .end local v0           #backupFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v2           #dbBackupFile:Ljava/io/File;
    .end local v3           #dbFile:Ljava/io/File;
    :catch_0
    move-exception v4

    .line 478
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v5

    .line 480
    goto :goto_0

    .line 472
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #backupFileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1       #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v6

    :try_start_7
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #setter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;
    invoke-static {v0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2302(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 486
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V
    invoke-static {v0}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$700(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 487
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$PrepareBackupFileTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const/4 v1, 0x0

    #setter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mBackupFileList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$2302(Lcom/zte/heartyservice/privacy/PasswordSetting;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 442
    return-void
.end method
