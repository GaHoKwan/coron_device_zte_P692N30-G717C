.class public Lcom/android/mms/ui/ImportSmsActivity;
.super Landroid/preference/PreferenceActivity;
.source "ImportSmsActivity.java"


# static fields
.field private static final ADDRESS_COLUMNS:[Ljava/lang/String; = null

.field private static final IMPORT_FAILED:I = 0x6

.field private static final IMPORT_SMS:I = 0x2

.field private static final IMPORT_SUCCES:I = 0x5

.field private static final MAX_OPERATIONS_PER_PATCH:I = 0x14

.field private static final NO_DATABASE:I = 0x4

.field public static final PREF_IMPORT:Ljava/lang/String; = "pref_key_import_sms"

.field private static final SMS_COLUMNS:[Ljava/lang/String; = null

.field private static final TABLE_SMS:Ljava/lang/String; = "sms"

.field private static final TAG:Ljava/lang/String; = "MMS/ImportSmsActivity"


# instance fields
.field private mImportFileName:Ljava/lang/String;

.field private mListener:Landroid/preference/Preference$OnPreferenceClickListener;

.field public mMainHandler:Landroid/os/Handler;

.field private mProgressdialog:Landroid/app/ProgressDialog;

.field private mSmsCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 97
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "m_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "seen"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ImportSmsActivity;->SMS_COLUMNS:[Ljava/lang/String;

    .line 101
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/ui/ImportSmsActivity;->ADDRESS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/android/mms/ui/ImportSmsActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ImportSmsActivity$5;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ImportSmsActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ImportSmsActivity;->showToast(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ImportSmsActivity;->getSMSFileRecursively(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ImportSmsActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ImportSmsActivity;->importMessages(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/mms/ui/ImportSmsActivity;->SMS_COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ImportSmsActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ImportSmsActivity;Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ImportSmsActivity;->getValueFromCursor(Landroid/database/Cursor;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method private getSMSFileRecursively(Ljava/lang/String;)V
    .locals 13
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v10, p0, Lcom/android/mms/ui/ImportSmsActivity;->mSmsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 178
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v2, directory:Ljava/io/File;
    new-instance v3, Lcom/android/mms/ui/ImportSmsActivity$4;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ImportSmsActivity$4;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    .line 191
    .local v3, ff:Ljava/io/FileFilter;
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 194
    .local v6, files:[Ljava/io/File;
    if-nez v6, :cond_1

    .line 195
    const-string v10, "MMS/ImportSmsActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "listFiles() returned null (directory: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v10, p0, Lcom/android/mms/ui/ImportSmsActivity;->mMainHandler:Landroid/os/Handler;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 209
    :cond_0
    return-void

    .line 199
    :cond_1
    move-object v0, v6

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v0, v7

    .line 200
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, fileName:Ljava/lang/String;
    new-instance v10, Ljava/util/Date;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, date:Ljava/lang/String;
    new-instance v9, Landroid/preference/Preference;

    invoke-direct {v9, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 203
    .local v9, sms:Landroid/preference/Preference;
    invoke-virtual {v9, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v9, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {v9, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v10, p0, Lcom/android/mms/ui/ImportSmsActivity;->mListener:Landroid/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 207
    iget-object v10, p0, Lcom/android/mms/ui/ImportSmsActivity;->mSmsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method private getValueFromCursor(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 11
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    .line 345
    const-string v8, "address"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, address:Ljava/lang/String;
    const-string v8, "body"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, body:Ljava/lang/String;
    const-string v8, "date"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 348
    .local v3, date:Ljava/lang/Long;
    const-string v8, "sim_id"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 349
    .local v2, currentSimId:I
    const-string v8, "service_center"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 350
    .local v7, serviceCenter:Ljava/lang/String;
    const-string v8, "type"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 351
    .local v5, messageType:I
    const-string v8, "read"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 353
    .local v6, read:I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v4, insertValues:Landroid/content/ContentValues;
    const-string v8, "address"

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v8, "date"

    invoke-virtual {v4, v8, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 356
    const-string v8, "body"

    invoke-virtual {v4, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v8, "sim_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 358
    const-string v8, "type"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    const-string v8, "service_center"

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v8, "read"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string v8, "seen"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 362
    const-string v8, "import_sms"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 363
    return-object v4
.end method

.method private importMessages(Ljava/lang/String;)Z
    .locals 3
    .parameter "key"

    .prologue
    const/4 v0, 0x1

    .line 255
    const-string v1, "MMS/ImportSmsActivity"

    const-string v2, "importMessages begin"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/android/mms/ui/ImportSmsActivity;->isSDcardReady()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 257
    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    return v0

    .line 259
    :cond_1
    const-string v1, ""

    const v2, 0x7f0b00a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v0}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ImportSmsActivity;->mProgressdialog:Landroid/app/ProgressDialog;

    .line 260
    new-instance v1, Lcom/android/mms/ui/ImportSmsActivity$8;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ImportSmsActivity$8;-><init>(Lcom/android/mms/ui/ImportSmsActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private isSDcardReady()Z
    .locals 3

    .prologue
    .line 367
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 369
    .local v0, isSDcard:Z
    if-nez v0, :cond_0

    .line 370
    const v1, 0x7f0b00a2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ImportSmsActivity;->showToast(I)V

    .line 371
    const-string v1, "MMS/ImportSmsActivity"

    const-string v2, "there is no SD card"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x0

    .line 374
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private newMainHandler()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/android/mms/ui/ImportSmsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ImportSmsActivity$1;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mMainHandler:Landroid/os/Handler;

    .line 140
    return-void
.end method

.method private showToast(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 379
    .local v0, t:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 380
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f050005

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 112
    const-string v0, "pref_key_import_sms"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/mms/ui/ImportSmsActivity;->mSmsCategory:Landroid/preference/PreferenceCategory;

    .line 113
    invoke-direct {p0}, Lcom/android/mms/ui/ImportSmsActivity;->newMainHandler()V

    .line 114
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 231
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b00ad

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b009e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/ImportSmsActivity$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ImportSmsActivity$7;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/mms/ui/ImportSmsActivity$6;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ImportSmsActivity$6;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 166
    const-string v0, "MMS/ImportSmsActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/android/mms/ui/ImportSmsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ImportSmsActivity$3;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter "id"
    .parameter "d"

    .prologue
    .line 225
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 226
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b00ad

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ImportSmsActivity;->mImportFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 145
    const-string v0, "MMS/ImportSmsActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/android/mms/ui/ImportSmsActivity;->isSDcardReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ImportSmsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ImportSmsActivity$2;-><init>(Lcom/android/mms/ui/ImportSmsActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
