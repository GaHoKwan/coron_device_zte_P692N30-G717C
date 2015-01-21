.class final Lcom/android/wifidirect/test/WifiOppProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WifiOppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifidirect/test/WifiOppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wifidirect/test/WifiOppProvider;


# direct methods
.method public constructor <init>(Lcom/android/wifidirect/test/WifiOppProvider;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/wifidirect/test/WifiOppProvider$DatabaseHelper;->this$0:Lcom/android/wifidirect/test/WifiOppProvider;

    .line 122
    const-string v0, "wifiopp.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 123
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 130
    const-string v0, "WifiOppProvider"

    const-string v1, "populating new database"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppProvider$DatabaseHelper;->this$0:Lcom/android/wifidirect/test/WifiOppProvider;

    #calls: Lcom/android/wifidirect/test/WifiOppProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/wifidirect/test/WifiOppProvider;->access$000(Lcom/android/wifidirect/test/WifiOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 154
    if-nez p2, :cond_1

    .line 155
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    const/4 p2, 0x1

    .line 164
    :cond_1
    const-string v0, "WifiOppProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading downloads database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which will destroy all old data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppProvider$DatabaseHelper;->this$0:Lcom/android/wifidirect/test/WifiOppProvider;

    #calls: Lcom/android/wifidirect/test/WifiOppProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/wifidirect/test/WifiOppProvider;->access$100(Lcom/android/wifidirect/test/WifiOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    iget-object v0, p0, Lcom/android/wifidirect/test/WifiOppProvider$DatabaseHelper;->this$0:Lcom/android/wifidirect/test/WifiOppProvider;

    #calls: Lcom/android/wifidirect/test/WifiOppProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/android/wifidirect/test/WifiOppProvider;->access$000(Lcom/android/wifidirect/test/WifiOppProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
