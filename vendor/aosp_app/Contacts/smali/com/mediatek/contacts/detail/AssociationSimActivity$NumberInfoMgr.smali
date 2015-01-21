.class public final Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
.super Ljava/lang/Object;
.source "AssociationSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/detail/AssociationSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NumberInfoMgr"
.end annotation


# instance fields
.field public mNumberInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mShowingIndex:I

.field final synthetic this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    .line 403
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 409
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    .line 410
    return-void
.end method

.method public getContent(I)Ljava/lang/String;
    .locals 3
    .parameter "index"

    .prologue
    .line 440
    const/4 v1, -0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 442
    .local v0, subValues:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    .end local v0           #subValues:Landroid/content/Entity$NamedContentValues;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getShowingNumberContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getContent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShowingNumberDataId()J
    .locals 3

    .prologue
    .line 476
    iget v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 477
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    iget v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 478
    .local v0, subValues:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 480
    .end local v0           #subValues:Landroid/content/Entity$NamedContentValues;
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getShowingNumberSimId()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 468
    iget v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    if-le v2, v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    iget v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 470
    .local v0, subValues:Landroid/content/Entity$NamedContentValues;
    iget-object v1, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v2, "sim_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 472
    .end local v0           #subValues:Landroid/content/Entity$NamedContentValues;
    :cond_0
    return v1
.end method

.method public getShowingNumberTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeName(I)Ljava/lang/String;
    .locals 4
    .parameter "index"

    .prologue
    .line 448
    const/4 v2, -0x1

    if-le p1, v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 449
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Entity$NamedContentValues;

    .line 450
    .local v0, subValues:Landroid/content/Entity$NamedContentValues;
    iget-object v2, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v3, "data2"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 451
    .local v1, type:I
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 453
    .end local v0           #subValues:Landroid/content/Entity$NamedContentValues;
    .end local v1           #type:I
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public initNumberInfo()Z
    .locals 3

    .prologue
    .line 413
    invoke-virtual {p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->clear()V

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    .line 415
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->this$0:Lcom/mediatek/contacts/detail/AssociationSimActivity;

    #getter for: Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
    invoke-static {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->access$900(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo$NamedContentValuesDecorator;

    .line 416
    .local v1, values:Landroid/content/Entity$NamedContentValues;
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 418
    .end local v1           #values:Landroid/content/Entity$NamedContentValues;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setShowingIndex(I)Z
    .locals 1
    .parameter "showingIndex"

    .prologue
    .line 422
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    if-eq v0, p1, :cond_0

    .line 423
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 424
    iput p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowingNumberNameByDataId(J)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 457
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity$NamedContentValues;

    .line 459
    .local v1, subValues:Landroid/content/Entity$NamedContentValues;
    iget-object v2, v1, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 460
    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mShowingIndex:I

    .line 461
    const/4 v2, 0x1

    .line 464
    .end local v1           #subValues:Landroid/content/Entity$NamedContentValues;
    :goto_1
    return v2

    .line 457
    .restart local v1       #subValues:Landroid/content/Entity$NamedContentValues;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v1           #subValues:Landroid/content/Entity$NamedContentValues;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
