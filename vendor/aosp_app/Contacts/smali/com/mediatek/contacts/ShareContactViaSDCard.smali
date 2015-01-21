.class public Lcom/mediatek/contacts/ShareContactViaSDCard;
.super Landroid/app/Activity;
.source "ShareContactViaSDCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;,
        Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;
    }
.end annotation


# static fields
.field static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShareContactViaSDCard"

.field private static sFile:Ljava/io/File;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCancelListener:Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;

.field private mDataUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mLookUpUris:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mSdIsVisible:Z

.field private mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;

.field private mSingleContactId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
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

    sput-object v0, Lcom/mediatek/contacts/ShareContactViaSDCard;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSingleContactId:I

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSdIsVisible:Z

    .line 346
    new-instance v0, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCard;Lcom/mediatek/contacts/ShareContactViaSDCard$1;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mCancelListener:Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;

    .line 348
    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/ShareContactViaSDCard;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/ShareContactViaSDCard;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mediatek/contacts/ShareContactViaSDCard;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mDataUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/ShareContactViaSDCard;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mLookUpUris:Ljava/lang/String;

    return-object v0
.end method

.method private changeLookupUrisToSelection(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 6
    .parameter "lookUpUris"

    .prologue
    .line 240
    const-string v4, ":"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, tempUris:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "lookup in ("

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .local v2, selection:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 244
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_0

    .line 247
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 244
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_1
    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    return-object v2
.end method

.method private checkSDCardAvaliable()Z
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 313
    :try_start_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 315
    .local v0, mountService:Landroid/os/storage/IMountService;
    const-string v2, "ShareContactViaSDCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getExternalStorageState] mFile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/contacts/ShareContactViaSDCard;->sFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v2, Lcom/mediatek/contacts/ShareContactViaSDCard;->sFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 318
    :goto_0
    return-object v2

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, rex:Ljava/lang/Exception;
    const-string v2, "removed"

    goto :goto_0
.end method

.method private isSDCardFull()Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCard;->getExternalStorageDirectory()Ljava/io/File;

    .line 262
    invoke-static {}, Lcom/mediatek/contacts/ShareContactViaSDCard;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 263
    .local v6, state:Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 264
    invoke-virtual {p0}, Lcom/mediatek/contacts/ShareContactViaSDCard;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 265
    .local v4, sdcardDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, path:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 287
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #sdcardDir:Ljava/io/File;
    :goto_0
    return v8

    .line 269
    .restart local v3       #path:Ljava/lang/String;
    .restart local v4       #sdcardDir:Ljava/io/File;
    :cond_0
    const-string v9, "ShareContactViaSDCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSDCardFull storage path is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v5, 0x0

    .line 272
    .local v5, sf:Landroid/os/StatFs;
    :try_start_0
    new-instance v5, Landroid/os/StatFs;

    .end local v5           #sf:Landroid/os/StatFs;
    invoke-direct {v5, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .restart local v5       #sf:Landroid/os/StatFs;
    if-nez v5, :cond_1

    .line 280
    const-string v7, "ShareContactViaSDCard"

    const-string v9, "isSDCardFull sf is null "

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v5           #sf:Landroid/os/StatFs;
    :catch_0
    move-exception v2

    .line 274
    .local v2, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 275
    const-string v7, "ShareContactViaSDCard"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #sf:Landroid/os/StatFs;
    :cond_1
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 284
    .local v0, availCount:J
    const-wide/16 v9, 0x0

    cmp-long v9, v0, v9

    if-gtz v9, :cond_2

    :goto_1
    move v8, v7

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    .end local v0           #availCount:J
    .end local v3           #path:Ljava/lang/String;
    .end local v4           #sdcardDir:Ljava/io/File;
    .end local v5           #sf:Landroid/os/StatFs;
    :cond_3
    move v8, v7

    .line 287
    goto :goto_0
.end method

.method private showAlertDialog(II)V
    .locals 3
    .parameter "msgText"
    .parameter "msgTitle"

    .prologue
    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 154
    .local v0, alert:Landroid/app/AlertDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 155
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setTitle(I)V

    .line 157
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 158
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mCancelListener:Lcom/mediatek/contacts/ShareContactViaSDCard$CancelListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 160
    new-instance v1, Lcom/mediatek/contacts/ShareContactViaSDCard$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/ShareContactViaSDCard$1;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCard;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 166
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 168
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSdIsVisible:Z

    .line 169
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    const v3, 0x7f0c005b

    .line 183
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v2, :cond_0

    .line 184
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, message:Ljava/lang/String;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 188
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 189
    new-instance v2, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;-><init>(Lcom/mediatek/contacts/ShareContactViaSDCard;)V

    iput-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;

    .line 190
    iget-object v2, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSearchContactThread:Lcom/mediatek/contacts/ShareContactViaSDCard$SearchContactThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 192
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "path"
    .parameter "defaultPath"

    .prologue
    .line 307
    const-string v0, "getDirectory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-nez p1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/mediatek/storage/StorageManagerEx;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/contacts/ShareContactViaSDCard;->getDirectory(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 300
    .local v0, file:Ljava/io/File;
    const-string v2, "ShareContactViaSDCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[getExternalStorageDirectory]file.path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sput-object v0, Lcom/mediatek/contacts/ShareContactViaSDCard;->sFile:Ljava/io/File;

    .line 303
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const v7, 0x7f0c004d

    const/4 v6, 0x0

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mAction:Ljava/lang/String;

    .line 104
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mLookUpUris:Ljava/lang/String;

    .line 105
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 106
    .local v1, extraUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mLookUpUris:Ljava/lang/String;

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    const-string v4, "contactId"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, contactId:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    const-string v4, "userProfile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, userProfile:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00aa

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSingleContactId:I

    .line 126
    :cond_3
    const-string v3, "ShareContactViaSDCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAction is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCard;->checkSDCardAvaliable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 129
    const v3, 0x7f0c01bb

    const v4, 0x7f0c000d

    invoke-direct {p0, v3, v4}, Lcom/mediatek/contacts/ShareContactViaSDCard;->showAlertDialog(II)V

    .line 131
    const-string v3, "ShareContactViaSDCard"

    const-string v4, "onCreate(),SDCar is Invalide!"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCard;->isSDCardFull()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 136
    invoke-direct {p0, v7, v7}, Lcom/mediatek/contacts/ShareContactViaSDCard;->showAlertDialog(II)V

    .line 137
    const-string v3, "ShareContactViaSDCard"

    const-string v4, "onCreate(),sdCard is full!"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSingleContactId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mLookUpUris:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0c00a8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 174
    iget-boolean v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSdIsVisible:Z

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "android.intent.action.SEND"

    iget-object v1, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/mediatek/contacts/ShareContactViaSDCard;->showProgressDialog()V

    .line 180
    :cond_0
    return-void
.end method

.method public shareViaSDCard(Ljava/lang/String;)V
    .locals 14
    .parameter "lookUpUris"

    .prologue
    const/4 v4, 0x0

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v6, contactsID:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 201
    .local v7, curIndex:I
    const/4 v9, 0x0

    .line 202
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 203
    .local v11, id:Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSingleContactId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 204
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/ShareContactViaSDCard;->changeLookupUrisToSelection(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 206
    .local v13, selection:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/contacts/ShareContactViaSDCard;->CONTACTS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 209
    const-string v0, "ShareContactViaSDCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v9, :cond_3

    .line 211
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    if-eqz v9, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 215
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .end local v7           #curIndex:I
    .local v8, curIndex:I
    if-eqz v7, :cond_1

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v8

    .end local v8           #curIndex:I
    .restart local v7       #curIndex:I
    goto :goto_0

    .line 218
    .end local v7           #curIndex:I
    .restart local v8       #curIndex:I
    :cond_1
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v7, v8

    .end local v8           #curIndex:I
    .restart local v7       #curIndex:I
    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 228
    .end local v13           #selection:Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .local v10, exportselection:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-class v0, Lcom/android/contacts/vcard/ExportVCardActivity;

    invoke-direct {v12, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v12, it:Landroid/content/Intent;
    const-string v0, "multi_export_type"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 233
    const-string v0, "exportselection"

    invoke-virtual {v12, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v12}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 236
    return-void

    .line 224
    .end local v10           #exportselection:Ljava/lang/String;
    .end local v12           #it:Landroid/content/Intent;
    :cond_4
    iget v0, p0, Lcom/mediatek/contacts/ShareContactViaSDCard;->mSingleContactId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 225
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
