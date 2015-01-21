.class final Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "USimGroupArray"
.end annotation


# instance fields
.field private mMaxUsimGroupCount:Landroid/util/SparseIntArray;

.field private mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

.field private mSize:I

.field private mUgrpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/UsimGroup;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .locals 6
    .parameter "size"

    .prologue
    const/4 v5, -0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v3, 0x0

    iput v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mSize:I

    .line 83
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    .line 84
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    .line 85
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    .line 86
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getFirstSlotId()I

    move-result v0

    .line 87
    .local v0, firstSlotId:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v2, ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    iget-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 90
    iget-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 91
    iget-object v3, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    add-int v4, v0, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v2           #ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    :cond_0
    iput p1, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mSize:I

    .line 94
    return-void
.end method


# virtual methods
.method addItem(ILcom/mediatek/common/telephony/UsimGroup;)Z
    .locals 1
    .parameter "slotId"
    .parameter "usimGroup"

    .prologue
    .line 104
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 107
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method get(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/common/telephony/UsimGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method getItem(II)Lcom/mediatek/common/telephony/UsimGroup;
    .locals 6
    .parameter "slotId"
    .parameter "usimGroupId"

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v2, v4

    .line 145
    :goto_0
    return-object v2

    .line 138
    :cond_0
    iget-object v5, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 139
    .local v3, ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    const/4 v0, 0x0

    .line 140
    .local v0, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/UsimGroup;

    .line 141
    .local v2, ug:Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual {v2}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v5

    if-ne v5, p2, :cond_1

    goto :goto_0

    .end local v2           #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_2
    move-object v2, v4

    .line 145
    goto :goto_0
.end method

.method getMaxUsimGroupCount(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 149
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "ContactsGroupUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, -0x1

    .line 153
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method getMaxUsimGroupNameLength(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 164
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    const-string v0, "ContactsGroupUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const/4 v0, -0x1

    .line 168
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    goto :goto_0
.end method

.method removeItem(II)Z
    .locals 8
    .parameter "slotId"
    .parameter "usimGroupId"

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v4

    .line 114
    :cond_1
    iget-object v5, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mUgrpArray:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 115
    .local v3, ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    const/4 v0, 0x0

    .line 116
    .local v0, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/UsimGroup;

    .line 117
    .local v2, ug:Lcom/mediatek/common/telephony/UsimGroup;
    const-string v5, "ContactsGroupUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ug---index:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " || name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {v2}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 125
    .end local v2           #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_2
    const-string v5, "ContactsGroupUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ug---size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 127
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 128
    const-string v4, "ContactsGroupUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ug---size after remove:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    .restart local v2       #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_3
    const-string v5, "ContactsGroupUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ug---i count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method setMaxUsimGroupCount(II)V
    .locals 1
    .parameter "slotId"
    .parameter "count"

    .prologue
    .line 157
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupCount:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method setMaxUsimGroupNameLength(II)V
    .locals 1
    .parameter "slotId"
    .parameter "length"

    .prologue
    .line 172
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->mMaxUsimGroupNameLength:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method
