.class public Lcom/android/contacts/quickcontact/DataAction;
.super Ljava/lang/Object;
.source "DataAction.java"

# interfaces
.implements Lcom/android/contacts/quickcontact/Action;


# static fields
.field public static final RCS_DISPLAY_NAME:Ljava/lang/String; = "rcs_display_name"

.field public static final RCS_PHONE_NUMBER:Ljava/lang/String; = "rcs_phone_number"

.field private static final TAG:Ljava/lang/String; = "DataAction"

.field private static sPhoneAndSubtitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlternateIconDescriptionRes:I

.field private mAlternateIconRes:I

.field private mAlternateIntent:Landroid/content/Intent;

.field private mBody:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private mDataId:J

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mIsPrimary:Z

.field private final mKind:Lcom/android/contacts/model/dataitem/DataKind;

.field private final mMimeType:Ljava/lang/String;

.field private mPresence:I

.field private mSubtitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/quickcontact/DataAction;->sPhoneAndSubtitle:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;)V
    .locals 43
    .parameter "context"
    .parameter "item"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    .line 82
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    .line 84
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    .line 94
    const/4 v14, 0x0

    .line 95
    .local v14, exMimeType:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v2

    const-string v3, "ExtenstionForRCS"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactDetailExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v31

    .line 97
    .local v31, pluginStatus:Z
    if-eqz v31, :cond_0

    .line 98
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v2

    const-string v3, "ExtenstionForRCS"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    :cond_0
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->hasKindTypeColumn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getKindTypeColumn()I

    move-result v4

    .line 111
    .local v4, typeValue:I
    invoke-static {v4}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAasPhoneType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const-string v3, "ExtensionForAAS"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->getCurrentSlot(Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, slotId:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v7, "data3"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 139
    .end local v4           #typeValue:I
    .end local v6           #slotId:I
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    .line 140
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataStringForDisplay()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    .line 143
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    move-wide/from16 v41, v0

    move-wide/from16 v0, v41

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v16

    .line 146
    .local v16, hasPhone:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v17

    .line 149
    .local v17, hasSms:Z
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v2, :cond_b

    .line 150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v29, p2

    .line 151
    check-cast v29, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 152
    .local v29, phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v29 .. v29}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getNumber()Ljava/lang/String;

    move-result-object v28

    .line 153
    .local v28, number:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 162
    sget-object v2, Lcom/android/contacts/quickcontact/DataAction;->sPhoneAndSubtitle:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    if-eqz v16, :cond_7

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v30

    .line 169
    .local v30, phoneIntent:Landroid/content/Intent;
    :goto_1
    if-eqz v17, :cond_8

    new-instance v36, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const/4 v5, 0x0

    move-object/from16 v0, v28

    invoke-static {v3, v0, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    .local v36, smsIntent:Landroid/content/Intent;
    :goto_2
    if-eqz v16, :cond_9

    if-eqz v17, :cond_9

    .line 174
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 175
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 176
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    iget v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 177
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    iget v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    .line 294
    .end local v28           #number:Ljava/lang/String;
    .end local v29           #phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v30           #phoneIntent:Landroid/content/Intent;
    .end local v36           #smsIntent:Landroid/content/Intent;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_3

    .line 296
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 297
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    const/high16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    return-void

    .line 121
    .end local v16           #hasPhone:Z
    .end local v17           #hasSms:Z
    .restart local v4       #typeValue:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/model/dataitem/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/contacts/model/account/AccountType$EditType;

    .line 122
    .local v37, type:Lcom/android/contacts/model/account/AccountType$EditType;
    move-object/from16 v0, v37

    iget v2, v0, Lcom/android/contacts/model/account/AccountType$EditType;->rawValue:I

    if-ne v2, v4, :cond_5

    .line 123
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 126
    move-object/from16 v0, v37

    iget v2, v0, Lcom/android/contacts/model/account/AccountType$EditType;->labelRes:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 129
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/contacts/model/account/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 167
    .end local v4           #typeValue:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v37           #type:Lcom/android/contacts/model/account/AccountType$EditType;
    .restart local v16       #hasPhone:Z
    .restart local v17       #hasSms:Z
    .restart local v28       #number:Ljava/lang/String;
    .restart local v29       #phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    :cond_7
    const/16 v30, 0x0

    goto/16 :goto_1

    .line 169
    .restart local v30       #phoneIntent:Landroid/content/Intent;
    :cond_8
    const/16 v36, 0x0

    goto/16 :goto_2

    .line 178
    .restart local v36       #smsIntent:Landroid/content/Intent;
    :cond_9
    if-eqz v16, :cond_a

    .line 179
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto :goto_3

    .line 180
    :cond_a
    if-eqz v17, :cond_2

    .line 181
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 185
    .end local v28           #number:Ljava/lang/String;
    .end local v29           #phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v30           #phoneIntent:Landroid/content/Intent;
    .end local v36           #smsIntent:Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    if-eqz v2, :cond_c

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v35, p2

    .line 187
    check-cast v35, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    .line 188
    .local v35, sip:Lcom/android/contacts/model/dataitem/SipAddressDataItem;
    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/model/dataitem/SipAddressDataItem;->getSipAddress()Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, address:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    const-string v2, "sip"

    const/4 v3, 0x0

    invoke-static {v2, v8, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 191
    .local v10, callUri:Landroid/net/Uri;
    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 200
    .end local v8           #address:Ljava/lang/String;
    .end local v10           #callUri:Landroid/net/Uri;
    .end local v35           #sip:Lcom/android/contacts/model/dataitem/SipAddressDataItem;
    :cond_c
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v2, :cond_d

    move-object/from16 v13, p2

    .line 201
    check-cast v13, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 202
    .local v13, email:Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-virtual {v13}, Lcom/android/contacts/model/dataitem/EmailDataItem;->getData()Ljava/lang/String;

    move-result-object v8

    .line 203
    .restart local v8       #address:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    const-string v2, "mailto"

    const/4 v3, 0x0

    invoke-static {v2, v8, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 205
    .local v26, mailUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    move-object/from16 v0, v26

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 208
    .end local v8           #address:Ljava/lang/String;
    .end local v13           #email:Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v26           #mailUri:Landroid/net/Uri;
    :cond_d
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    if-eqz v2, :cond_e

    move-object/from16 v40, p2

    .line 209
    check-cast v40, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    .line 210
    .local v40, website:Lcom/android/contacts/model/dataitem/WebsiteDataItem;
    invoke-virtual/range {v40 .. v40}, Lcom/android/contacts/model/dataitem/WebsiteDataItem;->getUrl()Ljava/lang/String;

    move-result-object v38

    .line 211
    .local v38, url:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 212
    new-instance v39, Landroid/net/WebAddress;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 213
    .local v39, webAddress:Landroid/net/WebAddress;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-virtual/range {v39 .. v39}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 216
    .end local v38           #url:Ljava/lang/String;
    .end local v39           #webAddress:Landroid/net/WebAddress;
    .end local v40           #website:Lcom/android/contacts/model/dataitem/WebsiteDataItem;
    :cond_e
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/contacts/model/dataitem/ImDataItem;

    if-eqz v2, :cond_17

    move-object/from16 v20, p2

    .line 217
    check-cast v20, Lcom/android/contacts/model/dataitem/ImDataItem;

    .line 218
    .local v20, im:Lcom/android/contacts/model/dataitem/ImDataItem;
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v24

    .line 219
    .local v24, isEmail:Z
    if-nez v24, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    :cond_f
    if-eqz v24, :cond_13

    const/16 v34, 0x5

    .line 222
    .local v34, protocol:I
    :goto_4
    if-eqz v24, :cond_10

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 227
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    .line 230
    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, host:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v12

    .line 232
    .local v12, data:Ljava/lang/String;
    const/4 v2, -0x1

    move/from16 v0, v34

    if-eq v0, v2, :cond_11

    .line 234
    invoke-static/range {v34 .. v34}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v18

    .line 237
    :cond_11
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 238
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 239
    .local v9, authority:Ljava/lang/String;
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "imto"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v21

    .line 241
    .local v21, imUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    move-object/from16 v0, v21

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    .line 245
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v11

    .line 246
    .local v11, chatCapability:I
    and-int/lit8 v2, v11, 0x4

    if-eqz v2, :cond_14

    const/16 v25, 0x1

    .line 248
    .local v25, isVideoChatCapable:Z
    :goto_5
    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_15

    const/16 v23, 0x1

    .line 250
    .local v23, isAudioChatCapable:Z
    :goto_6
    if-nez v25, :cond_12

    if-eqz v23, :cond_2

    .line 251
    :cond_12
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "xmpp:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "?call"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    .line 253
    if-eqz v25, :cond_16

    .line 254
    const v2, 0x7f0200fe

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 255
    const v2, 0x7f0c0253

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_3

    .line 220
    .end local v9           #authority:Ljava/lang/String;
    .end local v11           #chatCapability:I
    .end local v12           #data:Ljava/lang/String;
    .end local v18           #host:Ljava/lang/String;
    .end local v21           #imUri:Landroid/net/Uri;
    .end local v23           #isAudioChatCapable:Z
    .end local v25           #isVideoChatCapable:Z
    .end local v34           #protocol:I
    :cond_13
    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v34

    goto/16 :goto_4

    .line 246
    .restart local v9       #authority:Ljava/lang/String;
    .restart local v11       #chatCapability:I
    .restart local v12       #data:Ljava/lang/String;
    .restart local v18       #host:Ljava/lang/String;
    .restart local v21       #imUri:Landroid/net/Uri;
    .restart local v34       #protocol:I
    :cond_14
    const/16 v25, 0x0

    goto :goto_5

    .line 248
    .restart local v25       #isVideoChatCapable:Z
    :cond_15
    const/16 v23, 0x0

    goto :goto_6

    .line 257
    .restart local v23       #isAudioChatCapable:Z
    :cond_16
    const v2, 0x7f0200fd

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    .line 258
    const v2, 0x7f0c0252

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    goto/16 :goto_3

    .line 263
    .end local v9           #authority:Ljava/lang/String;
    .end local v11           #chatCapability:I
    .end local v12           #data:Ljava/lang/String;
    .end local v18           #host:Ljava/lang/String;
    .end local v20           #im:Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v21           #imUri:Landroid/net/Uri;
    .end local v23           #isAudioChatCapable:Z
    .end local v24           #isEmail:Z
    .end local v25           #isVideoChatCapable:Z
    .end local v34           #protocol:I
    :cond_17
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    if-eqz v2, :cond_18

    move-object/from16 v32, p2

    .line 264
    check-cast v32, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    .line 265
    .local v32, postal:Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;
    invoke-virtual/range {v32 .. v32}, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;->getFormattedAddress()Ljava/lang/String;

    move-result-object v33

    .line 266
    .local v33, postalAddress:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 267
    invoke-static/range {v33 .. v33}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3

    .line 273
    .end local v32           #postal:Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;
    .end local v33           #postalAddress:Ljava/lang/String;
    :cond_18
    if-eqz v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 274
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "data1"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 275
    .restart local v28       #number:Ljava/lang/String;
    sget-object v2, Lcom/android/contacts/quickcontact/DataAction;->sPhoneAndSubtitle:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    .line 276
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "data5"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 277
    .local v20, im:I
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "data6"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 278
    .local v15, ft:I
    const-string v2, "DataAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSubtitle : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | number : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v2

    const-string v3, "ExtenstionForRCS"

    move/from16 v0, v20

    invoke-virtual {v2, v0, v15, v3}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    .line 281
    .local v22, intent:Landroid/content/Intent;
    const-string v2, "DataAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | exMimeType : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz v22, :cond_2

    .line 283
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "display_name"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 284
    .local v27, name:Ljava/lang/String;
    const-string v2, "DataAction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " | number : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v2, "rcs_phone_number"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v2, "rcs_display_name"

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    goto/16 :goto_3
.end method


# virtual methods
.method public collapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .parameter "other"

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 376
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic collapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->collapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method

.method public getAlternateIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 344
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    if-nez v3, :cond_0

    .line 352
    :goto_0
    return-object v2

    .line 346
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mKind:Lcom/android/contacts/model/dataitem/DataKind;

    iget-object v1, v3, Lcom/android/contacts/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 347
    .local v1, resourcePackageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 348
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 351
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 352
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconRes:I

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public getAlternateIconDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 357
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIconDescriptionRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlternateIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mAlternateIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getBody()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDataId()J
    .locals 2

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataId:J

    return-wide v0
.end method

.method public getDataUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/DataAction;->mIsPrimary:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setPresence(I)V
    .locals 0
    .parameter "presence"

    .prologue
    .line 309
    iput p1, p0, Lcom/android/contacts/quickcontact/DataAction;->mPresence:I

    .line 310
    return-void
.end method

.method public shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 6
    .parameter "t"

    .prologue
    const/4 v1, 0x0

    .line 381
    if-nez p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    instance-of v2, p1, Lcom/android/contacts/quickcontact/DataAction;

    if-nez v2, :cond_2

    .line 385
    const-string v2, "DataAction"

    const-string v3, "t must be DataAction"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 388
    check-cast v0, Lcom/android/contacts/quickcontact/DataAction;

    .line 389
    .local v0, that:Lcom/android/contacts/quickcontact/DataAction;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    iget-object v4, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/contacts/quickcontact/DataAction;->mBody:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4, v5}, Lcom/android/contacts/ContactsUtils;->shouldCollapse(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mMimeType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/android/contacts/quickcontact/DataAction;->mIntent:Landroid/content/Intent;

    invoke-static {v2, v3}, Lcom/android/contacts/ContactsUtils;->areIntentActionEqual(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 396
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic shouldCollapseWith(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    check-cast p1, Lcom/android/contacts/quickcontact/Action;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/DataAction;->shouldCollapseWith(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    return v0
.end method
