.class public Lcom/android/emailcommon/provider/VipMember;
.super Lcom/android/emailcommon/provider/EmailContent;
.source "VipMember.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;
    }
.end annotation


# static fields
.field public static final ACCOUNT_KEY:Ljava/lang/String; = "accountKey"

.field public static final ACCOUNT_KEY_COLUMN:I = 0x1

.field public static final CONTENT_ID_COLUMN:I = 0x0

.field public static final CONTENT_PROJECTION:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final DISPLAY_NAME_COLUMN:I = 0x3

.field public static final EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final EMAIL_ADDRESS_COLUMN:I = 0x2

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final NOTIFIER_URI:Landroid/net/Uri; = null

.field public static final SELECTION_ACCCOUNT_ID:Ljava/lang/String; = "accountKey=?"

.field public static final SELECTION_ACCCOUNT_ID_AND_EMAIL_ADDRESS:Ljava/lang/String; = "accountKey=? and emailAddress=? COLLATE NOCASE"

.field public static final SELECTION_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress=? COLLATE NOCASE"

.field public static final TABLE_NAME:Ljava/lang/String; = "VipMember"

.field public static final VIP_MAX_COUNT:I = 0x63


# instance fields
.field public mAccountKey:J

.field public mDisplayName:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vipmember"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent;->CONTENT_NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vipmember"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/emailcommon/provider/VipMember;->NOTIFIER_URI:Landroid/net/Uri;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emailAddress"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/provider/VipMember;->CONTENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/emailcommon/provider/EmailContent;-><init>()V

    .line 361
    sget-object v0, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 362
    return-void
.end method

.method public static addVIP(Landroid/content/Context;Lcom/android/emailcommon/mail/Address;Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;)Z
    .locals 11
    .parameter "context"
    .parameter "address"
    .parameter "callback"

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    const/4 v9, 0x0

    .line 224
    :goto_0
    return v9

    .line 186
    :cond_0
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, emailAddress:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, displayName:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 189
    move-object v2, v3

    .line 190
    invoke-virtual {p1, v2}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 192
    :cond_1
    const-wide/high16 v9, 0x1000

    invoke-static {p0, v9, v10}, Lcom/android/emailcommon/provider/VipMember;->restoreVipMembersWithAccountId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/VipMember;

    move-result-object v8

    .line 193
    .local v8, vips:[Lcom/android/emailcommon/provider/VipMember;
    array-length v9, v8

    const/16 v10, 0x63

    if-ne v9, v10, :cond_2

    .line 194
    invoke-interface {p2}, Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;->addVipOverMax()V

    .line 195
    const/4 v9, 0x0

    goto :goto_0

    .line 197
    :cond_2
    const/4 v4, 0x0

    .line 198
    .local v4, existVip:Lcom/android/emailcommon/provider/VipMember;
    move-object v0, v8

    .local v0, arr$:[Lcom/android/emailcommon/provider/VipMember;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, v0, v5

    .line 199
    .local v7, vip:Lcom/android/emailcommon/provider/VipMember;
    iget-object v9, v7, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 200
    move-object v4, v7

    .line 204
    .end local v7           #vip:Lcom/android/emailcommon/provider/VipMember;
    :cond_3
    if-nez v4, :cond_5

    .line 206
    new-instance v7, Lcom/android/emailcommon/provider/VipMember;

    invoke-direct {v7}, Lcom/android/emailcommon/provider/VipMember;-><init>()V

    .line 207
    .restart local v7       #vip:Lcom/android/emailcommon/provider/VipMember;
    const-wide/high16 v9, 0x1000

    iput-wide v9, v7, Lcom/android/emailcommon/provider/VipMember;->mAccountKey:J

    .line 208
    iput-object v3, v7, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    .line 209
    iput-object v2, v7, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    .line 210
    invoke-virtual {v7, p0}, Lcom/android/emailcommon/provider/EmailContent;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 211
    const/4 v9, 0x1

    goto :goto_0

    .line 198
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 214
    .end local v7           #vip:Lcom/android/emailcommon/provider/VipMember;
    :cond_5
    iget-object v9, v4, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 216
    invoke-interface {p2}, Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;->tryToAddDuplicateVip()V

    .line 217
    const/4 v9, 0x0

    goto :goto_0

    .line 220
    :cond_6
    iput-object v2, v4, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    .line 221
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 222
    .local v1, cv:Landroid/content/ContentValues;
    const-string v9, "displayName"

    invoke-virtual {v1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v4, p0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 224
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public static addVIPs(Landroid/content/Context;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;)V
    .locals 22
    .parameter "context"
    .parameter "accountId"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p3, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    new-instance v3, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 125
    .local v3, addressesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    invoke-static {v3}, Lcom/android/emailcommon/provider/VipMember;->removeDuplicateAddress(Ljava/util/ArrayList;)Z

    move-result v6

    .line 126
    .local v6, hasDuplicateAddress:Z
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v14, vipAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v9, nonVipAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v11, updatedVips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/VipMember;>;"
    invoke-static/range {p0 .. p2}, Lcom/android/emailcommon/provider/VipMember;->restoreVipMembersWithAccountId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/VipMember;

    move-result-object v17

    .line 130
    .local v17, vips:[Lcom/android/emailcommon/provider/VipMember;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v16, vipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/VipMember;>;"
    move-object/from16 v4, v17

    .local v4, arr$:[Lcom/android/emailcommon/provider/VipMember;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v13, v4, v7

    .line 132
    .local v13, vip:Lcom/android/emailcommon/provider/VipMember;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 134
    .end local v13           #vip:Lcom/android/emailcommon/provider/VipMember;
    :cond_0
    move-object/from16 v0, v16

    invoke-static {v0, v3, v14, v9, v11}, Lcom/android/emailcommon/provider/VipMember;->collectEmailAddresses(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 135
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/emailcommon/provider/VipMember;

    .line 138
    .restart local v13       #vip:Lcom/android/emailcommon/provider/VipMember;
    sget-object v18, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_id="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    const-string v19, "displayName"

    iget-object v0, v13, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v13           #vip:Lcom/android/emailcommon/provider/VipMember;
    :cond_1
    move-object/from16 v0, v17

    array-length v15, v0

    .line 144
    .local v15, vipCount:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/emailcommon/mail/Address;

    .line 145
    .local v2, addr:Lcom/android/emailcommon/mail/Address;
    add-int/lit8 v15, v15, 0x1

    .line 146
    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v15, v0, :cond_6

    .line 157
    .end local v2           #addr:Lcom/android/emailcommon/mail/Address;
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "com.android.email.provider"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_3
    if-nez v6, :cond_3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 163
    :cond_3
    invoke-interface/range {p4 .. p4}, Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;->tryToAddDuplicateVip()V

    .line 165
    :cond_4
    const/16 v18, 0x63

    move/from16 v0, v18

    if-le v15, v0, :cond_5

    .line 166
    invoke-interface/range {p4 .. p4}, Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;->addVipOverMax()V

    .line 168
    :cond_5
    return-void

    .line 149
    .restart local v2       #addr:Lcom/android/emailcommon/mail/Address;
    :cond_6
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 150
    .local v12, values:Landroid/content/ContentValues;
    const-string v18, "accountKey"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 151
    const-string v18, "emailAddress"

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v18, "displayName"

    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    sget-object v18, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 158
    .end local v2           #addr:Lcom/android/emailcommon/mail/Address;
    .end local v12           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 159
    .local v5, e:Ljava/lang/Exception;
    const-string v18, "VipMember#addVIPs"

    const-string v19, "Error occured while save contacts as vips"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static collectEmailAddresses(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/VipMember;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/VipMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, vipList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/VipMember;>;"
    .local p1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .local p2, VipAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .local p3, NonVipAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .local p4, updatedVips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/VipMember;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/mail/Address;

    .line 300
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, emailAddress:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, displayName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 303
    move-object v1, v2

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;)V

    .line 306
    :cond_1
    invoke-static {p0, v2}, Lcom/android/emailcommon/provider/VipMember;->findExistVip(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/provider/VipMember;

    move-result-object v3

    .line 307
    .local v3, existVip:Lcom/android/emailcommon/provider/VipMember;
    if-nez v3, :cond_2

    .line 308
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 312
    iget-object v5, v3, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 313
    iput-object v1, v3, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    .line 314
    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #emailAddress:Ljava/lang/String;
    .end local v3           #existVip:Lcom/android/emailcommon/provider/VipMember;
    :cond_3
    return-void
.end method

.method public static countVipMembersWithAccountId(Landroid/content/Context;J)I
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 337
    sget-object v0, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accountKey=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/emailcommon/provider/VipMember;->count(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static deleteVipMembers(Landroid/content/Context;JLjava/lang/String;)I
    .locals 7
    .parameter "context"
    .parameter "accountId"
    .parameter "emailAddress"

    .prologue
    .line 351
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "accountKey=? and emailAddress=? COLLATE NOCASE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 356
    :goto_0
    return v1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, ex:Landroid/database/sqlite/SQLiteException;
    const-string v1, "VipMember#deleteVipMembers throw out SQLiteException"

    invoke-static {v1, v0}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static findExistVip(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/emailcommon/provider/VipMember;
    .locals 3
    .parameter
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/VipMember;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/emailcommon/provider/VipMember;"
        }
    .end annotation

    .prologue
    .line 321
    .local p0, vips:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/provider/VipMember;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/VipMember;

    .line 322
    .local v1, vip:Lcom/android/emailcommon/provider/VipMember;
    iget-object v2, v1, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    .end local v1           #vip:Lcom/android/emailcommon/provider/VipMember;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static removeDuplicateAddress(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v1, 0x0

    .line 244
    .local v1, hasDuplicateAddress:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 245
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 247
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    add-int/lit8 v2, v2, -0x1

    .line 244
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_2
    add-int/lit8 v3, v2, 0x1

    .local v3, j:I
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 252
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 254
    add-int/lit8 v3, v3, -0x1

    .line 255
    const/4 v1, 0x1

    .line 251
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 259
    .end local v0           #addr:Ljava/lang/String;
    .end local v3           #j:I
    :cond_4
    return v1
.end method

.method public static restoreVipMemberWithEmailAddress(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/VipMember;
    .locals 10
    .parameter "context"
    .parameter "accountId"
    .parameter "emailAddress"

    .prologue
    const/4 v8, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=? and emailAddress=? COLLATE NOCASE"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 72
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const-class v0, Lcom/android/emailcommon/provider/VipMember;

    invoke-static {v6, v0}, Lcom/android/emailcommon/provider/VipMember;->getContent(Landroid/database/Cursor;Ljava/lang/Class;)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/VipMember;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 78
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_2 .. :try_end_2} :catch_2

    .line 80
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 81
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "VipMember#restoreVipMemberWithEmailAddress throw out IllegalStateException"

    invoke-static {v0, v7}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v7           #e:Ljava/lang/IllegalStateException;
    :goto_1
    move-object v0, v8

    .line 87
    goto :goto_0

    .line 82
    :catch_1
    move-exception v7

    .line 83
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "VipMember#restoreVipMemberWithEmailAddress throw out SQLiteException"

    invoke-static {v0, v7}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 84
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v7

    .line 85
    .local v7, e:Ljava/lang/IllegalMonitorStateException;
    const-string v0, "VipMember#restoreVipMemberWithEmailAddress throw out IllegalMonitorStateException"

    invoke-static {v0, v7}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static restoreVipMemberWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/VipMember;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 54
    const-class v1, Lcom/android/emailcommon/provider/VipMember;

    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/emailcommon/provider/VipMember;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/provider/EmailContent;->restoreContentWithId(Landroid/content/Context;Ljava/lang/Class;Landroid/net/Uri;[Ljava/lang/String;J)Lcom/android/emailcommon/provider/EmailContent;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/VipMember;

    return-object v0
.end method

.method public static restoreVipMembersWithAccountId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/VipMember;
    .locals 12
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/VipMember;->CONTENT_PROJECTION:[Ljava/lang/String;

    const-string v3, "accountKey=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 101
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 102
    .local v7, count:I
    new-array v10, v7, [Lcom/android/emailcommon/provider/VipMember;

    .line 103
    .local v10, vipMembers:[Lcom/android/emailcommon/provider/VipMember;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 104
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 105
    new-instance v9, Lcom/android/emailcommon/provider/VipMember;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/VipMember;-><init>()V

    .line 106
    .local v9, vipMember:Lcom/android/emailcommon/provider/VipMember;
    invoke-virtual {v9, v6}, Lcom/android/emailcommon/provider/VipMember;->restore(Landroid/database/Cursor;)V

    .line 107
    aput-object v9, v10, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 111
    .end local v9           #vipMember:Lcom/android/emailcommon/provider/VipMember;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v10

    .end local v7           #count:I
    .end local v8           #i:I
    .end local v10           #vipMembers:[Lcom/android/emailcommon/provider/VipMember;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static updateVipDisplayName(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "addresses"
    .parameter "name"

    .prologue
    .line 271
    invoke-static {p0, p1, p2, p3}, Lcom/android/emailcommon/provider/VipMember;->restoreVipMemberWithEmailAddress(Landroid/content/Context;JLjava/lang/String;)Lcom/android/emailcommon/provider/VipMember;

    move-result-object v0

    .line 276
    .local v0, member:Lcom/android/emailcommon/provider/VipMember;
    if-eqz v0, :cond_1

    .line 277
    if-nez p4, :cond_0

    .line 278
    iget-object p4, v0, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    .line 280
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "displayName"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p0, v1}, Lcom/android/emailcommon/provider/EmailContent;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 284
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public restore(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 375
    sget-object v0, Lcom/android/emailcommon/provider/VipMember;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mBaseUri:Landroid/net/Uri;

    .line 376
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 377
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/emailcommon/provider/VipMember;->mAccountKey:J

    .line 378
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    .line 379
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 366
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 367
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "accountKey"

    iget-wide v2, p0, Lcom/android/emailcommon/provider/VipMember;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 368
    const-string v1, "emailAddress"

    iget-object v2, p0, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v1, "displayName"

    iget-object v2, p0, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .local v0, sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 399
    iget-wide v1, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 400
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    iget-wide v1, p0, Lcom/android/emailcommon/provider/VipMember;->mAccountKey:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 402
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    iget-object v1, p0, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v1, p0, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 389
    iget-wide v0, p0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 390
    iget-wide v0, p0, Lcom/android/emailcommon/provider/VipMember;->mAccountKey:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 391
    iget-object v0, p0, Lcom/android/emailcommon/provider/VipMember;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/emailcommon/provider/VipMember;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    return-void
.end method
