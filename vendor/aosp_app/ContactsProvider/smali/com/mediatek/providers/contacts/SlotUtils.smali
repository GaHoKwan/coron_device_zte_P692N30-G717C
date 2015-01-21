.class public final Lcom/mediatek/providers/contacts/SlotUtils;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/providers/contacts/SlotUtils$SlotInfo;
    }
.end annotation


# static fields
.field private static final FIRST_SLOT_ID:I

.field private static final PHONE_SLOT_NUM:I

.field private static final SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static sSlotInfoMap:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/providers/contacts/SlotUtils$SlotInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 26
    sget v6, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    sput v6, Lcom/mediatek/providers/contacts/SlotUtils;->PHONE_SLOT_NUM:I

    .line 28
    const-class v6, Lcom/mediatek/providers/contacts/SlotUtils;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/mediatek/providers/contacts/SlotUtils;->TAG:Ljava/lang/String;

    .line 43
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/mediatek/providers/contacts/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    .line 45
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v6, Lcom/mediatek/providers/contacts/SlotUtils;->PHONE_SLOT_NUM:I

    if-ge v2, v6, :cond_0

    .line 46
    add-int/lit8 v5, v2, 0x0

    .line 47
    .local v5, slotId:I
    sget-object v6, Lcom/mediatek/providers/contacts/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/mediatek/providers/contacts/SlotUtils$SlotInfo;

    invoke-direct {v8, v5}, Lcom/mediatek/providers/contacts/SlotUtils$SlotInfo;-><init>(I)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v5           #slotId:I
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-static {}, Lcom/mediatek/providers/contacts/SlotUtils;->getSlotCount()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v6, Lcom/mediatek/providers/contacts/SlotUtils;->SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;

    .line 54
    invoke-static {}, Lcom/mediatek/providers/contacts/SlotUtils;->getAllSlotIds()[Ljava/lang/Integer;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/Integer;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 55
    .restart local v5       #slotId:I
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 56
    .local v0, accountNamesForSlot:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "USIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UIM"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v6, Lcom/mediatek/providers/contacts/SlotUtils;->SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v6, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 61
    .end local v0           #accountNamesForSlot:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v5           #slotId:I
    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getAllSlotIds()[Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/providers/contacts/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/mediatek/providers/contacts/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public static getFirstSlotId()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public static getNonSlotId()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public static getPossibleSimAccountNamesForSlot(I)Ljava/util/Collection;
    .locals 4
    .parameter "slotId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    sget-object v3, Lcom/mediatek/providers/contacts/SlotUtils;->SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 96
    .local v0, accountNameArray:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v1, accountNames:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 98
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-object v1
.end method

.method public static getSimAccountNameForSlot(II)Ljava/lang/String;
    .locals 1
    .parameter "simType"
    .parameter "slotId"

    .prologue
    .line 104
    sget-object v0, Lcom/mediatek/providers/contacts/SlotUtils;->SIM_ACCOUNT_NAME_ARRAY:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSingleSlotId()I
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public static getSlotCount()I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/mediatek/providers/contacts/SlotUtils;->sSlotInfoMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
