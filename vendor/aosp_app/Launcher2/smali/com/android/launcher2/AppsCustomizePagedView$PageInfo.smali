.class Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AppsCustomizePagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PageInfo"
.end annotation


# instance fields
.field allApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher2/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppsCustomizePagedView;)V
    .locals 1
    .parameter

    .prologue
    .line 4463
    iput-object p1, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    .line 4464
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 1
    .parameter "appInfo"

    .prologue
    .line 4479
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4480
    return-void
.end method

.method public find(Lcom/android/launcher2/ApplicationInfo;)I
    .locals 4
    .parameter "info"

    .prologue
    .line 4510
    iget-object v1, p1, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    .line 4511
    .local v1, componentName:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4512
    iget-object v3, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 4513
    .local v0, appInfo:Lcom/android/launcher2/ApplicationInfo;
    iget-object v3, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4517
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    .end local v2           #i:I
    :goto_1
    return v2

    .line 4511
    .restart local v0       #appInfo:Lcom/android/launcher2/ApplicationInfo;
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4517
    .end local v0           #appInfo:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public get(I)Lcom/android/launcher2/ApplicationInfo;
    .locals 1
    .parameter "pos"

    .prologue
    .line 4470
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    return-object v0
.end method

.method public getAppsCount()I
    .locals 1

    .prologue
    .line 4560
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 4551
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 3

    .prologue
    .line 4542
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v1, v1, Lcom/android/launcher2/PagedView;->mCellCountX:I

    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->this$0:Lcom/android/launcher2/AppsCustomizePagedView;

    iget v2, v2, Lcom/android/launcher2/PagedView;->mCellCountY:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modify(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    .line 4527
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->find(Lcom/android/launcher2/ApplicationInfo;)I

    move-result v1

    .line 4528
    .local v1, pos:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 4529
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 4534
    :goto_0
    return-void

    .line 4532
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public remove(I)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 4488
    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4489
    return-void
.end method

.method public remove(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 2
    .parameter "appInfo"

    .prologue
    .line 4497
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->find(Lcom/android/launcher2/ApplicationInfo;)I

    move-result v0

    .line 4498
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4499
    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4501
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4565
    invoke-virtual {p0}, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4566
    const-string v0, "Empty PageInfo"

    .line 4568
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PageInfo{ page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppsCustomizePagedView$PageInfo;->allApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
