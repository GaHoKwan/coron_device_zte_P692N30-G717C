.class Ltmsdk/common/module/powersaving/d$1;
.super Ltmsdk/common/module/powersaving/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltmsdk/common/module/powersaving/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AX:Ltmsdk/common/module/powersaving/d;


# direct methods
.method constructor <init>(Ltmsdk/common/module/powersaving/d;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-direct {p0}, Ltmsdk/common/module/powersaving/a;-><init>()V

    return-void
.end method


# virtual methods
.method public fK()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v0}, Ltmsdk/common/module/powersaving/d;->a(Ltmsdk/common/module/powersaving/d;)Z

    move-result v0

    return v0
.end method

.method public fL()Ltmsdk/common/module/powersaving/PowerSavingConfig;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v0}, Ltmsdk/common/module/powersaving/d;->b(Ltmsdk/common/module/powersaving/d;)Ltmsdk/common/module/powersaving/PowerSavingConfig;

    move-result-object v0

    return-object v0
.end method

.method public onBatteryLevelChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 52
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 53
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 54
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onBatteryLevelChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onCloseBlueTooth(Z)V
    .locals 4
    .parameter "isBatterySaveSetting"

    .prologue
    .line 140
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 141
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 142
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onCloseBlueTooth(Z)V

    goto :goto_0

    .line 146
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onCloseMobileNetwork(Z)V
    .locals 4
    .parameter "isBatterySaveSetting"

    .prologue
    .line 118
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 119
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 120
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onCloseMobileNetwork(Z)V

    goto :goto_0

    .line 124
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onCloseWifi(Z)V
    .locals 4
    .parameter "isBatterySaveSetting"

    .prologue
    .line 96
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 97
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 98
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onCloseWifi(Z)V

    goto :goto_0

    .line 102
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onFinishBatteryCharging(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 63
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 64
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 65
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onFinishBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onOpenBlueTooth(Z)V
    .locals 4
    .parameter "isBatterySaveSetting"

    .prologue
    .line 151
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 152
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 153
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 154
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onOpenBlueTooth(Z)V

    goto :goto_0

    .line 157
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onOpenMobileNetwork(Z)V
    .locals 4
    .parameter "isBatterySaveSetting"

    .prologue
    .line 129
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 130
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 131
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 132
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onOpenMobileNetwork(Z)V

    goto :goto_0

    .line 135
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onOpenWifi(Z)V
    .locals 4
    .parameter "isBatterySaveSetting"

    .prologue
    .line 107
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 108
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 109
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 110
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onOpenWifi(Z)V

    goto :goto_0

    .line 113
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onStartBatteryCharging(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 74
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 75
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 76
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onStartBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method

.method public onStopBatteryCharging(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 85
    iget-object v3, p0, Ltmsdk/common/module/powersaving/d$1;->AX:Ltmsdk/common/module/powersaving/d;

    invoke-static {v3}, Ltmsdk/common/module/powersaving/d;->c(Ltmsdk/common/module/powersaving/d;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 86
    .local v1, listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/common/module/powersaving/PowerSavingEventListener;

    .line 87
    .local v2, tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v2, p1}, Ltmsdk/common/module/powersaving/PowerSavingEventListener;->onStopBatteryCharging(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    .end local v1           #listener:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Ltmsdk/common/module/powersaving/PowerSavingEventListener;>;"
    .end local v2           #tempListener:Ltmsdk/common/module/powersaving/PowerSavingEventListener;
    :cond_1
    return-void
.end method
