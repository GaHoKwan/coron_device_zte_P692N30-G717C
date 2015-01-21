.class public final Ltmsdk/common/module/usefulnumber/UsefulNumberManager;
.super Ltmsdk/common/creator/BaseManagerC;
.source "SourceFile"


# instance fields
.field private BZ:Ltmsdk/common/module/usefulnumber/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ltmsdk/common/creator/BaseManagerC;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllYellowNumbers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->BZ:Ltmsdk/common/module/usefulnumber/a;

    invoke-virtual {v0}, Ltmsdk/common/module/usefulnumber/a;->getAllYellowNumbers()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public getAllYellowNumbersWithGroup()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/usefulnumber/UsefulNumberEntity;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->dn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->BZ:Ltmsdk/common/module/usefulnumber/a;

    invoke-virtual {v0}, Ltmsdk/common/module/usefulnumber/a;->getAllYellowNumbersWithGroup()Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 22
    new-instance v0, Ltmsdk/common/module/usefulnumber/a;

    invoke-direct {v0}, Ltmsdk/common/module/usefulnumber/a;-><init>()V

    iput-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->BZ:Ltmsdk/common/module/usefulnumber/a;

    .line 23
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->BZ:Ltmsdk/common/module/usefulnumber/a;

    invoke-virtual {v0, p1}, Ltmsdk/common/module/usefulnumber/a;->onCreate(Landroid/content/Context;)V

    .line 24
    iget-object v0, p0, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->BZ:Ltmsdk/common/module/usefulnumber/a;

    invoke-virtual {p0, v0}, Ltmsdk/common/module/usefulnumber/UsefulNumberManager;->a(Ltmsdk/common/BaseManager;)V

    .line 27
    const v0, 0x1d4e2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ltmsdkobf/im;->a(II)V

    .line 28
    return-void
.end method
