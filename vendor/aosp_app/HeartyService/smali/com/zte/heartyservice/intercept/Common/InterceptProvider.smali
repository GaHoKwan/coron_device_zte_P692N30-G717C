.class public Lcom/zte/heartyservice/intercept/Common/InterceptProvider;
.super Landroid/content/ContentProvider;
.source "InterceptProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;
    }
.end annotation


# static fields
.field public static final INTERCEPT_CALL:I = 0x1

.field public static final INTERCEPT_SMS:I = 0x2

.field private static final TAG:Ljava/lang/String; = "InterceptProvider"

.field public static final TYPE_BLACK:I = 0x0

.field public static final TYPE_KEYWORD:I = 0x2

.field public static final TYPE_WHITE:I = 0x1


# instance fields
.field private api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    .line 21
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->enforceAuthPermission()V

    .line 68
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    invoke-interface {v1, p1, p2, p3}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InterceptProvider"

    const-string v2, "delete failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    invoke-interface {v1, p1}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InterceptProvider"

    const-string v2, "getType failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    .line 78
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->enforceAuthPermission()V

    .line 79
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    invoke-interface {v1, p1, p2}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 83
    .end local p1
    :goto_0
    return-object p1

    .line 80
    .restart local p1
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InterceptProvider"

    const-string v2, "insert failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 5

    .prologue
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.zte.heartyservice.intercept."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getVirusDBEngineName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".InterceptProviderAPI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, className:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    iput-object v2, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    .line 45
    const-string v2, "InterceptProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterceptProviderAPI init : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;->init(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 51
    :goto_0
    return v2

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "InterceptProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InterceptProviderAPI init failed, has no "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 91
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->enforceAuthPermission()V

    .line 92
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v6

    .line 95
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "InterceptProvider"

    const-string v1, "query failed"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->enforceAuthPermission()V

    .line 105
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Common/InterceptProvider;->api:Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/zte/heartyservice/intercept/Common/InterceptProvider$VirusEngineAPI;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InterceptProvider"

    const-string v2, "update failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    const/4 v1, 0x0

    goto :goto_0
.end method
