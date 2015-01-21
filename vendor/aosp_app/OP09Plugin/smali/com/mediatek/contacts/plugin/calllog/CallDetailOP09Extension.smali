.class public Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;
.super Lcom/android/contacts/ext/CallDetailExtension;
.source "CallDetailOP09Extension.java"

# interfaces
.implements Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;


# static fields
.field public static final CALL_TYPE_SIP:I = -0x2

.field private static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final TAG:Ljava/lang/String; = "CallDetailOP09Extension"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

.field private mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

.field private mPhoneNumberHelper:Lcom/android/contacts/ext/IPhoneNumberHelper;

.field private mPluginContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "pluginContext"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/contacts/ext/CallDetailExtension;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;)Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 263
    const-string v0, "CallDetailOP09Extension"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private showDeleteAllCallsWithContactDialog(I)V
    .locals 5
    .parameter "rawContactId"

    .prologue
    .line 141
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090104

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090105

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$2;

    invoke-direct {v4, p0, p1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$2;-><init>(Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 154
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 155
    return-void
.end method

.method private showDeleteAllCallsWithNumberDialog(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 124
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090102

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    const v4, 0x7f090103

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;

    invoke-direct {v4, p0, p1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension$1;-><init>(Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 136
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 137
    return-void
.end method


# virtual methods
.method public doInBackgroundForUpdateData([Landroid/net/Uri;[Lcom/android/contacts/PhoneCallDetails;)[Lcom/android/contacts/PhoneCallDetails;
    .locals 14
    .parameter "callUris"
    .parameter "phoneCallDetails"

    .prologue
    .line 159
    const/4 v8, 0x0

    .line 161
    .local v8, firstCallCursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    sget-object v2, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 167
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    invoke-static {v8}, Lcom/android/contacts/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    if-eqz v8, :cond_0

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->getPhoneCallDetailsContactInfo(Lcom/android/contacts/calllog/ContactInfo;I)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v9

    .line 180
    .local v9, firstDetails:Lcom/android/contacts/PhoneCallDetails;
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->contactId:I

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calls.raw_contact_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget v1, v1, Lcom/android/contacts/calllog/ContactInfo;->rawContactId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, where:Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://call_log/callsjoindataview"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    .local v6, allCallsCursor:Landroid/database/Cursor;
    array-length v12, p1

    .line 190
    .local v12, numCalls:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allCallsCursor.getCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->log(Ljava/lang/String;)V

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v0, v12

    add-int/lit8 v0, v0, 0x1

    new-array v13, v0, [Lcom/android/contacts/PhoneCallDetails;

    .line 194
    .local v13, resultPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;
    const/4 v0, 0x0

    aput-object v9, v13, v0

    .line 195
    const/4 v10, 0x1

    .local v10, i:I
    move v11, v10

    .line 196
    .end local v10           #i:I
    .local v11, i:I
    :goto_3
    if-ge v11, v12, :cond_3

    .line 197
    aget-object v0, p2, v11

    aput-object v0, v13, v11

    .line 198
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_3

    .line 163
    .end local v3           #where:Ljava/lang/String;
    .end local v6           #allCallsCursor:Landroid/database/Cursor;
    .end local v9           #firstDetails:Lcom/android/contacts/PhoneCallDetails;
    .end local v11           #i:I
    .end local v12           #numCalls:I
    .end local v13           #resultPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;
    :catch_0
    move-exception v7

    .line 164
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v0, "djb"

    const-string v1, "doInBackgroundForUpdateData NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 169
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 170
    .restart local v7       #e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v0, "djb"

    const-string v1, "--djb--doInBackgroundForUpdateData NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    if-eqz v8, :cond_0

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 172
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 180
    .restart local v9       #firstDetails:Lcom/android/contacts/PhoneCallDetails;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "number = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v1, v1, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v1, v1, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 201
    .restart local v3       #where:Ljava/lang/String;
    .restart local v6       #allCallsCursor:Landroid/database/Cursor;
    .restart local v11       #i:I
    .restart local v12       #numCalls:I
    .restart local v13       #resultPhoneCallDetails:[Lcom/android/contacts/PhoneCallDetails;
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    const/4 v1, 0x3

    invoke-direct {v0, v9, v1}, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;-><init>(Lcom/android/contacts/PhoneCallDetails;I)V

    aput-object v0, v13, v11

    .line 204
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    add-int/lit8 v11, v10, 0x1

    .end local v10           #i:I
    .restart local v11       #i:I
    :try_start_4
    invoke-static {v6}, Lcom/android/contacts/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->getPhoneCallDetailsContactInfo(Lcom/android/contacts/calllog/ContactInfo;I)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    aput-object v0, v13, v10

    .line 208
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    :try_start_5
    invoke-static {v6}, Lcom/android/contacts/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->getPhoneCallDetailsContactInfo(Lcom/android/contacts/calllog/ContactInfo;I)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    aput-object v0, v13, v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_4

    :cond_4
    move v10, v11

    .line 214
    .end local v11           #i:I
    .restart local v10       #i:I
    :cond_5
    if-eqz v6, :cond_6

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_6
    return-object v13

    .line 214
    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v6, :cond_7

    .line 215
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 214
    .end local v10           #i:I
    .restart local v11       #i:I
    :catchall_2
    move-exception v0

    move v10, v11

    .end local v11           #i:I
    .restart local v10       #i:I
    goto :goto_5
.end method

.method public getPhoneCallDetailsContactInfo(Lcom/android/contacts/calllog/ContactInfo;I)Lcom/android/contacts/PhoneCallDetails;
    .locals 21
    .parameter "contactInfo"
    .parameter "displayType"

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->log(Ljava/lang/String;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPhoneNumberHelper:Lcom/android/contacts/ext/IPhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/contacts/ext/IPhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPhoneNumberHelper:Lcom/android/contacts/ext/IPhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/IPhoneNumberHelper;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPhoneNumberHelper:Lcom/android/contacts/ext/IPhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/IPhoneNumberHelper;->isEmergencyNumber(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPhoneNumberHelper:Lcom/android/contacts/ext/IPhoneNumberHelper;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/IPhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 227
    const-string v1, ""

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 228
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput v1, v0, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    .line 229
    const-string v1, ""

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 230
    const/4 v1, 0x0

    move-object/from16 v0, p1

    iput-object v1, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 232
    :cond_1
    new-instance v1, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/contacts/calllog/ContactInfo;->geocode:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move-object/from16 v0, p1

    iget-wide v7, v0, Lcom/android/contacts/calllog/ContactInfo;->date:J

    move-object/from16 v0, p1

    iget-wide v9, v0, Lcom/android/contacts/calllog/ContactInfo;->duration:J

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->vtCall:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->ipPrefix:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, p2

    invoke-direct/range {v1 .. v20}, Lcom/mediatek/contacts/plugin/calllog/OP09PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;I)V

    return-object v1
.end method

.method public onCallsDeleted()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 246
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/app/Activity;Lcom/android/contacts/ext/IPhoneNumberHelper;)V
    .locals 2
    .parameter "activity"
    .parameter "phoneNumberHelper"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    .line 65
    iput-object p2, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPhoneNumberHelper:Lcom/android/contacts/ext/IPhoneNumberHelper;

    .line 66
    new-instance v0, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mCallLogQueryHandler:Lcom/mediatek/contacts/plugin/calllog/CallLogQueryHandler;

    .line 67
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x0

    .line 74
    const v0, 0x7f0b0006

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    const v2, 0x7f0900fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 76
    const v0, 0x7f0b0007

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    const v2, 0x7f0900fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 78
    return v3
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mActivity:Landroid/app/Activity;

    .line 71
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget-object v1, v1, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->showDeleteAllCallsWithNumberDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget v1, v1, Lcom/android/contacts/calllog/ContactInfo;->rawContactId:I

    invoke-direct {p0, v1}, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->showDeleteAllCallsWithContactDialog(I)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x7f0b0006
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f0b0007

    const v2, 0x7f0b0006

    const/4 v1, 0x0

    .line 82
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    if-nez v0, :cond_0

    .line 83
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 84
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 94
    :goto_0
    return v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mFirstCallContactInfo:Lcom/android/contacts/calllog/ContactInfo;

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->contactId:I

    if-nez v0, :cond_1

    .line 88
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 89
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 92
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public setSimInfo(ILandroid/widget/TextView;)Z
    .locals 2
    .parameter "simId"
    .parameter "simIndicator"

    .prologue
    .line 249
    const/4 v0, -0x2

    if-ne v0, p1, :cond_0

    .line 251
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/calllog/CallDetailOP09Extension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    :cond_0
    if-eqz p2, :cond_1

    .line 257
    const-string v0, " "

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
