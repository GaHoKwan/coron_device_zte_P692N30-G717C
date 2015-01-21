.class Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$2;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, p1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->access$200(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 202
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper$2;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->access$300(Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 207
    return-void
.end method
