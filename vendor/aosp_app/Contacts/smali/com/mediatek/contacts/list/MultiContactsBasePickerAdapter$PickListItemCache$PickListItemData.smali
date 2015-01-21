.class public final Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;
.super Ljava/lang/Object;
.source "MultiContactsBasePickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PickListItemData"
.end annotation


# instance fields
.field public contactIndicator:I

.field public displayName:Ljava/lang/String;

.field public lookupUri:Ljava/lang/String;

.field public simIndex:I

.field final synthetic this$1:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;


# direct methods
.method public constructor <init>(Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "contactIndicator2"
    .parameter "simIndex2"
    .parameter "displayName2"
    .parameter "lookupUri2"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->this$1:Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p2, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->contactIndicator:I

    .line 45
    iput p3, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->simIndex:I

    .line 46
    iput-object p4, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->displayName:Ljava/lang/String;

    .line 47
    iput-object p5, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->lookupUri:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PickListItemData]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contactIndicator: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->contactIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->simIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lookupUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/MultiContactsBasePickerAdapter$PickListItemCache$PickListItemData;->lookupUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
