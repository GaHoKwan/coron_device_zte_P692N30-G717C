.class public Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
.super Ljava/lang/Object;
.source "DisableViewsUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/DisableViewsUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
    .locals 2
    .parameter "view"

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :goto_0
    return-object p0

    .line 68
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/util/DisableViewsUtil;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "view is null, abort adding"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addViews(Ljava/util/List;)Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    iget-object v0, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 75
    return-object p0
.end method

.method public build()Lcom/mediatek/contacts/util/DisableViewsUtil;
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/mediatek/contacts/util/DisableViewsUtil;

    iget-object v1, p0, Lcom/mediatek/contacts/util/DisableViewsUtil$Builder;->mViews:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mediatek/contacts/util/DisableViewsUtil;-><init>(Ljava/util/List;Lcom/mediatek/contacts/util/DisableViewsUtil$1;)V

    return-object v0
.end method
