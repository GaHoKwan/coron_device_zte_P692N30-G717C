.class public Lcom/android/email/AttachmentInfo;
.super Ljava/lang/Object;
.source "AttachmentInfo.java"


# static fields
.field public static final ALLOW:I = 0x0

.field public static final COLUMN_ACCOUNT_KEY:I = 0x4

.field public static final COLUMN_CONTENT_URI:I = 0x6

.field public static final COLUMN_FILENAME:I = 0x2

.field public static final COLUMN_FLAGS:I = 0x5

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_LOCATION:I = 0x7

.field public static final COLUMN_MESSAGE_KEY:I = 0x8

.field public static final COLUMN_MIME_TYPE:I = 0x3

.field public static final COLUMN_SIZE:I = 0x1

.field private static final CONTACT_URI_PREFIX:Ljava/lang/String; = "content://com.android.contacts/contacts/"

.field public static final DENY_APKINSTALL:I = 0x10

.field public static final DENY_DELETED:I = 0x40

.field public static final DENY_LOCALVCF:I = 0x80

.field public static final DENY_MALWARE:I = 0x1

.field public static final DENY_NOINTENT:I = 0x4

.field public static final DENY_NOSIDELOAD:I = 0x8

.field public static final DENY_POLICY:I = 0x20

.field public static final DENY_WIFIONLY:I = 0x2

.field public static final MIME_DCF:Ljava/lang/String; = "application/dcf"

.field public static final MPO_VIEW_ACTION:Ljava/lang/String; = "com.mediatek.action.VIEW_MPO"

.field public static final PROJECTION:[Ljava/lang/String;


# instance fields
.field public final mAccountKey:J

.field public mAllowInstall:Z

.field public mAllowSave:Z

.field public mAllowView:Z

.field public mContentType:Ljava/lang/String;

.field public mContentURI:Ljava/lang/String;

.field public mDenyFlags:I

.field public final mFlags:I

.field public final mId:J

.field public mIsLocal:Z

.field public mLocation:Ljava/lang/String;

.field public final mMessageKey:J

.field public mName:Ljava/lang/String;

.field public final mSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fileName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mimeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "accountKey"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "flags"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contentUri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "messageKey"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/AttachmentInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V
    .locals 20
    .parameter "context"
    .parameter "id"
    .parameter "size"
    .parameter "fileName"
    .parameter "mimeType"
    .parameter "accountKey"
    .parameter "flags"
    .parameter "contentUri"
    .parameter "location"
    .parameter "messageKey"

    .prologue
    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 131
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mSize:J

    .line 132
    invoke-static/range {p6 .. p7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    .line 134
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mId:J

    .line 135
    move-wide/from16 v0, p13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mMessageKey:J

    .line 136
    move-wide/from16 v0, p8

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    .line 137
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/AttachmentInfo;->mFlags:I

    .line 138
    move-object/from16 v0, p11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    .line 139
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/email/AttachmentInfo;->mLocation:Ljava/lang/String;

    .line 140
    const/4 v7, 0x1

    .line 141
    .local v7, canView:Z
    const/4 v6, 0x1

    .line 142
    .local v6, canSave:Z
    const/4 v5, 0x0

    .line 143
    .local v5, canInstall:Z
    const/4 v12, 0x0

    .line 144
    .local v12, isLocal:Z
    const/4 v9, 0x0

    .line 147
    .local v9, denyFlags:I
    invoke-static/range {p1 .. p1}, Lcom/android/emailcommon/utility/Utility;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 148
    const/4 v6, 0x0

    .line 152
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/emailcommon/utility/AttachmentUtilities;->ACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_VIEW_TYPES:[Ljava/lang/String;

    invoke-static/range {v16 .. v17}, Lcom/android/emailcommon/internet/MimeUtility;->mimeTypeMatches(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 156
    :cond_1
    const/4 v7, 0x0

    .line 160
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    .local v10, extension:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_3

    sget-object v16, Lcom/android/emailcommon/utility/AttachmentUtilities;->UNACCEPTABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 164
    const/4 v7, 0x0

    .line 165
    const/4 v6, 0x0

    .line 166
    or-int/lit8 v9, v9, 0x1

    .line 170
    :cond_3
    move/from16 v0, p10

    and-int/lit16 v0, v0, 0x200

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 171
    const/4 v7, 0x0

    .line 172
    const/4 v6, 0x0

    .line 173
    or-int/lit8 v9, v9, 0x20

    .line 177
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getFilenameExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 178
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_5

    sget-object v16, Lcom/android/emailcommon/utility/AttachmentUtilities;->INSTALLABLE_ATTACHMENT_EXTENSIONS:[Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v0, v10}, Lcom/android/emailcommon/utility/Utility;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 182
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "install_non_market_apps"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    if-eqz v16, :cond_a

    const/4 v15, 0x1

    .line 184
    .local v15, sideloadEnabled:Z
    :goto_0
    and-int/2addr v6, v15

    .line 185
    move v7, v6

    .line 186
    move v5, v6

    .line 187
    if-nez v15, :cond_5

    .line 188
    or-int/lit8 v9, v9, 0x8

    .line 194
    .end local v15           #sideloadEnabled:Z
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0x500000

    cmp-long v16, v16, v18

    if-lez v16, :cond_6

    .line 195
    invoke-static/range {p1 .. p1}, Lcom/android/email/EmailConnectivityManager;->getActiveNetworkType(Landroid/content/Context;)I

    move-result v13

    .line 196
    .local v13, networkType:I
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_6

    .line 197
    const/4 v7, 0x0

    .line 198
    const/4 v6, 0x0

    .line 199
    or-int/lit8 v9, v9, 0x2

    .line 204
    .end local v13           #networkType:I
    :cond_6
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/email/AttachmentInfo;->getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v11

    .line 205
    .local v11, intent:Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 206
    .local v14, pm:Landroid/content/pm/PackageManager;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 208
    .local v4, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentExtensionMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 210
    .local v8, contentTypeByName:Ljava/lang/String;
    invoke-virtual {v11, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v11, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 212
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_7

    .line 213
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AttachmentInfo : change attachment: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " MIME type from: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " to: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    .line 220
    .end local v8           #contentTypeByName:Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_8

    const-string v16, "application/dcf"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 222
    const/4 v7, 0x0

    .line 223
    const/4 v6, 0x0

    .line 224
    or-int/lit8 v9, v9, 0x4

    .line 228
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "com.android.email.attachmentprovider"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_9

    .line 230
    const/4 v12, 0x1

    .line 231
    const/4 v6, 0x0

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "content://com.android.contacts/contacts/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 236
    const/4 v7, 0x0

    .line 237
    or-int/lit16 v9, v9, 0x80

    .line 241
    :cond_9
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    .line 242
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    .line 243
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/email/AttachmentInfo;->mAllowInstall:Z

    .line 244
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/email/AttachmentInfo;->mDenyFlags:I

    .line 245
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/email/AttachmentInfo;->mIsLocal:Z

    .line 246
    return-void

    .line 182
    .end local v4           #activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11           #intent:Landroid/content/Intent;
    .end local v14           #pm:Landroid/content/pm/PackageManager;
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 16
    .parameter "context"
    .parameter "c"

    .prologue
    .line 118
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v1, 0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v1, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v1, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v1, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v1, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/email/AttachmentInfo;)V
    .locals 16
    .parameter "context"
    .parameter "info"

    .prologue
    .line 125
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/email/AttachmentInfo;->mId:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/email/AttachmentInfo;->mSize:J

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/email/AttachmentInfo;->mAccountKey:J

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/email/AttachmentInfo;->mFlags:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/email/AttachmentInfo;->mContentURI:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/email/AttachmentInfo;->mLocation:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/email/AttachmentInfo;->mMessageKey:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 16
    .parameter "context"
    .parameter "attachment"

    .prologue
    .line 112
    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p2

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v9, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    move-object/from16 v0, p2

    iget v11, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mLocation:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcom/android/email/AttachmentInfo;-><init>(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;J)V

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 290
    if-ne p1, p0, :cond_1

    .line 298
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 294
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    .line 295
    goto :goto_0

    .line 298
    :cond_3
    check-cast p1, Lcom/android/email/AttachmentInfo;

    .end local p1
    iget-wide v2, p1, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v4, p0, Lcom/android/email/AttachmentInfo;->mId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAttachmentIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 256
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/email/AttachmentInfo;->getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 257
    .local v0, contentUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "CanShare"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    iget-object v2, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const v2, 0x80001

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 262
    return-object v1
.end method

.method protected getUriForIntent(Landroid/content/Context;J)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 266
    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {p2, p3, v1, v2}, Lcom/android/emailcommon/utility/AttachmentUtilities;->getAttachmentUri(JJ)Landroid/net/Uri;

    move-result-object v0

    .line 267
    .local v0, contentUri:Landroid/net/Uri;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/emailcommon/utility/AttachmentUtilities;->resolveAttachmentIdToContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 272
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 285
    iget-wide v0, p0, Lcom/android/email/AttachmentInfo;->mId:J

    iget-wide v2, p0, Lcom/android/email/AttachmentInfo;->mId:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isEligibleForDownload()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/email/AttachmentInfo;->mAllowSave:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Attachment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/AttachmentInfo;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/AttachmentInfo;->mSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
