.class public final Ltmsdk/common/module/adcheck/AdcheckManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private yL:Ltmsdk/common/module/adcheck/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/adcheck/NotificationInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/adcheck/NotificationInfo;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/adcheck/AdcheckManager;->yL:Ltmsdk/common/module/adcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/adcheck/a;->clear(Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear(Ltmsdk/common/module/adcheck/NotificationInfo;)Z
    .locals 1
    .parameter "info"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    iget-object v0, p0, Ltmsdk/common/module/adcheck/AdcheckManager;->yL:Ltmsdk/common/module/adcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/adcheck/a;->clear(Ltmsdk/common/module/adcheck/NotificationInfo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public findAllNotificationInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/adcheck/NotificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Ltmsdk/common/module/adcheck/AdcheckManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/adcheck/AdcheckManager;->yL:Ltmsdk/common/module/adcheck/a;

    invoke-virtual {v0}, Ltmsdk/common/module/adcheck/a;->findAllNotificationInfo()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    new-instance v0, Ltmsdk/common/module/adcheck/a;

    invoke-direct {v0}, Ltmsdk/common/module/adcheck/a;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/adcheck/AdcheckManager;->yL:Ltmsdk/common/module/adcheck/a;

    .line 24
    iget-object v0, p0, Ltmsdk/common/module/adcheck/AdcheckManager;->yL:Ltmsdk/common/module/adcheck/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/adcheck/a;->onCreate(Landroid/content/Context;)V

    .line 25
    iget-object v0, p0, Ltmsdk/common/module/adcheck/AdcheckManager;->yL:Ltmsdk/common/module/adcheck/a;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/adcheck/AdcheckManager;->a(Ltmsdk/common/BaseManager;)V

    .line 26
    return-void
.end method
