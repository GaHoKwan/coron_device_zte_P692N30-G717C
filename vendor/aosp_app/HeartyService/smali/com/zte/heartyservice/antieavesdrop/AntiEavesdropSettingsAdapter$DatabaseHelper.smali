.class Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AntiEavesdropSettingsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;)V
    .locals 4
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;->this$0:Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter;

    .line 31
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const-string v1, "anti_eavesdrop.db"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 36
    const-string v0, "CREATE TABLE antiEavesdropSetting ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, probability INTEGER DEFAULT 50);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 41
    const-string v0, "CREATE INDEX anti_eavesdrop_name_index ON antiEavesdropSetting (name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 47
    const-string v0, "DROP TABLE IF EXISTS antiEavesdropSetting"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/antieavesdrop/AntiEavesdropSettingsAdapter$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    return-void
.end method
