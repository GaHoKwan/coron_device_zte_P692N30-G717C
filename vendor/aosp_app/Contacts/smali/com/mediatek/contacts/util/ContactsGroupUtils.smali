.class public Lcom/mediatek/contacts/util/ContactsGroupUtils;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;,
        Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;,
        Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;
    }
.end annotation


# static fields
.field public static final CONTACTS_IN_GROUP_SELECT:Ljava/lang/String; = " IN (SELECT contact_id FROM raw_contacts WHERE raw_contacts._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE deleted=0 AND title=?)) AND deleted=0)"

.field private static final DBG:Z = true

.field public static final DEBUG:Z = true

.field private static final MAX_OP_COUNT_IN_ONE_BATCH:I = 0x96

.field public static final SELECTION_MOVE_GROUP_DATA:Ljava/lang/String; = "contact_id IN (%1) AND mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=\'%2\'"

.field public static final SHOW_TOAST_EXTRA_KEY:Ljava/lang/String; = "showToast"

.field public static final TAG:Ljava/lang/String; = "ContactsGroupUtils"

.field public static sArrayData:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    return-void
.end method

.method public static getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 5
    .parameter "slotId"

    .prologue
    .line 64
    const-string v2, "ContactsGroupUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getIIccPhoneBook]slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSimPhoneBookServiceNameForSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, serviceName:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 67
    .local v0, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    return-object v0
.end method

.method public static getUsimMaxGrpCount(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 732
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimGroupMaxCountBySlot(I)I

    move-result v0

    return v0
.end method

.method static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mTAG"
    .parameter "msg"

    .prologue
    .line 652
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    return-void
.end method

.method public static moveUSIMGroupMember(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;IZII)Z
    .locals 8
    .parameter "data"
    .parameter "slotId"
    .parameter "isInTargetGroup"
    .parameter "fromUgrpId"
    .parameter "toUgrpId"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, ret:Z
    #getter for: Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndexPhoneOrSim:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->access$000(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I

    move-result v2

    .line 700
    .local v2, simId:I
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------simId[moveUSIMGroupMember]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------slotId[moveUSIMGroupMember]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    if-ltz v2, :cond_0

    .line 704
    if-ltz p1, :cond_0

    .line 708
    const/4 v0, 0x0

    .line 711
    .local v0, moveSucess:Z
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------slotId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->access$100(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------data.mSimIndex"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------toUgrpId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    #getter for: Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->mSimIndex:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;->access$100(Lcom/mediatek/contacts/util/ContactsGroupUtils$ContactsGroupArrayData;)I

    move-result v3

    new-array v4, v7, [I

    aput p3, v4, v6

    new-array v5, v7, [I

    aput p4, v5, v6

    invoke-static {p1, v3, v4, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->moveContactToGroups(II[I[I)Z

    move-result v0

    .line 718
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------moveSucess"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    move v1, v0

    .line 723
    .end local v0           #moveSucess:Z
    :cond_0
    return v1
.end method
