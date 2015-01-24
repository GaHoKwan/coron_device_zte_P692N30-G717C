.class public Lcom/android/mipop/cropimage/MonitoredActivity;
.super Lcom/android/mipop/cropimage/NoSearchActivity;


# instance fields
.field private final mListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/mipop/cropimage/NoSearchActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/q;

    invoke-interface {v0, p0}, Lcom/android/mipop/cropimage/q;->a(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/q;

    invoke-interface {v0, p0}, Lcom/android/mipop/cropimage/q;->b(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;->onStart()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/q;

    invoke-interface {v0, p0}, Lcom/android/mipop/cropimage/q;->c(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/mipop/cropimage/NoSearchActivity;->onStop()V

    iget-object v0, p0, Lcom/android/mipop/cropimage/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mipop/cropimage/q;

    invoke-interface {v0, p0}, Lcom/android/mipop/cropimage/q;->d(Lcom/android/mipop/cropimage/MonitoredActivity;)V

    goto :goto_0

    :cond_0
    return-void
.end method
