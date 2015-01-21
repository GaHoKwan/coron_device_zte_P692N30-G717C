.class public Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;
.super Lcom/mediatek/gallery3d/ext/ActivityHooker;
.source "ActivityHookerGroup.java"


# instance fields
.field private mHooks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/gallery3d/ext/IActivityHooker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z
    .locals 1
    .parameter "hooker"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getHooker(I)Lcom/mediatek/gallery3d/ext/IActivityHooker;
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    return-object v0
.end method

.method public init(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->init(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 140
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 141
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0, p1, p2}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->init(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 143
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreate(Landroid/os/Bundle;)V

    .line 52
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 53
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    .line 55
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, handle:Z
    iget-object v4, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 97
    .local v1, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v1, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    .line 98
    .local v3, one:Z
    if-nez v0, :cond_0

    .line 99
    move v0, v3

    goto :goto_0

    .line 102
    .end local v1           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    .end local v3           #one:Z
    :cond_1
    return v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onDestroy()V

    .line 87
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 88
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onDestroy()V

    goto :goto_0

    .line 90
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, handle:Z
    iget-object v4, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 121
    .local v1, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v1, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 122
    .local v3, one:Z
    if-nez v0, :cond_0

    .line 123
    move v0, v3

    goto :goto_0

    .line 126
    .end local v1           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    .end local v3           #one:Z
    :cond_1
    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPause()V

    .line 73
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 74
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onPause()V

    goto :goto_0

    .line 76
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 107
    const/4 v0, 0x0

    .line 108
    .local v0, handle:Z
    iget-object v4, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 109
    .local v1, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v1, p1}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    .line 110
    .local v3, one:Z
    if-nez v0, :cond_0

    .line 111
    move v0, v3

    goto :goto_0

    .line 114
    .end local v1           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    .end local v3           #one:Z
    :cond_1
    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onResume()V

    .line 66
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 67
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onResume()V

    goto :goto_0

    .line 69
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 58
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onStart()V

    .line 59
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 60
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onStart()V

    goto :goto_0

    .line 62
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 79
    invoke-super {p0}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->onStop()V

    .line 80
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 81
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->onStop()V

    goto :goto_0

    .line 83
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public removeHooker(Lcom/mediatek/gallery3d/ext/IActivityHooker;)Z
    .locals 1
    .parameter "hooker"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/mediatek/gallery3d/ext/ActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v2, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gallery3d/ext/IActivityHooker;

    .line 133
    .local v0, hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    invoke-interface {v0, p1, p2}, Lcom/mediatek/gallery3d/ext/IActivityHooker;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 135
    .end local v0           #hook:Lcom/mediatek/gallery3d/ext/IActivityHooker;
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mediatek/gallery3d/ext/ActivityHookerGroup;->mHooks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
