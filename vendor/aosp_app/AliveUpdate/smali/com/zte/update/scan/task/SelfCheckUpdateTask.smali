.class public Lcom/zte/update/scan/task/SelfCheckUpdateTask;
.super Lcom/zte/update/scan/task/SingleCheckUpdateTask;
.source "SelfCheckUpdateTask.java"


# static fields
.field private static final PACKNAME:Ljava/lang/String; = "com.zte.aliveupdate"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "com.zte.aliveupdate"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "packName"
    .parameter "desc"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/zte/update/scan/task/SingleCheckUpdateTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected handleResponse(Lcom/zte/update/scan/Scaner;Lorg/json/JSONArray;)V
    .locals 8
    .parameter "utils"
    .parameter "response"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    invoke-virtual {p1, p2}, Lcom/zte/update/scan/Scaner;->parseResponseJSONtoMergeStorage(Lorg/json/JSONArray;)I

    move-result v0

    .line 34
    .local v0, num:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleResponse num="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/zte/util/Log;->info(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/update/scan/task/SelfCheckUpdateTask;->appName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 36
    invoke-static {}, Lcom/zte/update/app/ui/ObserverManager;->getInstance()Lcom/zte/update/app/ui/ObserverManager;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/zte/update/scan/task/SelfCheckUpdateTask;->appName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/zte/update/app/ui/ObserverManager;->update(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 39
    return-void
.end method
