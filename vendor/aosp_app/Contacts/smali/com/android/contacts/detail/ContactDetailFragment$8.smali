.class Lcom/android/contacts/detail/ContactDetailFragment$8;
.super Ljava/lang/Object;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/detail/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3609
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 14
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3613
    const-string v0, "ContactDetailFragment"

    const-string v2, "[mNewAssociationSimListener.onClick]: tempDetailViewEntry = null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    :goto_0
    return-void

    .line 3616
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mHasNameData:Z
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3200(Lcom/android/contacts/detail/ContactDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 3617
    .local v1, name:Ljava/lang/String;
    :goto_1
    const-string v0, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mOnNewAssociationSimListener], has name data, name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getSlot()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3619
    const-string v0, "ContactDetailFragment"

    const-string v2, "[mNewAssociationSimListener.onClick]: is USIM card"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3623
    const/4 v4, 0x0

    .line 3624
    .local v4, email:Ljava/lang/String;
    const/4 v5, 0x0

    .line 3625
    .local v5, additionNumber:Ljava/lang/String;
    const/4 v6, -0x1

    .line 3627
    .local v6, additionNumberType:I
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/RawContact;

    .line 3628
    .local v11, rawContact:Lcom/android/contacts/model/RawContact;
    invoke-virtual {v11}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/dataitem/DataItem;

    .line 3629
    .local v8, dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3630
    const-string v0, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnNewAssociationSimListener mimeType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    instance-of v0, v8, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v0, :cond_4

    .line 3633
    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3634
    const-string v0, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnNewAssociationSimListener email is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3616
    .end local v1           #name:Ljava/lang/String;
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #additionNumber:Ljava/lang/String;
    .end local v6           #additionNumberType:I
    .end local v8           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #rawContact:Lcom/android/contacts/model/RawContact;
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 3635
    .restart local v1       #name:Ljava/lang/String;
    .restart local v4       #email:Ljava/lang/String;
    .restart local v5       #additionNumber:Ljava/lang/String;
    .restart local v6       #additionNumberType:I
    .restart local v8       #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v11       #rawContact:Lcom/android/contacts/model/RawContact;
    :cond_4
    instance-of v0, v8, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v0, :cond_2

    .line 3636
    const-string v0, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnNewAssociationSimListener tempDetailViewEntry.getId() and dataId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string v7, "_id"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3640
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v7, "_id"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v0, v2, v12

    if-eqz v0, :cond_2

    .line 3642
    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "data1"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3644
    invoke-virtual {v8}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v2, "data2"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3646
    const-string v0, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mOnNewAssociationSimListener additionNumber, additionNumberType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 3654
    .end local v8           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #rawContact:Lcom/android/contacts/model/RawContact;
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v2

    iget v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v7, 0x0

    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->importOneUSimContact(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3300(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    goto/16 :goto_0

    .line 3659
    .end local v4           #email:Ljava/lang/String;
    .end local v5           #additionNumber:Ljava/lang/String;
    .end local v6           #additionNumberType:I
    :cond_6
    const-string v0, "ContactDetailFragment"

    const-string v2, "[mNewAssociationSimListener.onClick]: is USIM card"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3660
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v2}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v2

    iget v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment$8;->this$0:Lcom/android/contacts/detail/ContactDetailFragment;

    #getter for: Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static {v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    #calls: Lcom/android/contacts/detail/ContactDetailFragment;->importOneSimContact(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->access$3400(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0
.end method
