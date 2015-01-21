.class public Lcom/mediatek/contacts/ShareContactViaSMS;
.super Landroid/app/Activity;
.source "ShareContactViaSMS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;,
        Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShareContactViaSMS"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mDataUri:Landroid/net/Uri;

.field mIntent:Landroid/content/Intent;

.field mLookUpUris:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;

.field private mSingleContactId:I

.field private mUserProfile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name_alt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/ShareContactViaSMS;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSingleContactId:I

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mUserProfile:Z

    .line 395
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/ShareContactViaSMS;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/contacts/ShareContactViaSMS;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mDataUri:Landroid/net/Uri;

    return-object p1
.end method

.method private getVCardString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x2

    .line 279
    const/4 v4, 0x0

    .line 280
    .local v4, dataContactId:I
    const/4 v5, 0x1

    .line 281
    .local v5, dataMimeType:I
    const/4 v6, 0x2

    .line 282
    .local v6, dataString:I
    const-wide/16 v2, 0x0

    .line 283
    .local v2, contactId:J
    const-wide/16 v0, 0x0

    .line 284
    .local v0, contactCurrentId:J
    const/4 v7, 0x1

    .line 286
    .local v7, i:I
    new-instance v9, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;

    const/4 v11, 0x0

    invoke-direct {v9, p0, v11}, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;-><init>(Lcom/mediatek/contacts/ShareContactViaSMS;Lcom/mediatek/contacts/ShareContactViaSMS$1;)V

    .line 288
    .local v9, tvc:Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .local v10, vcards:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 290
    const/4 v11, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 291
    const/4 v11, 0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, mimeType:Ljava/lang/String;
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-nez v11, :cond_1

    .line 293
    move-wide v0, v2

    .line 297
    :cond_1
    cmp-long v11, v2, v0

    if-eqz v11, :cond_2

    .line 298
    move-wide v0, v2

    .line 299
    invoke-virtual {v9}, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v9}, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->reset()V

    .line 304
    :cond_2
    const-string v11, "vnd.android.cursor.item/name"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 306
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->mName:Ljava/lang/String;

    .line 308
    :cond_3
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 309
    iget-object v11, v9, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->mNumbers:Ljava/util/List;

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    :cond_4
    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 312
    iget-object v11, v9, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->mOmails:Ljava/util/List;

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_5
    const-string v11, "vnd.android.cursor.item/organization"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 315
    iget-object v11, v9, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->mOrganizations:Ljava/util/List;

    invoke-interface {p1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_6
    invoke-interface {p1}, Landroid/database/Cursor;->isLast()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 320
    invoke-virtual {v9}, Lcom/mediatek/contacts/ShareContactViaSMS$TextVCardContact;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    .end local v8           #mimeType:Ljava/lang/String;
    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const v3, 0x7f0c005b

    .line 128
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 129
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 133
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 134
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 136
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 273
    const-string v0, "ShareContactViaSMS"

    const-string v1, "In onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 275
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    .line 93
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mAction:Ljava/lang/String;

    .line 94
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    const-string v4, "contactId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, contactId:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    const-string v4, "userProfile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, userProfile:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mUserProfile:Z

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSingleContactId:I

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 109
    .local v1, extraUri:Landroid/net/Uri;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mLookUpUris:Ljava/lang/String;

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mLookUpUris:Ljava/lang/String;

    .line 116
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSingleContactId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mUserProfile:Z

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mLookUpUris:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 118
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00a9

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 125
    :goto_0
    return-void

    .line 124
    :cond_5
    const-string v3, "ShareContactViaSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAction is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 141
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    new-instance v0, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;-><init>(Lcom/mediatek/contacts/ShareContactViaSMS;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSMS$SearchContactThread;

    .line 144
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSMS;->showProgressDialog()V

    .line 146
    :cond_0
    return-void
.end method

.method public shareViaSMS(Ljava/lang/String;)V
    .locals 27
    .parameter "shareLookUpUris"

    .prologue
    .line 149
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v12, contactsID:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 151
    .local v14, curIndex:I
    const/16 v16, 0x0

    .line 152
    .local v16, cursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 153
    .local v20, id:Ljava/lang/String;
    const-string v25, ""

    .line 154
    .local v25, textVCard:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/ShareContactViaSMS;->mUserProfile:Z

    if-eqz v2, :cond_1

    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v6, "data"

    invoke-virtual {v4, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "mimetype"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 157
    if-eqz v16, :cond_0

    .line 158
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/ShareContactViaSMS;->getVCardString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v25

    .line 159
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 249
    :cond_0
    :goto_0
    const-string v2, "ShareContactViaSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "textVCard is  \n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v18, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v4, "sms"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-direct {v0, v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .local v18, i:Landroid/content/Intent;
    const-string v2, "sms_body"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 268
    return-void

    .line 163
    .end local v18           #i:Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSingleContactId:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    .line 164
    const-string v2, ":"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 165
    .local v24, tempUris:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "lookup in ("

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .local v5, selection:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .line 168
    .local v21, index:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_2
    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v24, v18

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    move-object/from16 v0, v24

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v21

    if-eq v0, v2, :cond_2

    .line 171
    const-string v2, ","

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_2
    add-int/lit8 v21, v21, 0x1

    .line 168
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 176
    :cond_3
    const-string v2, ")"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/mediatek/contacts/ShareContactViaSMS;->CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v5           #selection:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    const-string v7, "sort_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 180
    const-string v2, "ShareContactViaSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cursor is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    if-eqz v16, :cond_7

    .line 182
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 183
    if-eqz v16, :cond_4

    .line 184
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 186
    :cond_4
    add-int/lit8 v15, v14, 0x1

    .end local v14           #curIndex:I
    .local v15, curIndex:I
    if-eqz v14, :cond_5

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v14, v15

    .end local v15           #curIndex:I
    .restart local v14       #curIndex:I
    goto :goto_3

    .line 189
    .end local v14           #curIndex:I
    .restart local v15       #curIndex:I
    :cond_5
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v14, v15

    .end local v15           #curIndex:I
    .restart local v14       #curIndex:I
    goto :goto_3

    .line 192
    :cond_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 199
    .end local v18           #i:I
    .end local v21           #index:I
    .end local v24           #tempUris:[Ljava/lang/String;
    :cond_7
    :goto_4
    const/4 v13, 0x0

    .line 200
    .local v13, contactsIds:[J
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 201
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 202
    .local v26, vCardConIds:[Ljava/lang/String;
    const-string v2, "ShareContactViaSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ComposeMessage.initActivityState(): vCardConIds.length"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v26

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, v26

    array-length v2, v0

    new-array v13, v2, [J

    .line 206
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_5
    :try_start_1
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v18

    if-ge v0, v2, :cond_9

    .line 207
    aget-object v2, v26, v18

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aput-wide v6, v13, v18
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 206
    add-int/lit8 v18, v18, 0x1

    goto :goto_5

    .line 195
    .end local v13           #contactsIds:[J
    .end local v18           #i:I
    .end local v26           #vCardConIds:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/ShareContactViaSMS;->mSingleContactId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 196
    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 209
    .restart local v13       #contactsIds:[J
    .restart local v18       #i:I
    .restart local v26       #vCardConIds:[Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 210
    .local v17, e:Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    .line 213
    .end local v17           #e:Ljava/lang/NumberFormatException;
    .end local v18           #i:I
    .end local v26           #vCardConIds:[Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_0

    array-length v2, v13

    if-lez v2, :cond_0

    .line 214
    const-string v2, "ShareContactViaSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compose.addTextVCard(): contactsIds.length() = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v13

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v2, ""

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v23, sb:Ljava/lang/StringBuilder;
    move-object v8, v13

    .local v8, arr$:[J
    array-length v0, v8

    move/from16 v22, v0

    .local v22, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_6
    move/from16 v0, v19

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    aget-wide v10, v8, v19

    .line 221
    .local v10, contactId:J
    array-length v2, v13

    add-int/lit8 v2, v2, -0x1

    aget-wide v6, v13, v2

    cmp-long v2, v10, v6

    if-nez v2, :cond_a

    .line 222
    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 220
    :goto_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .line 224
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 227
    .end local v10           #contactId:J
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id in ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, selection:Ljava/lang/String;
    const-string v2, "ShareContactViaSMS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compose.addTextVCard(): selection = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v2, "content://com.android.contacts/data"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 231
    .local v3, shareDataUri:Landroid/net/Uri;
    const-string v2, "ShareContactViaSMS"

    const-string v4, "Before query to build contact name and number string "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "contact_id"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "mimetype"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "data1"

    aput-object v7, v4, v6

    const/4 v6, 0x0

    const-string v7, "sort_key , contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 240
    .local v9, c:Landroid/database/Cursor;
    const-string v2, "ShareContactViaSMS"

    const-string v4, "After query to build contact name and number string "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz v9, :cond_0

    .line 242
    const-string v2, "ShareContactViaSMS"

    const-string v4, "Before getVCardString "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/mediatek/contacts/ShareContactViaSMS;->getVCardString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v25

    .line 244
    const-string v2, "ShareContactViaSMS"

    const-string v4, "After getVCardString "

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 255
    .end local v3           #shareDataUri:Landroid/net/Uri;
    .end local v5           #selection:Ljava/lang/String;
    .end local v8           #arr$:[J
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #contactsIds:[J
    .end local v19           #i$:I
    .end local v22           #len$:I
    .end local v23           #sb:Ljava/lang/StringBuilder;
    .local v18, i:Landroid/content/Intent;
    :catch_1
    move-exception v17

    .line 256
    .local v17, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/mediatek/contacts/ShareContactViaSMS$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/mediatek/contacts/ShareContactViaSMS$1;-><init>(Lcom/mediatek/contacts/ShareContactViaSMS;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    const-string v2, "ShareContactViaSMS"

    const-string v4, "ActivityNotFoundException for secondaryIntent"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
