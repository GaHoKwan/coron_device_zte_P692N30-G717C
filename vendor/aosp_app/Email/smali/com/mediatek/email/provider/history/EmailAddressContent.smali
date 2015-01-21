.class public abstract Lcom/mediatek/email/provider/history/EmailAddressContent;
.super Ljava/lang/Object;
.source "EmailAddressContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/provider/history/EmailAddressContent$AddressColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.mediatek.email.provider.history"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final NOT_SAVED:I = -0x1

.field public static final PROVIDER_PERMISSION:Ljava/lang/String; = "com.mediatek.email.provider.history.permission.ACCESS_PROVIDE"

.field public static final TAG:Ljava/lang/String; = "EmailAddrerssContent"


# instance fields
.field public mBaseUri:Landroid/net/Uri;

.field public mId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "content://com.mediatek.email.provider.history"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/mediatek/email/provider/history/EmailAddressContent;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/email/provider/history/EmailAddressContent;->mId:J

    return-void
.end method

.method public static getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/mediatek/email/provider/history/EmailAddressContent;
    .locals 4
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/email/provider/history/EmailAddressContent;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/provider/history/EmailAddressContent;

    .line 46
    .local v0, content:Lcom/mediatek/email/provider/history/EmailAddressContent;,"TT;"
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/mediatek/email/provider/history/EmailAddressContent;->mId:J

    .line 47
    invoke-virtual {v0, p0}, Lcom/mediatek/email/provider/history/EmailAddressContent;->restore(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    .end local v0           #content:Lcom/mediatek/email/provider/history/EmailAddressContent;,"TT;"
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 51
    :catch_1
    move-exception v1

    .line 52
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static restoreAddresstWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/mediatek/email/provider/history/EmailAddressContent;
    .locals 9
    .parameter "context"
    .parameter
    .parameter "contentUri"
    .parameter "contentProjection"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mediatek/email/provider/history/EmailAddressContent;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .local p1, klass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 74
    invoke-static {p2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, u:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 77
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    if-nez v6, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 90
    :catch_0
    move-exception v7

    .line 91
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "EmailAddrerssContent"

    const-string v2, "EmailAddrerssContent#restoreContentWithId throw out IllegalStateException"

    invoke-static {v0, v2, v7}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :goto_0
    move-object v0, v8

    .line 96
    :goto_1
    return-object v0

    .line 82
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {v6, p1}, Lcom/mediatek/email/provider/history/EmailAddressContent;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/mediatek/email/provider/history/EmailAddressContent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 88
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 93
    :catch_1
    move-exception v7

    .line 94
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "EmailAddrerssContent"

    const-string v2, "EmailAddrerssContent#restoreContentWithId throw out SQLiteException"

    invoke-static {v0, v2, v7}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 88
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :cond_1
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
.end method


# virtual methods
.method public abstract restore(Landroid/database/Cursor;)V
.end method

.method public abstract toContentValues()Landroid/content/ContentValues;
.end method
