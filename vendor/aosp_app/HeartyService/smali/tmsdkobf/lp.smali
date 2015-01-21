.class public final Ltmsdkobf/lp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltmsdkobf/lp$a;,
        Ltmsdkobf/lp$b;
    }
.end annotation


# static fields
.field private static CD:Ltmsdkobf/lp;


# instance fields
.field private CE:Ltmsdk/common/utils/ContactsMap;

.field private CF:Ltmsdkobf/lp$b;

.field private CG:Ltmsdkobf/lp$a;

.field private CH:Ltmsdkobf/ij;

.field private volatile CI:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ltmsdk/common/utils/ContactsMap;

    invoke-direct {v0}, Ltmsdk/common/utils/ContactsMap;-><init>()V

    iput-object v0, p0, Ltmsdkobf/lp;->CE:Ltmsdk/common/utils/ContactsMap;

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ltmsdkobf/lp;->mHandler:Landroid/os/Handler;

    .line 48
    new-instance v0, Ltmsdkobf/lp$b;

    invoke-direct {v0, p0, v3}, Ltmsdkobf/lp$b;-><init>(Ltmsdkobf/lp;Z)V

    iput-object v0, p0, Ltmsdkobf/lp;->CF:Ltmsdkobf/lp$b;

    .line 49
    new-instance v0, Ltmsdkobf/lp$a;

    iget-object v1, p0, Ltmsdkobf/lp;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Ltmsdkobf/lp$a;-><init>(Ltmsdkobf/lp;Landroid/os/Handler;)V

    iput-object v0, p0, Ltmsdkobf/lp;->CG:Ltmsdkobf/lp$a;

    .line 50
    iget-object v0, p0, Ltmsdkobf/lp;->CG:Ltmsdkobf/lp$a;

    invoke-virtual {v0}, Ltmsdkobf/lp$a;->gB()V

    .line 51
    invoke-static {}, Ltmsdkobf/ig;->cN()Ltmsdkobf/ij;

    move-result-object v0

    iput-object v0, p0, Ltmsdkobf/lp;->CH:Ltmsdkobf/ij;

    .line 52
    iget-object v0, p0, Ltmsdkobf/lp;->CH:Ltmsdkobf/ij;

    iget-object v1, p0, Ltmsdkobf/lp;->CF:Ltmsdkobf/lp$b;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ltmsdkobf/ij;->a(ILjava/lang/Runnable;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static synthetic a(Ltmsdkobf/lp;)Ltmsdk/common/utils/ContactsMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Ltmsdkobf/lp;->CE:Ltmsdk/common/utils/ContactsMap;

    return-object v0
.end method

.method static synthetic a(Ltmsdkobf/lp;Ltmsdk/common/utils/ContactsMap;)Ltmsdk/common/utils/ContactsMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Ltmsdkobf/lp;->CE:Ltmsdk/common/utils/ContactsMap;

    return-object p1
.end method

.method static synthetic a(Ltmsdkobf/lp;Ltmsdkobf/lp$b;)Ltmsdkobf/lp$b;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Ltmsdkobf/lp;->CF:Ltmsdkobf/lp$b;

    return-object p1
.end method

.method static synthetic a(Ltmsdkobf/lp;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Ltmsdkobf/lp;->CI:Z

    return p1
.end method

.method static synthetic b(Ltmsdkobf/lp;)Ltmsdkobf/lp$b;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Ltmsdkobf/lp;->CF:Ltmsdkobf/lp$b;

    return-object v0
.end method

.method static synthetic c(Ltmsdkobf/lp;)Ltmsdkobf/ij;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Ltmsdkobf/lp;->CH:Ltmsdkobf/ij;

    return-object v0
.end method

.method private static cO(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 298
    if-nez p0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 301
    :cond_1
    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 302
    .local v0, indexAt:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-gt v0, v2, :cond_0

    .line 305
    const/16 v2, 0x2e

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static synthetic cP(Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Ltmsdkobf/lp;->cO(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized gA()Ltmsdkobf/lp;
    .locals 2

    .prologue
    .line 39
    const-class v1, Ltmsdkobf/lp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ltmsdkobf/lp;->CD:Ltmsdkobf/lp;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ltmsdkobf/lp;

    invoke-direct {v0}, Ltmsdkobf/lp;-><init>()V

    sput-object v0, Ltmsdkobf/lp;->CD:Ltmsdkobf/lp;

    .line 42
    :cond_0
    sget-object v0, Ltmsdkobf/lp;->CD:Ltmsdkobf/lp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized cM(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "phoneNumber"

    .prologue
    const/4 v8, 0x0

    .line 61
    monitor-enter p0

    if-nez p1, :cond_1

    move-object v3, v8

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 64
    :cond_1
    :try_start_0
    iget-boolean v3, p0, Ltmsdkobf/lp;->CI:Z

    if-eqz v3, :cond_2

    .line 65
    iget-object v3, p0, Ltmsdkobf/lp;->CE:Ltmsdk/common/utils/ContactsMap;

    invoke-virtual {v3, p1}, Ltmsdk/common/utils/ContactsMap;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Ltmsdk/common/TMSDKContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    .line 69
    .local v2, columns:[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 70
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 73
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 74
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    if-nez v3, :cond_5

    .line 83
    :cond_3
    if-eqz v6, :cond_4

    .line 84
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    :goto_1
    move-object v3, v8

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v7

    .line 87
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v3, "ContactsLookupCache"

    const-string v4, "closing Cursor"

    invoke-static {v3, v4, v7}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 61
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 77
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_5
    const/4 v3, 0x0

    :try_start_4
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    .line 83
    if-eqz v6, :cond_0

    .line 84
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 86
    :catch_1
    move-exception v7

    .line 87
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_6
    const-string v4, "ContactsLookupCache"

    const-string v5, "closing Cursor"

    invoke-static {v4, v5, v7}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 78
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v7

    .line 79
    .local v7, e:Ljava/lang/Exception;
    :try_start_7
    const-string v3, "ContactsLookupCache"

    const-string v4, "lookupName"

    invoke-static {v3, v4, v7}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    if-eqz v6, :cond_6

    .line 84
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_3

    .end local v7           #e:Ljava/lang/Exception;
    :cond_6
    :goto_2
    move-object v3, v8

    .line 88
    goto :goto_0

    .line 86
    .restart local v7       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 87
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_9
    const-string v3, "ContactsLookupCache"

    const-string v4, "closing Cursor"

    invoke-static {v3, v4, v7}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 82
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v3

    .line 83
    if-eqz v6, :cond_7

    .line 84
    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4

    .line 88
    :cond_7
    :goto_3
    :try_start_b
    throw v3

    .line 86
    :catch_4
    move-exception v7

    .line 87
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    const-string v4, "ContactsLookupCache"

    const-string v5, "closing Cursor"

    invoke-static {v4, v5, v7}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3
.end method

.method public cN(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ltmsdkobf/lp;->cM(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
