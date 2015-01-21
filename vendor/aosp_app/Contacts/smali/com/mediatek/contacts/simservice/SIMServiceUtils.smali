.class public Lcom/mediatek/contacts/simservice/SIMServiceUtils;
.super Ljava/lang/Object;
.source "SIMServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;,
        Lcom/mediatek/contacts/simservice/SIMServiceUtils$ServiceWorkData;
    }
.end annotation


# static fields
.field public static final ACTION_PHB_LOAD_FINISHED:Ljava/lang/String; = "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

.field public static final SERVICE_DELETE_CONTACTS:I = 0x1

.field public static final SERVICE_IDLE:I = 0x0

.field public static final SERVICE_IMPORT_CONTACTS:I = 0x3

.field public static final SERVICE_QUERY_SIM:I = 0x2

.field public static final SERVICE_SLOT_KEY:Ljava/lang/String; = "which_slot"

.field public static final SERVICE_WORK_DELETE:I = 0x4

.field public static final SERVICE_WORK_EDIT:I = 0x3

.field public static final SERVICE_WORK_IMPORT:I = 0x1

.field public static final SERVICE_WORK_NONE:I = 0x0

.field public static final SERVICE_WORK_REMOVE:I = 0x2

.field public static final SERVICE_WORK_TYPE:Ljava/lang/String; = "work_type"

.field public static final SERVICE_WORK_UNKNOWN:I = -0x1

.field public static final SIM_TYPE_SIM:I = 0x0

.field public static final SIM_TYPE_UIM:I = 0x2

.field public static final SIM_TYPE_UNKNOWN:I = -0x1

.field public static final SIM_TYPE_USIM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SIMServiceUtils"

.field public static final TYPE_IMPORT:I = 0x1

.field public static final TYPE_REMOVE:I = 0x2

.field private static mSIMProcessorState:Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    return-void
.end method

.method static checkPhoneBookState(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    return v0
.end method

.method public static deleteSimContact(Landroid/content/Context;I)V
    .locals 16
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 72
    const/16 v6, 0xa

    .line 73
    .local v6, j:I
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInfoReady()Z

    move-result v10

    .line 74
    .local v10, simInfoReady:Z
    :goto_0
    if-lez v6, :cond_0

    .line 75
    const-string v12, "SIMServiceUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[deleteSimContact] simInfoReady: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    if-nez v10, :cond_0

    .line 78
    const-wide/16 v12, 0x3e8

    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_1
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInfoReady()Z

    move-result v10

    .line 86
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 79
    :catch_0
    move-exception v4

    .line 80
    .local v4, e:Ljava/lang/Exception;
    const-string v12, "SIMServiceUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[deleteSimContact]catched excepiotn: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    .line 90
    .local v2, currSimId:I
    invoke-static/range {p0 .. p0}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 91
    .local v11, simList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    const/4 v8, 0x0

    .line 92
    .local v8, selection:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v3, delSelection:Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 94
    .local v9, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v12, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    move/from16 v0, p1

    if-ne v12, v0, :cond_2

    .line 95
    iget-wide v12, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v2, v12

    .line 97
    :cond_2
    iget v12, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    .line 98
    iget-wide v12, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 102
    .end local v9           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_4

    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    :cond_4
    if-nez v2, :cond_8

    if-ltz p1, :cond_8

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 114
    :cond_5
    :goto_3
    const-string v12, "SIMServiceUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[deleteSimContact]slotId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "|selection:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    const-string v14, "sim"

    const-string v15, "true"

    invoke-virtual {v13, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "indicate_phone_or_sim_contact IN ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, count:I
    const-string v12, "SIMServiceUtils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[deleteSimContact]count:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1           #count:I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account_name=\'USIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=\'USIM Account\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 128
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getAllSlotIds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 129
    .local v7, otherSlotId:I
    move/from16 v0, p1

    if-eq v7, v0, :cond_7

    invoke-static {v7}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimInserted(I)Z

    move-result v12

    if-nez v12, :cond_7

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "account_name=\'USIM"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "account_type"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "=\'USIM Account\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 110
    .end local v7           #otherSlotId:I
    :cond_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ","

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_5
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_3

    :cond_9
    const-string v12, ""

    goto :goto_5

    .line 136
    :cond_a
    invoke-static/range {p0 .. p1}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->sendFinishIntent(Landroid/content/Context;I)V

    .line 137
    return-void
.end method

.method public static getServiceState(I)I
    .locals 1
    .parameter "slotId"

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public static isServiceRunning(I)Z
    .locals 1
    .parameter "slotId"

    .prologue
    .line 157
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->mSIMProcessorState:Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->mSIMProcessorState:Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;

    invoke-interface {v0, p0}, Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;->isImportRemoveRunning(I)Z

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sendFinishIntent(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.ACTION_PHB_LOAD_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v1, "slotId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 154
    return-void
.end method

.method public static setSIMProcessorState(Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;)V
    .locals 0
    .parameter "processorState"

    .prologue
    .line 169
    sput-object p0, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->mSIMProcessorState:Lcom/mediatek/contacts/simservice/SIMServiceUtils$SIMProcessorState;

    .line 170
    return-void
.end method
