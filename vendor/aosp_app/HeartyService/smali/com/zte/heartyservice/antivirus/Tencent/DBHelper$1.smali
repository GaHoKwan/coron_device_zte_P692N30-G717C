.class Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$1;
.super Ljava/lang/Object;
.source "DBHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    #getter for: Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->mDatabase:Landroid/database/sqlite/SQLiteOpenHelper;
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->access$100(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;)Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 192
    monitor-exit v1

    .line 193
    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
