.class public final Lcom/farben/faq/d/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "faq.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "create table T_VERSION (_id integer primary key autoincrement, version varchar null,inner_version float null,ismust integer null,down_url varchar null,md5 varchar null,filesize varchar null,versiondate date null,update_content varchar null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_FAQ_CATEGORY (_id integer primary key autoincrement,classid integer not null,class_name varchar null,update_time varchar(20) null,create_time varchar(20) null,isused integer null,parentid integer null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_FAQ_KEY (_id integer primary key autoincrement,key_name nvarchar null,key_searchcount integer null default 1,key_color nvarchar2 null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_FAQ (_id integer primary key autoincrement,faq_id  integer  not null, class_id integer null,faq_title varchar null,faq_answer clob null, faq_handsets varchar null,faq_creatdate  varchar(20) null,faq_updatedate varchar(20) null,faq_searchkey  varchar null,faq_hits integer null,faq_istop integer null,totalcount integer null,faq_isdeleted integer null);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_CHANNEL (_id integer primary key autoincrement,channelid  integer  not null,channelname varchar null,picurl varchar not null,savepath varchar not null,orderid integer null default 0,channel_content clob  null,create_time varchar(20) null,update_time varchar(20) null,ispublish integer null default 1 )"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_HELP (_id integer primary key autoincrement,help_id  integer  not null, help_title varchar null,help_content  varchar null,create_time  varchar(20) null,update_time varchar(20) null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_FAVORITY (_id integer primary key autoincrement,faq_id integer not null,faq_type integer null default 0,create_time varchar(20))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table T_GOOD (_id integer primary key autoincrement,faq_id integer not null)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public final onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS T_VERSION"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS T_FAQ_CATEGORY"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS T_FAQ_KEY"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS T_FAQ"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/farben/faq/d/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
