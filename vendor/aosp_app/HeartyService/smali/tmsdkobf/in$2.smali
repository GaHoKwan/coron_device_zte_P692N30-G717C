.class Ltmsdkobf/in$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/in;->o(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic rv:Ltmsdkobf/in;

.field final synthetic rw:Z

.field final synthetic rx:Ltmsdkobf/im;


# direct methods
.method constructor <init>(Ltmsdkobf/in;ZLtmsdkobf/im;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Ltmsdkobf/in$2;->rv:Ltmsdkobf/in;

    iput-boolean p2, p0, Ltmsdkobf/in$2;->rw:Z

    iput-object p3, p0, Ltmsdkobf/in$2;->rx:Ltmsdkobf/im;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 205
    iget-boolean v7, p0, Ltmsdkobf/in$2;->rw:Z

    if-eqz v7, :cond_0

    .line 206
    const-class v7, Ltmsdkobf/lk;

    invoke-static {v7}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v3

    check-cast v3, Ltmsdkobf/lk;

    .line 207
    .local v3, manager:Ltmsdkobf/lk;
    const-class v7, Ltmsdk/common/module/software/SoftwareManager;

    invoke-static {v7}, Ltmsdk/common/creator/ManagerCreatorC;->getManager(Ljava/lang/Class;)Ltmsdk/common/creator/BaseManagerC;

    move-result-object v6

    check-cast v6, Ltmsdk/common/module/software/SoftwareManager;

    .line 208
    .local v6, softManager:Ltmsdk/common/module/software/SoftwareManager;
    const/16 v7, 0x79

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ltmsdk/common/module/software/SoftwareManager;->getInstalledApp(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 214
    .local v0, appEnitutyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 215
    .local v4, serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bx;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v5, softInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ak;>;"
    invoke-static {v0}, Ltmsdkobf/in;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v3, v7, v4, v5}, Ltmsdkobf/lk;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/ArrayList;)I

    move-result v1

    .line 218
    .local v1, code:I
    if-eqz v1, :cond_2

    .line 219
    invoke-static {v1}, Ltmsdk/common/ErrorCode;->judgeErrorCode(I)B

    move-result v2

    .line 220
    .local v2, errorType:B
    if-nez v2, :cond_1

    .line 221
    const-string v7, "checkReportApplist"

    const-string v8, "network error"

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    .end local v0           #appEnitutyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    .end local v1           #code:I
    .end local v2           #errorType:B
    .end local v3           #manager:Ltmsdkobf/lk;
    .end local v4           #serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bx;>;"
    .end local v5           #softInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ak;>;"
    .end local v6           #softManager:Ltmsdk/common/module/software/SoftwareManager;
    :cond_0
    :goto_0
    const/4 v7, 0x0

    invoke-static {v7}, Ltmsdkobf/in;->q(Z)Z

    .line 233
    return-void

    .line 223
    .restart local v0       #appEnitutyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/software/AppEntity;>;"
    .restart local v1       #code:I
    .restart local v2       #errorType:B
    .restart local v3       #manager:Ltmsdkobf/lk;
    .restart local v4       #serverInfoRef:Ljava/util/concurrent/atomic/AtomicReference;,"Ljava/util/concurrent/atomic/AtomicReference<Ltmsdkobf/bx;>;"
    .restart local v5       #softInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdkobf/ak;>;"
    .restart local v6       #softManager:Ltmsdk/common/module/software/SoftwareManager;
    :cond_1
    const-string v7, "checkReportApplist"

    const-string v8, "runtime error"

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    iget-object v7, p0, Ltmsdkobf/in$2;->rx:Ltmsdkobf/im;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ltmsdkobf/im;->o(J)V

    goto :goto_0

    .line 228
    .end local v2           #errorType:B
    :cond_2
    const-string v7, "checkReportApplist"

    const-string v8, "success"

    invoke-static {v7, v8}, Ltmsdk/common/utils/Log;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    iget-object v7, p0, Ltmsdkobf/in$2;->rx:Ltmsdkobf/im;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ltmsdkobf/im;->o(J)V

    goto :goto_0
.end method
