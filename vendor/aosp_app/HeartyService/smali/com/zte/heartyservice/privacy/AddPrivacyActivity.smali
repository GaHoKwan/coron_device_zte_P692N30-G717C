.class public Lcom/zte/heartyservice/privacy/AddPrivacyActivity;
.super Landroid/app/Activity;
.source "AddPrivacyActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/privacy/AddPrivacyActivity$11;,
        Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;,
        Lcom/zte/heartyservice/privacy/AddPrivacyActivity$BaseTask;,
        Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;,
        Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    }
.end annotation


# static fields
.field private static final ADD_PRIVACY_CONTACT:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_CONTACT"

.field private static final ADD_PRIVACY_CONTACT_INTERNAL:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_CONTACT_INTERNAL"

.field private static final ADD_PRIVACY_FILE:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_FILE"

.field private static final ADD_PRIVACY_IMAGE:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_IMAGE"

.field private static final ADD_PRIVACY_SMS:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_SMS"

.field private static final ADD_PRIVACY_VIDEO:Ljava/lang/String; = "com.zte.heartyservice.intent.action.ADD_PRIVACY_VIDEO"

.field private static final NUMBERS_ARRAY:Ljava/lang/String; = "numbers_array"

.field private static sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

.field private static sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    .line 48
    sput-object v0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    .line 46
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    .line 49
    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 652
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyNumbers(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200()Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    return-object p0
.end method

.method static synthetic access$400()Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-object p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    return-object p0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;)Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private addPrivacyFile(Ljava/io/File;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V
    .locals 6
    .parameter "file"
    .parameter "fileType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 238
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 239
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 240
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 241
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 242
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 243
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$7;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$7;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 254
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$8;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$8;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 262
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    if-nez v1, :cond_1

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;I)V

    sput-object v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    .line 266
    sget-object v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 271
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/File;>;"
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto :goto_0
.end method

.method private addPrivacyNumbers(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 274
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 276
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 277
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 278
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 279
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$9;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 293
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$10;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$10;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    .line 303
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mImportTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/util/ArrayList;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto :goto_0
.end method

.method private addPrivacySms(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 202
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 204
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 205
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 206
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 207
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$5;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$5;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 218
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$6;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$6;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    :cond_0
    sget-object v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    if-nez v1, :cond_1

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;)V

    sput-object v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    .line 230
    sget-object v1, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/util/ArrayList;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 235
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :goto_0
    return-void

    .line 233
    :cond_1
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto :goto_0
.end method

.method public static importPrivacyNumbers(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 426
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.ADD_PRIVACY_CONTACT_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "numbers_array"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->startActivitySafe(Landroid/content/Context;Landroid/content/Intent;)V

    .line 429
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    iput-object p0, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 55
    .local v5, i:Landroid/content/Intent;
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isRSAKeyPairExist()Z

    move-result v8

    if-nez v8, :cond_0

    .line 56
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020017

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a02fb

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a058f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0174

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0173

    new-instance v10, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;

    invoke-direct {v10, p0, v5}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$1;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Landroid/content/Intent;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 73
    .local v1, dialog:Landroid/app/AlertDialog;
    new-instance v8, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$2;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$2;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 78
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 198
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, action:Ljava/lang/String;
    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_CONTACT_INTERNAL"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_CONTACT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 85
    :cond_1
    const-string v8, "numbers_array"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 87
    .local v6, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 88
    :cond_2
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0387

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 91
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_3
    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_CONTACT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 96
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f020017

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a02fb

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a058e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a0174

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0a01e0

    new-instance v10, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;

    invoke-direct {v10, p0, v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$3;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 110
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    new-instance v8, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$4;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity$4;-><init>(Lcom/zte/heartyservice/privacy/AddPrivacyActivity;)V

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 115
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 116
    invoke-static {}, Lcom/zte/heartyservice/privacy/PasswordSetting;->stopMonitor()V

    goto/16 :goto_0

    .line 119
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_4
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyNumbers(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 122
    .end local v6           #numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_SMS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 123
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 124
    .local v7, uri:Landroid/net/Uri;
    if-nez v7, :cond_6

    .line 125
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto/16 :goto_0

    .line 128
    :cond_6
    sget-object v8, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sImportSmsTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$ImportSmsTask;

    if-eqz v8, :cond_7

    .line 129
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0643

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 132
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto/16 :goto_0

    .line 135
    :cond_7
    invoke-direct {p0, v7}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacySms(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 138
    .end local v7           #uri:Landroid/net/Uri;
    :cond_8
    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_FILE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_IMAGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_VIDEO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 141
    :cond_9
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->checkCanStartActivity()Z

    move-result v8

    if-nez v8, :cond_a

    .line 142
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto/16 :goto_0

    .line 145
    :cond_a
    sget-object v8, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->sEncryptTask:Lcom/zte/heartyservice/privacy/AddPrivacyActivity$EncryptTask;

    if-eqz v8, :cond_b

    .line 146
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0643

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 149
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto/16 :goto_0

    .line 152
    :cond_b
    const/4 v3, 0x0

    .line 154
    .local v3, file:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v8, Ljava/net/URI;

    invoke-virtual {v5}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #file:Ljava/io/File;
    .local v4, file:Ljava/io/File;
    move-object v3, v4

    .line 160
    .end local v4           #file:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    :goto_1
    if-eqz v3, :cond_c

    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 167
    :cond_c
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0644

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 172
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    iget-object v8, p0, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0644

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 181
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto/16 :goto_0

    .line 155
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 156
    .restart local v2       #e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v2           #e:Ljava/lang/Exception;
    :cond_d
    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_IMAGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 186
    sget-object v8, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->IMAGE:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    invoke-direct {p0, v3, v8}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyFile(Ljava/io/File;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V

    goto/16 :goto_0

    .line 187
    :cond_e
    const-string v8, "com.zte.heartyservice.intent.action.ADD_PRIVACY_VIDEO"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 188
    sget-object v8, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->VIDEO:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    invoke-direct {p0, v3, v8}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyFile(Ljava/io/File;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V

    goto/16 :goto_0

    .line 190
    :cond_f
    sget-object v8, Lcom/zte/heartyservice/privacy/FilesActivity$FileType;->FILE:Lcom/zte/heartyservice/privacy/FilesActivity$FileType;

    invoke-direct {p0, v3, v8}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->addPrivacyFile(Ljava/io/File;Lcom/zte/heartyservice/privacy/FilesActivity$FileType;)V

    goto/16 :goto_0

    .line 197
    .end local v3           #file:Ljava/io/File;
    :cond_10
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AddPrivacyActivity;->finish()V

    goto/16 :goto_0
.end method
