.class public Lcom/zte/heartyservice/main/staAdapter;
.super Ljava/lang/Object;
.source "staAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/main/staAdapter$1;,
        Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;,
        Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = null

.field private static final DATABASE_VERSION:I = 0x1

.field private static s1:Ljava/lang/String;

.field private static s10:Ljava/lang/String;

.field private static s11:Ljava/lang/String;

.field private static s12:Ljava/lang/String;

.field private static s13:Ljava/lang/String;

.field private static s14:Ljava/lang/String;

.field private static s2:Ljava/lang/String;

.field private static s3:Ljava/lang/String;

.field private static s4:Ljava/lang/String;

.field private static s5:Ljava/lang/String;

.field private static s6:Ljava/lang/String;

.field private static s7:Ljava/lang/String;

.field private static s8:Ljava/lang/String;

.field private static s9:Ljava/lang/String;


# instance fields
.field private lastTime:J

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;

.field private mService:Lcom/zte/heartyservice/main/staService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 19
    new-instance v0, Ljava/lang/String;

    const-string v1, "c3Rhc2V0dGluZy5kYg=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->DATABASE_NAME:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/String;

    const-string v1, "Q1JFQVRFIFRBQkxFIHN0YXNldHRpbmcgKCBfaWQgSU5URUdFUiBQUklNQVJZIEtFWSBBVVRPSU5DUkVNRU5ULCBuYW1lIFRFWFQgTk9UIE5VTEwsIHZlcmNvZGUgSU5URUdFUiwgbGFzdCBJTlRFR0VSLCBuZXh0IElOVEVHRVIsIHN0YSBJTlRFR0VSIERFRkFVTFQgMCk7"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s1:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/String;

    const-string v1, "Q1JFQVRFIFRBQkxFIGNvbW1vbmQgKF9pZCBJTlRFR0VSIFBSSU1BUlkgS0VZLCBzdG9wIElOVEVHRVIgREVGQVVMVCAwKTs="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s2:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/String;

    const-string v1, "RFJPUCBUQUJMRSBJRiBFWElTVFMgc3Rhc2V0dGluZw=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s3:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/String;

    const-string v1, "RFJPUCBUQUJMRSBJRiBFWElTVFMgY29tbW9uZA=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s4:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/String;

    const-string v1, "c2VsZWN0ICogZnJvbSBzdGFTZXR0aW5nIHdoZXJlIG5hbWU9Jw=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s5:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/String;

    const-string v1, "c2VsZWN0IG5hbWUgZnJvbSBzdGFTZXR0aW5n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s6:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/String;

    const-string v1, "c2VsZWN0IG5hbWUgZnJvbSBzdGFTZXR0aW5nIHdoZXJlIHN0YT0x"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s7:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/String;

    const-string v1, "REVMRVRFIEZST00gc3RhU2V0dGluZyBXSEVSRSBuYW1lPSc="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s8:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/String;

    const-string v1, "VVBEQVRFIHN0YVNldHRpbmcgU0VUIHN0YSA9IDEgV0hFUkUgbmV4dDw9"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s9:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/String;

    const-string v1, "VVBEQVRFIHN0YVNldHRpbmcgU0VUIHN0YSA9IDAsbGFzdD0="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s10:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/String;

    const-string v1, "c2VsZWN0IG5hbWUsbGFzdCxuZXh0IGZyb20gc3RhU2V0dGluZyB3aGVyZSBsYXN0Pg=="

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s11:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/String;

    const-string v1, "VVBEQVRFIHN0YVNldHRpbmcgU0VUIGxhc3Q9"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s12:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/String;

    const-string v1, "c2VsZWN0IHN0b3AgZnJvbSBjb21tb25k"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s13:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/String;

    const-string v1, "VVBEQVRFIGNvbW1vbmQgU0VUIHN0b3A9"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/zte/heartyservice/main/staAdapter;->s14:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/zte/heartyservice/main/staService;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zte/heartyservice/main/staAdapter;->lastTime:J

    .line 61
    new-instance v0, Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;

    invoke-virtual {p1}, Lcom/zte/heartyservice/main/staService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;-><init>(Lcom/zte/heartyservice/main/staAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDbHelper:Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;

    .line 62
    iget-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDbHelper:Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/staAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    iput-object p1, p0, Lcom/zte/heartyservice/main/staAdapter;->mService:Lcom/zte/heartyservice/main/staService;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/heartyservice/main/staAdapter;->DATABASE_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/heartyservice/main/staAdapter;->s1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/heartyservice/main/staAdapter;->s2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/heartyservice/main/staAdapter;->s3:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/heartyservice/main/staAdapter;->s4:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 8
    .parameter "packageName"
    .parameter "versionCode"

    .prologue
    .line 68
    const/4 v1, 0x0

    .line 71
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/zte/heartyservice/main/staAdapter;->s5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' and vercode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lez v3, :cond_1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/main/staAdapter;->d(Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/zte/heartyservice/main/staAdapter;->mService:Lcom/zte/heartyservice/main/staService;

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/staService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, context:Landroid/content/Context;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 85
    .local v2, initialValues:Landroid/content/ContentValues;
    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "vercode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v3, "last"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 88
    const-string v3, "next"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/zte/heartyservice/main/staAdapter;->mService:Lcom/zte/heartyservice/main/staService;

    const/4 v7, 0x1

    invoke-virtual {v6, v0, v7}, Lcom/zte/heartyservice/main/staService;->e(Landroid/content/Context;Z)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 89
    iget-object v3, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "stasetting"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    .end local v0           #context:Landroid/content/Context;
    .end local v2           #initialValues:Landroid/content/ContentValues;
    :cond_2
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v3

    .line 93
    if-eqz v1, :cond_0

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_3

    .line 94
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method public b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 105
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/zte/heartyservice/main/staAdapter;->s6:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 113
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 113
    :cond_1
    if-eqz v0, :cond_2

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    :cond_2
    return-object v2
.end method

.method public c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v2, pkgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 126
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/zte/heartyservice/main/staAdapter;->s7:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, name:Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v3

    .line 134
    :cond_1
    if-eqz v0, :cond_2

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_2
    return-object v2
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/heartyservice/main/staAdapter;->s8:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public e()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/heartyservice/main/staAdapter;->s9:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public f(Ljava/lang/String;JJ)V
    .locals 3
    .parameter "staPkgName"
    .parameter "a"
    .parameter "b"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/heartyservice/main/staAdapter;->s10:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WHERE name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public g()V
    .locals 13

    .prologue
    .line 169
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v8, pkgs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;>;"
    const/4 v0, 0x0

    .line 173
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v9, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/zte/heartyservice/main/staAdapter;->s11:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 175
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 176
    new-instance v5, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;

    const/4 v9, 0x0

    invoke-direct {v5, p0, v9}, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;-><init>(Lcom/zte/heartyservice/main/staAdapter;Lcom/zte/heartyservice/main/staAdapter$1;)V

    .line 177
    .local v5, localInfo:Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->name:Ljava/lang/String;

    .line 178
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v5, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->last:J

    .line 179
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    iput-wide v9, v5, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->next:J

    .line 180
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 184
    .end local v5           #localInfo:Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;
    :catchall_0
    move-exception v9

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v9

    .line 184
    :cond_1
    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 189
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 190
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;

    .line 191
    .local v2, info:Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 192
    .local v3, last:J
    iget-wide v9, p0, Lcom/zte/heartyservice/main/staAdapter;->lastTime:J

    iget-wide v11, v2, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->last:J

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 193
    iget-wide v9, p0, Lcom/zte/heartyservice/main/staAdapter;->lastTime:J

    iget-wide v11, v2, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->last:J

    sub-long/2addr v9, v11

    sub-long/2addr v3, v9

    .line 195
    :cond_3
    iget-wide v9, v2, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->next:J

    add-long/2addr v9, v3

    iget-wide v11, v2, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->last:J

    sub-long v6, v9, v11

    .line 197
    .local v6, next:J
    iget-object v9, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/zte/heartyservice/main/staAdapter;->s12:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " WHERE name=\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v2, Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 200
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Lcom/zte/heartyservice/main/staAdapter$pkgStaInfo;
    .end local v3           #last:J
    .end local v6           #next:J
    :cond_4
    return-void
.end method

.method public h()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, ret:Z
    const/4 v0, 0x0

    .line 208
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v7, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v8, Lcom/zte/heartyservice/main/staAdapter;->s13:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_1

    .line 210
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    int-to-long v4, v7

    .line 212
    .local v4, time:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 213
    .local v1, now:J
    cmp-long v7, v4, v1

    if-lez v7, :cond_0

    const/4 v3, 0x1

    .line 214
    :goto_1
    goto :goto_0

    :cond_0
    move v3, v6

    .line 213
    goto :goto_1

    .line 217
    .end local v1           #now:J
    .end local v4           #time:J
    :cond_1
    if-eqz v0, :cond_2

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_2
    return v3

    .line 217
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6
.end method

.method public i(J)V
    .locals 3
    .parameter "time"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zte/heartyservice/main/staAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/heartyservice/main/staAdapter;->s14:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public j(J)V
    .locals 0
    .parameter "currentTimeMillis"

    .prologue
    .line 233
    iput-wide p1, p0, Lcom/zte/heartyservice/main/staAdapter;->lastTime:J

    .line 234
    return-void
.end method
