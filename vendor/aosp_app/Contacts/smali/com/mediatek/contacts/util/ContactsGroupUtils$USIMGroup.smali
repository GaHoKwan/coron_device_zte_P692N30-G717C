.class public final Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;
.super Ljava/lang/Object;
.source "ContactsGroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/contacts/util/ContactsGroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "USIMGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;
    }
.end annotation


# static fields
.field public static final SIM_TYPE_USIM:Ljava/lang/String; = "USIM"

.field public static final TAG:Ljava/lang/String; = "ContactsGroupUtils"

.field private static final UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 180
    new-instance v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getSlotCount()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;-><init>(I)V

    sput-object v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static addUSIMGroupMember(III)Z
    .locals 6
    .parameter "slotId"
    .parameter "simIndex"
    .parameter "grpId"

    .prologue
    .line 356
    const/4 v2, 0x0

    .line 358
    .local v2, succFlag:Z
    if-lez p2, :cond_0

    .line 359
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 360
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 361
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->addContactToGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 369
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    return v2

    .line 364
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[addUSIMGroupMember]RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteUSIMGroup(ILjava/lang/String;)I
    .locals 6
    .parameter "slotId"
    .parameter "name"

    .prologue
    .line 330
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v3

    .line 331
    .local v3, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v1, -0x2

    .line 333
    .local v1, errCode:I
    :try_start_0
    invoke-static {p0, p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->hasExistGroup(ILjava/lang/String;)I

    move-result v2

    .line 334
    .local v2, grpId:I
    if-lez v2, :cond_0

    .line 335
    invoke-interface {v3, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->removeUsimGroupById(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 336
    sget-object v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v4, p0, v2}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->removeItem(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v1, 0x0

    .line 345
    .end local v2           #grpId:I
    :cond_0
    :goto_0
    return v1

    .line 339
    .restart local v2       #grpId:I
    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    .line 342
    .end local v2           #grpId:I
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ContactsGroupUtils"

    const-string v5, "catched exception"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static deleteUSIMGroupMember(III)Z
    .locals 6
    .parameter "slotId"
    .parameter "simIndex"
    .parameter "grpId"

    .prologue
    .line 380
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[deleteUSIMGroupMember]slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|simIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|grpId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v2, 0x0

    .line 384
    .local v2, succFlag:Z
    if-lez p2, :cond_0

    .line 385
    :try_start_0
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 386
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 387
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->removeContactFromGroup(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 394
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[deleteUSIMGroupMember]result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    return v2

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ContactsGroupUtils"

    const-string v4, "catched exception."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteUSIMGroupOnPhone(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 583
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 584
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type=\'USIM Account\' AND account_name=\'USIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method public static getUSIMGrpMaxNameLen(I)I
    .locals 4
    .parameter "slot"

    .prologue
    const/4 v0, -0x1

    .line 559
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isSlotValid(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    const-string v1, "ContactsGroupUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slotId invalid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_0
    return v0

    .line 563
    :cond_0
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 564
    const-string v1, "ContactsGroupUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getUSIMGrpMaxNameLen]phoneBookReady:false |slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    sget-object v1, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v1, p0, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->setMaxUsimGroupNameLength(II)V

    goto :goto_0

    .line 574
    :cond_1
    sget-object v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->getMaxUsimGroupNameLength(I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 575
    sget-object v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimGroupMaxNameLengthBySlot(I)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->setMaxUsimGroupNameLength(II)V

    .line 577
    :cond_2
    const-string v0, "ContactsGroupUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getUSIMGrpMaxNameLen]end slot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|maxNameLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v2, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->getMaxUsimGroupNameLength(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v0, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->getMaxUsimGroupNameLength(I)I

    move-result v0

    goto :goto_0
.end method

.method public static hasExistGroup(ILjava/lang/String;)I
    .locals 12
    .parameter "slotId"
    .parameter "grpName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v2, -0x1

    .line 185
    .local v2, grpId:I
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 186
    .local v5, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const-string v9, "ContactsGroupUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "grpName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|iIccPhb:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-nez v5, :cond_1

    :cond_0
    move v3, v2

    .line 216
    .end local v2           #grpId:I
    .local v3, grpId:I
    :goto_0
    return v3

    .line 190
    .end local v3           #grpId:I
    .restart local v2       #grpId:I
    :cond_1
    sget-object v9, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v9, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->get(I)Ljava/util/ArrayList;

    move-result-object v8

    .line 191
    .local v8, ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    const-string v9, "ContactsGroupUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[hasExistGroup]ugrpList---size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    invoke-interface {v5}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGroups()Ljava/util/List;

    move-result-object v6

    .line 194
    .local v6, uList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/telephony/UsimGroup;

    .line 195
    .local v7, ug:Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, gName:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v0

    .line 197
    .local v0, gIndex:I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    if-lez v0, :cond_2

    .line 198
    new-instance v9, Lcom/mediatek/common/telephony/UsimGroup;

    invoke-direct {v9, v0, v1}, Lcom/mediatek/common/telephony/UsimGroup;-><init>(ILjava/lang/String;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v9, "ContactsGroupUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[hasExistGroup]gName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "||gIndex:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    move v2, v0

    goto :goto_1

    .line 206
    .end local v0           #gIndex:I
    .end local v1           #gName:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #uList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    .end local v7           #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mediatek/common/telephony/UsimGroup;

    .line 207
    .restart local v7       #ug:Lcom/mediatek/common/telephony/UsimGroup;
    const-string v9, "ContactsGroupUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[hasExistGroup]ug---index:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " || name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 210
    invoke-virtual {v7}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v2

    .line 215
    .end local v7           #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_5
    const-string v9, "ContactsGroupUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ugrpList size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 216
    .end local v2           #grpId:I
    .restart local v3       #grpId:I
    goto/16 :goto_0
.end method

.method public static moveContactToGroups(II[I[I)Z
    .locals 6
    .parameter "slotId"
    .parameter "simIndex"
    .parameter "fromGrpIds"
    .parameter "toGrpIds"

    .prologue
    .line 407
    const/4 v2, 0x0

    .line 409
    .local v2, succFlag:Z
    :try_start_0
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[moveUSIMGroupMember]slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|simIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|fromGrpIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|toGrpIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    if-eqz p2, :cond_1

    array-length v3, p2

    if-lez v3, :cond_1

    if-eqz p3, :cond_1

    array-length v3, p3

    if-lez v3, :cond_1

    .line 414
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 415
    .local v1, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 416
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/telephony/IIccPhoneBook;->moveContactFromGroupsToGroups(I[I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 425
    .end local v1           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[moveUSIMGroupMember]result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return v2

    .line 419
    :cond_1
    :try_start_1
    const-string v3, "ContactsGroupUtils"

    const-string v4, "moveUSIMGroupMember: illegal Group information"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "ContactsGroupUtils"

    const-string v4, "moveUSIMGroupMember: catched exception."

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized syncUSIMGroupContactsGroup(Landroid/content/Context;Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;Ljava/util/HashMap;)V
    .locals 37
    .parameter "context"
    .parameter "workData"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p2, grpIdMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-class v36, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;

    monitor-enter v36

    :try_start_0
    const-string v3, "ContactsGroupUtils"

    const-string v4, "syncUSIMGroupContactsGroup begin"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p1

    iget v3, v0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 556
    :cond_0
    :goto_0
    monitor-exit v36

    return-void

    .line 443
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSlotId:I

    move/from16 v27, v0

    .line 444
    .local v27, slotId:I
    move-object/from16 v0, p1

    iget v0, v0, Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;->mSimId:I

    move/from16 v26, v0

    .line 446
    .local v26, simId:I
    sget-object v3, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->get(I)Ljava/util/ArrayList;

    move-result-object v33

    .line 449
    .local v33, ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 450
    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v23

    .line 451
    .local v23, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v23, :cond_0

    .line 455
    :try_start_2
    invoke-interface/range {v23 .. v23}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimGroups()Ljava/util/List;

    move-result-object v28

    .line 456
    .local v28, uList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    if-eqz v28, :cond_0

    .line 459
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/mediatek/common/telephony/UsimGroup;

    .line 460
    .local v29, ug:Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v14

    .line 461
    .local v14, gName:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v13

    .line 462
    .local v13, gIndex:I
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[syncUSIMGroupContactsGroup]gName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|gIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-lez v13, :cond_2

    .line 465
    new-instance v3, Lcom/mediatek/common/telephony/UsimGroup;

    invoke-direct {v3, v13, v14}, Lcom/mediatek/common/telephony/UsimGroup;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 468
    .end local v13           #gIndex:I
    .end local v14           #gName:Ljava/lang/String;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #uList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/common/telephony/UsimGroup;>;"
    .end local v29           #ug:Lcom/mediatek/common/telephony/UsimGroup;
    :catch_0
    move-exception v12

    .line 469
    .local v12, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "ContactsGroupUtils"

    const-string v4, "catched exception"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 473
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_3
    const-string v3, "ContactsGroupUtils"

    const-string v4, "getUSIMGrpMaxNameLen begin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sget-object v3, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimGroupMaxNameLengthBySlot(I)I

    move-result v4

    move/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->setMaxUsimGroupNameLength(II)V

    .line 475
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUSIMGrpMaxNameLen end. slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|NAME_LENGTH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->getMaxUsimGroupNameLength(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-string v3, "ContactsGroupUtils"

    const-string v4, "getUSIMGrpMaxCount begin."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-object v3, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getUsimGroupMaxCountBySlot(I)I

    move-result v4

    move/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->setMaxUsimGroupCount(II)V

    .line 480
    const-string v3, "ContactsGroupUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUSIMGrpMaxCount end. slot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "|GROUP_COUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->getMaxUsimGroupCount(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 487
    .local v2, cr:Landroid/content/ContentResolver;
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleted=0 AND account_type=\'USIM Account\' AND account_name=\'USIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 493
    .local v9, c:Landroid/database/Cursor;
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 494
    .local v25, noneMatchedMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v9, :cond_6

    .line 495
    const/4 v3, -0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 496
    :cond_4
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 497
    const-string v3, "title"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 498
    .local v19, grpName:Ljava/lang/String;
    const-string v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 499
    .local v18, grpId:I
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 500
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 438
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v18           #grpId:I
    .end local v19           #grpName:Ljava/lang/String;
    .end local v23           #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v25           #noneMatchedMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v26           #simId:I
    .end local v27           #slotId:I
    .end local v33           #ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    :catchall_0
    move-exception v3

    monitor-exit v36

    throw v3

    .line 503
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v23       #iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v25       #noneMatchedMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v26       #simId:I
    .restart local v27       #slotId:I
    .restart local v33       #ugrpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/mediatek/common/telephony/UsimGroup;>;"
    :cond_5
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 506
    :cond_6
    if-eqz v33, :cond_f

    .line 507
    const/16 v20, 0x0

    .line 508
    .local v20, hasMerged:Z
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/mediatek/common/telephony/UsimGroup;

    .line 509
    .local v32, ugrp:Lcom/mediatek/common/telephony/UsimGroup;
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/common/telephony/UsimGroup;->getAlphaTag()Ljava/lang/String;

    move-result-object v31

    .line 510
    .local v31, ugName:Ljava/lang/String;
    const/16 v20, 0x0

    .line 511
    const-wide/16 v15, -0x1

    .line 512
    .local v15, groupId:J
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 513
    invoke-virtual/range {v32 .. v32}, Lcom/mediatek/common/telephony/UsimGroup;->getRecordIndex()I

    move-result v30

    .line 514
    .local v30, ugId:I
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 515
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v15, v3

    .line 516
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    const/16 v20, 0x1

    .line 520
    :cond_8
    if-nez v20, :cond_9

    .line 522
    new-instance v35, Landroid/content/ContentValues;

    invoke-direct/range {v35 .. v35}, Landroid/content/ContentValues;-><init>()V

    .line 523
    .local v35, values:Landroid/content/ContentValues;
    const-string v3, "title"

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string v3, "group_visible"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 525
    const-string v3, "system_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 526
    const-string v3, "account_name"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v3, "account_type"

    const-string v4, "USIM Account"

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v35

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v34

    .line 529
    .local v34, uri:Landroid/net/Uri;
    if-nez v34, :cond_a

    const-wide/16 v15, 0x0

    .line 531
    .end local v34           #uri:Landroid/net/Uri;
    .end local v35           #values:Landroid/content/ContentValues;
    :cond_9
    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v3, v15, v3

    if-lez v3, :cond_7

    .line 532
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    long-to-int v4, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 529
    .restart local v34       #uri:Landroid/net/Uri;
    .restart local v35       #values:Landroid/content/ContentValues;
    :cond_a
    invoke-static/range {v34 .. v34}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v15

    goto :goto_4

    .line 537
    .end local v15           #groupId:J
    .end local v30           #ugId:I
    .end local v31           #ugName:Ljava/lang/String;
    .end local v32           #ugrp:Lcom/mediatek/common/telephony/UsimGroup;
    .end local v34           #uri:Landroid/net/Uri;
    .end local v35           #values:Landroid/content/ContentValues;
    :cond_b
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 538
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/Integer;

    .line 539
    .local v17, groupIdArray:[Ljava/lang/Integer;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 540
    .local v11, delGroupIdStr:Ljava/lang/StringBuilder;
    move-object/from16 v8, v17

    .local v8, arr$:[Ljava/lang/Integer;
    array-length v0, v8

    move/from16 v24, v0

    .local v24, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_c

    aget-object v21, v8, v22

    .line 541
    .local v21, i:Ljava/lang/Integer;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 542
    .local v10, delGroupId:I
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 544
    .end local v10           #delGroupId:I
    .end local v21           #i:Ljava/lang/Integer;
    :cond_c
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_d

    .line 545
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 547
    :cond_d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_e

    .line 548
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 552
    .end local v8           #arr$:[Ljava/lang/Integer;
    .end local v11           #delGroupIdStr:Ljava/lang/StringBuilder;
    .end local v17           #groupIdArray:[Ljava/lang/Integer;
    .end local v22           #i$:I
    .end local v24           #len$:I
    :cond_e
    const-string v3, "ContactsGroupUtils"

    const-string v4, "syncUSIMGroupContactsGroup end"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    .end local v20           #hasMerged:Z
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->deleteUSIMGroupOnPhone(Landroid/content/Context;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static syncUSIMGroupNewIfMissing(ILjava/lang/String;)I
    .locals 9
    .parameter "slotId"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v1, -0x1

    const/4 v7, 0x1

    .line 221
    const/4 v3, 0x0

    .line 222
    .local v3, nameLen:I
    const-string v4, "ContactsGroupUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[syncUSIMGroupNewIfMissing]name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    :cond_0
    return v1

    .line 227
    :cond_1
    :try_start_0
    const-string v4, "GBK"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    array-length v3, v4
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    const-string v4, "ContactsGroupUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[syncUSIMGroupNewIfMissing]nameLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ||getUSIMGrpMaxNameLen(slotId):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->getUSIMGrpMaxNameLen(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->getUSIMGrpMaxNameLen(I)I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 235
    new-instance v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v5, "Group generic error"

    invoke-direct {v4, v5, v8, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 240
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->getUSIMGrpMaxNameLen(I)I

    move-result v4

    if-le v3, v4, :cond_3

    .line 241
    new-instance v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v5, "Group name out of bound"

    invoke-direct {v4, v5, v7, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 245
    :cond_3
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 246
    .local v2, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v1, -0x1

    .line 247
    .local v1, grpId:I
    invoke-static {p0, p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->hasExistGroup(ILjava/lang/String;)I

    move-result v1

    .line 248
    if-ge v1, v7, :cond_4

    if-eqz v2, :cond_4

    .line 249
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->insertUsimGroup(Ljava/lang/String;)I

    move-result v1

    .line 250
    const-string v4, "ContactsGroupUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[syncUSIMGroupNewIfMissing]inserted grpId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-lez v1, :cond_4

    .line 252
    sget-object v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    new-instance v5, Lcom/mediatek/common/telephony/UsimGroup;

    invoke-direct {v5, v1, p1}, Lcom/mediatek/common/telephony/UsimGroup;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, p0, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->addItem(ILcom/mediatek/common/telephony/UsimGroup;)Z

    .line 255
    :cond_4
    const-string v4, "ContactsGroupUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[syncUSIMGroupNewIfMissing]grpId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-ge v1, v7, :cond_0

    .line 257
    sparse-switch v1, :sswitch_data_0

    .line 270
    new-instance v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v5, "Group generic error"

    invoke-direct {v4, v5, v8, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 259
    :sswitch_0
    new-instance v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v5, "Group count out of bound"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 266
    :sswitch_1
    new-instance v4, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v5, "Group name out of bound"

    invoke-direct {v4, v5, v7, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v4

    .line 257
    nop

    :sswitch_data_0
    .sparse-switch
        -0x14 -> :sswitch_0
        -0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static syncUSIMGroupUpdate(ILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "slotId"
    .parameter "oldName"
    .parameter "newName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 286
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getIIccPhoneBook(I)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v2

    .line 287
    .local v2, iIccPhb:Lcom/android/internal/telephony/IIccPhoneBook;
    invoke-static {p0, p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->hasExistGroup(ILjava/lang/String;)I

    move-result v1

    .line 288
    .local v1, grpId:I
    const-string v7, "ContactsGroupUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "grpId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|slotId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|oldName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "|newName:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-lez v1, :cond_2

    .line 291
    const/4 v3, 0x0

    .line 293
    .local v3, nameLen:I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 294
    const-string v7, "GBK"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v3, v7
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    invoke-static {p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->getUSIMGrpMaxNameLen(I)I

    move-result v7

    if-ge v7, v3, :cond_0

    .line 302
    new-instance v7, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v8, "Group name out of bound"

    invoke-direct {v7, v8, v6, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v7

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_0

    .line 306
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_0
    invoke-interface {v2, v1, p2}, Lcom/android/internal/telephony/IIccPhoneBook;->updateUsimGroup(ILjava/lang/String;)I

    move-result v4

    .line 307
    .local v4, ret:I
    const/16 v7, -0xa

    if-ne v4, v7, :cond_1

    .line 308
    new-instance v6, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;

    const-string v7, "Group count out of bound"

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8, p0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;-><init>(Ljava/lang/String;II)V

    throw v6

    .line 313
    :cond_1
    sget-object v7, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->UGRP_LISTARRAY:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;

    invoke-virtual {v7, p0, v1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup$USimGroupArray;->getItem(II)Lcom/mediatek/common/telephony/UsimGroup;

    move-result-object v5

    .line 314
    .local v5, usimGrp:Lcom/mediatek/common/telephony/UsimGroup;
    const-string v7, "ContactsGroupUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[syncUSIMGroupUpdate]: usimGrp is null = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    if-eqz v5, :cond_2

    .line 316
    invoke-virtual {v5, p2}, Lcom/mediatek/common/telephony/UsimGroup;->setAlphaTag(Ljava/lang/String;)V

    .line 320
    .end local v3           #nameLen:I
    .end local v4           #ret:I
    .end local v5           #usimGrp:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_2
    return v1

    .line 314
    .restart local v3       #nameLen:I
    .restart local v4       #ret:I
    .restart local v5       #usimGrp:Lcom/mediatek/common/telephony/UsimGroup;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method
