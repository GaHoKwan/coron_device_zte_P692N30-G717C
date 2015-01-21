.class Ltmsdkobf/hc$b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdkobf/hc$b;->b(Ltmsdk/common/module/aresengine/SmsEntity;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oY:Ltmsdkobf/hc$b;

.field final synthetic pa:Ltmsdk/common/module/aresengine/SmsEntity;


# direct methods
.method constructor <init>(Ltmsdkobf/hc$b;Ltmsdk/common/module/aresengine/SmsEntity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Ltmsdkobf/hc$b$3;->oY:Ltmsdkobf/hc$b;

    iput-object p2, p0, Ltmsdkobf/hc$b$3;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 606
    const-class v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/aresengine/AresEngineManager;

    invoke-virtual {v1}, Ltmsdk/bg/module/aresengine/AresEngineManager;->getMmsTransactionHelper()Ltmsdk/common/module/aresengine/MmsTransactionHelper;

    move-result-object v0

    .line 607
    .local v0, transcationHelper:Ltmsdk/common/module/aresengine/MmsTransactionHelper;
    const/16 v1, 0x83

    iget-object v2, p0, Ltmsdkobf/hc$b$3;->pa:Ltmsdk/common/module/aresengine/SmsEntity;

    invoke-virtual {v0, v1, v2}, Ltmsdk/common/module/aresengine/MmsTransactionHelper;->sendNotifyRespInd(ILtmsdk/common/module/aresengine/SmsEntity;)I

    .line 608
    return-void
.end method
