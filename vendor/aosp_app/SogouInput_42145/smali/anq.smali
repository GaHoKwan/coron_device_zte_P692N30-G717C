.class public Lanq;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static a:Ljava/util/ArrayList;

.field public static final b:Landroid/net/Uri;

.field public static final c:Landroid/net/Uri;

.field public static final d:Landroid/net/Uri;

.field public static final e:Landroid/net/Uri;

.field public static final f:Landroid/net/Uri;

.field public static final g:Landroid/net/Uri;

.field public static final h:Landroid/net/Uri;

.field public static final i:Landroid/net/Uri;

.field public static final j:Landroid/net/Uri;

.field public static final k:Landroid/net/Uri;

.field public static final l:Landroid/net/Uri;

.field public static final m:Landroid/net/Uri;

.field public static final n:Landroid/net/Uri;

.field public static final o:Landroid/net/Uri;


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private a:Landroid/content/Context;

.field private a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

.field private b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lanq;->a:Ljava/util/ArrayList;

    .line 42
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->a:Landroid/net/Uri;

    .line 43
    const-string v0, "content://sms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->b:Landroid/net/Uri;

    .line 44
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->c:Landroid/net/Uri;

    .line 45
    const-string v0, "content://sms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->d:Landroid/net/Uri;

    .line 46
    const-string v0, "content://sms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->e:Landroid/net/Uri;

    .line 47
    const-string v0, "content://sms/failed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->f:Landroid/net/Uri;

    .line 48
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->g:Landroid/net/Uri;

    .line 50
    const-string v0, "content://mms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->h:Landroid/net/Uri;

    .line 51
    const-string v0, "content://mms/addr"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->i:Landroid/net/Uri;

    .line 52
    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->j:Landroid/net/Uri;

    .line 53
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->k:Landroid/net/Uri;

    .line 54
    const-string v0, "content://mms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->l:Landroid/net/Uri;

    .line 55
    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->m:Landroid/net/Uri;

    .line 56
    const-string v0, "content://mms/failed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->n:Landroid/net/Uri;

    .line 57
    const-string v0, "content://mms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lanq;->o:Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 104
    .line 107
    if-nez p0, :cond_1

    move v0, v6

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    :try_start_0
    sget-object v1, Lanz;->a:Landroid/net/Uri;

    .line 109
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    move v0, v6

    .line 113
    :goto_1
    if-eqz v1, :cond_0

    .line 114
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 119
    :catchall_0
    move-exception v0

    throw v0

    .line 116
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .parameter

    .prologue
    const v9, 0x7f0b00e7

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 70
    iget-object v0, p0, Lanq;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 72
    iget-object v0, p0, Lanq;->a:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 74
    invoke-static {}, Laox;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-object v0, p0, Lanq;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lanq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 75
    iget-object v0, p0, Lanq;->a:Landroid/content/ContentResolver;

    sget-object v1, Lanz;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id > ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lcom/sohu/inputmethod/sms/SogouMessageItem;

    iget-object v2, p0, Lanq;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/sohu/inputmethod/sms/SogouMessageItem;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lanq;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lanq;->b:Ljava/util/ArrayList;

    .line 82
    sget-object v2, Lanq;->a:Ljava/util/ArrayList;

    monitor-enter v2

    .line 83
    :try_start_0
    sget-object v0, Lanq;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lanq;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    sget-object v0, Lanq;->a:Ljava/util/ArrayList;

    iget-object v3, p0, Lanq;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v3}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v6

    .line 87
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-nez v0, :cond_0

    iget-object v0, p0, Lanq;->a:Landroid/content/Context;

    iget-object v2, p0, Lanq;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    invoke-virtual {v2}, Lcom/sohu/inputmethod/sms/SogouMessageItem;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lanq;->b:Ljava/util/ArrayList;

    invoke-static {v0, v2, v3}, Lvg;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lut;

    iget-object v2, p0, Lanq;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lanq;->a:Lcom/sohu/inputmethod/sms/SogouMessageItem;

    iget-object v5, p0, Lanq;->b:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v3, v4, v5}, Lut;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sohu/inputmethod/sms/SogouMessageItem;Ljava/util/List;)V

    invoke-virtual {v0}, Lut;->start()V

    .line 94
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_1
    iget-object v0, p0, Lanq;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lanq;->a(Landroid/content/ContentResolver;)I

    move-result v0

    .line 98
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lanq;->a:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 101
    return-void

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v7

    goto :goto_0
.end method
