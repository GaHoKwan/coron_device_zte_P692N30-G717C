.class public Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;
.super Ljava/lang/Object;
.source "ZteNltDbaFactory.java"


# static fields
.field private static instance:Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->instance:Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;
    .locals 2
    .parameter "context"

    .prologue
    .line 19
    const-class v1, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->instance:Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    invoke-direct {v0, p0}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->instance:Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    .line 22
    :cond_0
    sget-object v0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->instance:Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getDbaInstance()Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    iget-object v5, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->context:Landroid/content/Context;

    const v6, 0x7f080004

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, requiredDbVersion:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requiredDbVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 32
    new-instance v2, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    iget-object v5, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;-><init>(Landroid/content/Context;)V

    .line 33
    .local v2, dba:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    invoke-virtual {v2}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->getDbVersion()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, dbVersion:Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, dbVer:[Ljava/lang/String;
    const-string v5, "\\."

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, reqVer:[Ljava/lang/String;
    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db version is wrong.reset database.version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->removeDbFile()V

    .line 40
    new-instance v2, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    .end local v2           #dba:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    iget-object v5, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;-><init>(Landroid/content/Context;)V

    .line 55
    :cond_0
    :goto_0
    return-object v2

    .line 47
    .restart local v2       #dba:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    :cond_1
    aget-object v5, v3, v7

    aget-object v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v3, v8

    aget-object v6, v0, v8

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 52
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db version mismatch.reset database.db version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",requiredVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->removeDbFile()V

    .line 55
    new-instance v2, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    .end local v2           #dba:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    iget-object v5, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
