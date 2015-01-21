.class public final Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;
.super Ljava/lang/Object;
.source "MultiContactsBasePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PickListItemCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->this$0:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public add(JIILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "id"
    .parameter "contactIndicator"
    .parameter "simIndex"
    .parameter "displayName"
    .parameter "lookupUri"

    .prologue
    .line 61
    iget-object v6, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;-><init>(Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public add(Landroid/database/Cursor;)V
    .locals 10
    .parameter "cursor"

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v6, v0

    .line 66
    .local v6, id:J
    const-string v0, "indicate_phone_or_sim_contact"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 67
    .local v2, contactIndicator:I
    const-string v0, "index_in_sim"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 68
    .local v3, simIndex:I
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, displayName:Ljava/lang/String;
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, lookupUri:Ljava/lang/String;
    iget-object v8, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;-><init>(Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    return-void
.end method

.method public getCacheSize()I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getItemData(J)Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
    .locals 2
    .parameter "id"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method
