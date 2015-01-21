.class Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;
.super Ljava/lang/Object;
.source "SingleCheckHandler.java"

# interfaces
.implements Lcom/zte/update/app/ui/UiObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->registBackgroudObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;

.field final synthetic val$observerMgr:Lcom/zte/update/app/ui/ObserverManager;


# direct methods
.method constructor <init>(Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;Lcom/zte/update/app/ui/ObserverManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;->this$0:Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;

    iput-object p2, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;->val$observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs update(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 125
    const/4 v2, 0x0

    aget-object v0, p2, v2

    .line 126
    .local v0, mainKey:Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object v2, p2, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 128
    .local v1, num:I
    if-lez v1, :cond_0

    .line 129
    invoke-static {v0}, Lcom/zte/update/ui/ActivityLauncher;->startAppInfoActivity(Ljava/lang/Object;)V

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;->val$observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;->this$0:Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;

    #getter for: Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->backgroudObsever:Lcom/zte/update/app/ui/UiObserver;
    invoke-static {v4}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->access$000(Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;)Lcom/zte/update/app/ui/UiObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 134
    iget-object v2, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;->val$observerMgr:Lcom/zte/update/app/ui/ObserverManager;

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler$1;->this$0:Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;

    #getter for: Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->backgroudObsever:Lcom/zte/update/app/ui/UiObserver;
    invoke-static {v4}, Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;->access$000(Lcom/zte/update/mgr/checkhandler/SingleCheckHandler;)Lcom/zte/update/app/ui/UiObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/zte/update/app/ui/ObserverManager;->unRegisterObserver(Ljava/lang/Object;Lcom/zte/update/app/ui/UiObserver;)V

    .line 136
    return-void
.end method
