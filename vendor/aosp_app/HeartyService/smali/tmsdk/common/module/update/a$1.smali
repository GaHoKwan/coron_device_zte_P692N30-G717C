.class Ltmsdk/common/module/update/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdkobf/jw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltmsdk/common/module/update/a;->update(Ljava/util/List;Ltmsdk/common/module/update/IUpdateListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BV:Ltmsdk/common/module/update/IUpdateListener;

.field final synthetic BW:Ltmsdk/common/module/update/UpdateInfo;

.field final synthetic BX:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic BY:Ltmsdk/common/module/update/a;


# direct methods
.method constructor <init>(Ltmsdk/common/module/update/a;Ltmsdk/common/module/update/IUpdateListener;Ltmsdk/common/module/update/UpdateInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Ltmsdk/common/module/update/a$1;->BY:Ltmsdk/common/module/update/a;

    iput-object p2, p0, Ltmsdk/common/module/update/a$1;->BV:Ltmsdk/common/module/update/IUpdateListener;

    iput-object p3, p0, Ltmsdk/common/module/update/a$1;->BW:Ltmsdk/common/module/update/UpdateInfo;

    iput-object p4, p0, Ltmsdk/common/module/update/a$1;->BX:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 364
    const-string v1, "key_errcode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 365
    .local v0, errCode:I
    iget-object v1, p0, Ltmsdk/common/module/update/a$1;->BV:Ltmsdk/common/module/update/IUpdateListener;

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Ltmsdk/common/module/update/a$1;->BV:Ltmsdk/common/module/update/IUpdateListener;

    iget-object v2, p0, Ltmsdk/common/module/update/a$1;->BW:Ltmsdk/common/module/update/UpdateInfo;

    invoke-interface {v1, v2, v0}, Ltmsdk/common/module/update/IUpdateListener;->onUpdateEvent(Ltmsdk/common/module/update/UpdateInfo;I)V

    .line 368
    :cond_0
    iget-object v1, p0, Ltmsdk/common/module/update/a$1;->BX:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 369
    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0
    .parameter "data"

    .prologue
    .line 360
    return-void
.end method
