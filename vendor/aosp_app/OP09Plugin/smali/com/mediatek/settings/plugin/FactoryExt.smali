.class public Lcom/mediatek/settings/plugin/FactoryExt;
.super Lcom/mediatek/settings/ext/DefaultFactoryExt;
.source "FactoryExt.java"


# static fields
.field private static final ACCOUNT_DB_PATH:Ljava/lang/String; = "/data/system/users/0/accounts.db"

.field private static final ACCOUNT_XML_PATH:Ljava/lang/String; = "/data/system/sync/accounts.xml"

.field private static final CONTACTS_PATH:Ljava/lang/String; = "/data/data/com.android.providers.contacts/databases/contacts2.db"

.field private static final CONTACTS_PROFILE_PATH:Ljava/lang/String; = "/data/data/com.android.providers.contacts/databases/profile.db"

.field private static final DATA_APP:Ljava/lang/String; = "/data/app/"

.field private static final DATA_APP_LIB:Ljava/lang/String; = "/data/app-lib/"

.field private static final DATA_ASEC:Ljava/lang/String; = "/data/asec/"

.field private static final DATA_DATA:Ljava/lang/String; = "/data/data/"

.field private static final DATA_MEDIA:Ljava/lang/String; = "/data/media/"

.field private static final DATA_USER:Ljava/lang/String; = "/data/user/"

.field private static final DELETE_LIST_FILE:Ljava/lang/String; = "/data/app/.del_list"

.field private static final INSTALL_APP_CHECKED:I = 0x2

.field private static final KEEP_LIST_FILE:Ljava/lang/String; = "/data/app/.keep_list"

.field private static final MEDIA_DATA_CHECKED:I = 0x4

.field private static final MMS_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/databases/mmssms.db"

.field private static final NOT_CHECKED:I = 0x0

.field private static final NOT_ENCRYPTED_VIEW:I = 0x0

.field private static final PACKAGES_XML:Ljava/lang/String; = "/data/system/packages.xml"

.field private static final PERSONAL_DATA_CHECKED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FactoryExt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEncryptedContainer:Landroid/widget/LinearLayout;

.field private mEraseInternalInstallApp:Landroid/view/View;

.field private mEraseInternalPersonalData:Landroid/view/View;

.field private mInstallAppCheckbox:Landroid/widget/CheckBox;

.field private mInternalEraseContainer:Landroid/widget/LinearLayout;

.field private mIsEncrypted:Z

.field private mMediaData:Landroid/view/View;

.field private mMediaDataCheckbox:Landroid/widget/CheckBox;

.field private mPersonalDataCheckbox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ext/DefaultFactoryExt;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mIsEncrypted:Z

    .line 75
    iput-object p1, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "FactoryExt"

    const-string v1, "FactoryExt"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/plugin/FactoryExt;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInstallAppCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/plugin/FactoryExt;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mMediaDataCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private getInternalStorageView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, view:Landroid/view/View;
    iget-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 82
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 83
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-object v2

    .line 86
    :pswitch_1
    const-string v3, "FactoryExt"

    const-string v4, "The device is currently encrypted"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mIsEncrypted:Z

    .line 88
    const v3, 0x7f030016

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 89
    goto :goto_0

    .line 92
    :pswitch_2
    const-string v3, "FactoryExt"

    const-string v4, "This device supports encryption but isn\'t encrypted"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mIsEncrypted:Z

    .line 94
    const v3, 0x7f030020

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 95
    const v3, 0x7f0b0086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEraseInternalPersonalData:Landroid/view/View;

    .line 96
    const v3, 0x7f0b0087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mPersonalDataCheckbox:Landroid/widget/CheckBox;

    .line 97
    const v3, 0x7f0b008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEraseInternalInstallApp:Landroid/view/View;

    .line 98
    const v3, 0x7f0b008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInstallAppCheckbox:Landroid/widget/CheckBox;

    .line 99
    const v3, 0x7f0b008d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mMediaData:Landroid/view/View;

    .line 100
    const v3, 0x7f0b008e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mMediaDataCheckbox:Landroid/widget/CheckBox;

    .line 102
    iget-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEraseInternalInstallApp:Landroid/view/View;

    new-instance v4, Lcom/mediatek/settings/plugin/FactoryExt$1;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/plugin/FactoryExt$1;-><init>(Lcom/mediatek/settings/plugin/FactoryExt;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v3, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mMediaData:Landroid/view/View;

    new-instance v4, Lcom/mediatek/settings/plugin/FactoryExt$2;

    invoke-direct {v4, p0}, Lcom/mediatek/settings/plugin/FactoryExt$2;-><init>(Lcom/mediatek/settings/plugin/FactoryExt;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEncrypted()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mIsEncrypted:Z

    return v0
.end method

.method private removeAccounts(Ljava/util/List;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v8, thirdPartyPackageTypes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 349
    .local v2, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v2}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 350
    .local v1, accountDescriptions:[Landroid/accounts/AuthenticatorDescription;
    move-object v4, v1

    .local v4, arr$:[Landroid/accounts/AuthenticatorDescription;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v5, v4, v6

    .line 351
    .local v5, desc:Landroid/accounts/AuthenticatorDescription;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-interface {p1, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 353
    iget-object v9, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    const-string v9, "FactoryExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "package name is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "type is"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 358
    .end local v5           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_1
    iget-object v9, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v3

    .line 359
    .local v3, accounts:[Landroid/accounts/Account;
    move-object v4, v3

    .local v4, arr$:[Landroid/accounts/Account;
    array-length v7, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v0, v4, v6

    .line 360
    .local v0, account:Landroid/accounts/Account;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 362
    :cond_2
    const-string v9, "FactoryExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "remove account is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v9, Lcom/mediatek/settings/plugin/FactoryExt$3;

    invoke-direct {v9, p0}, Lcom/mediatek/settings/plugin/FactoryExt$3;-><init>(Lcom/mediatek/settings/plugin/FactoryExt;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v9, v10}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 359
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 381
    .end local v0           #account:Landroid/accounts/Account;
    :cond_4
    return-void
.end method

.method private writePathFile(I)Z
    .locals 21
    .parameter "eraseInternalData"

    .prologue
    .line 156
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "(data | app | media), eraseInternalData = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v12, 0x0

    .line 158
    .local v12, keepListFile:Ljava/io/File;
    const/4 v13, 0x0

    .line 159
    .local v13, out:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 160
    .local v5, deleteListFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 161
    .local v2, deleOut:Ljava/io/FileOutputStream;
    new-instance v12, Ljava/io/File;

    .end local v12           #keepListFile:Ljava/io/File;
    const-string v18, "/data/app/.keep_list"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v12       #keepListFile:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5           #deleteListFile:Ljava/io/File;
    const-string v18, "/data/app/.del_list"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .restart local v5       #deleteListFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 164
    const-string v18, "FactoryExt"

    const-string v19, "delete keep file"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_1

    .line 166
    const-string v18, "FactoryExt"

    const-string v19, "delete keep file failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/16 v18, 0x0

    .line 286
    :cond_0
    :goto_0
    return v18

    .line 170
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 171
    const-string v18, "FactoryExt"

    const-string v19, "delete delete file"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v18

    if-nez v18, :cond_2

    .line 173
    const-string v18, "FactoryExt"

    const-string v19, "delete delete file failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/16 v18, 0x0

    goto :goto_0

    .line 178
    :cond_2
    const/16 v18, 0x7

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_11

    .line 179
    :try_start_0
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 180
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-result v18

    if-nez v18, :cond_4

    .line 181
    const-string v18, "FactoryExt"

    const-string v19, "create keepFile failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 182
    const/16 v18, 0x0

    .line 273
    if-eqz v13, :cond_3

    .line 274
    :try_start_1
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_3
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v7

    .line 281
    .local v7, exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    goto :goto_0

    .line 185
    .end local v7           #exception:Ljava/io/IOException;
    :cond_4
    :try_start_2
    new-instance v14, Ljava/io/FileOutputStream;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v14, v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 186
    .end local v13           #out:Ljava/io/FileOutputStream;
    .local v14, out:Ljava/io/FileOutputStream;
    and-int/lit8 v18, p1, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    .line 187
    :try_start_3
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 188
    .local v15, persistPath:Ljava/lang/StringBuffer;
    const-string v18, "/data/system/users/0/accounts.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    const-string v18, "/data/system/sync/accounts.xml\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    const-string v18, "/data/data/com.android.providers.contacts/databases/contacts2.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    const-string v18, "/data/data/com.android.providers.contacts/databases/profile.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v18, "/data/data/com.android.providers.telephony/databases/mmssms.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "personalData = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 196
    .end local v15           #persistPath:Ljava/lang/StringBuffer;
    :cond_5
    and-int/lit8 v18, p1, 0x2

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    .line 197
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .restart local v15       #persistPath:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .line 199
    .local v11, isThreeAppExists:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 200
    .local v16, pm:Landroid/content/pm/PackageManager;
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v10

    .line 201
    .local v10, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v17, thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageInfo;

    .line 203
    .local v9, info:Landroid/content/pm/PackageInfo;
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_6

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v18, v0

    const/high16 v19, 0x4000

    and-int v18, v18, v19

    if-nez v18, :cond_6

    .line 205
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Three APP: = /data/data/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "/data/data/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    iget-object v0, v9, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 211
    .end local v9           #info:Landroid/content/pm/PackageInfo;
    :cond_7
    if-eqz v11, :cond_9

    .line 212
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Three APP is exists : = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const-string v18, "/data/app/\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v18, "/data/app-lib/\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v18, "/data/asec/\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v18, "/data/system/packages.xml\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v18, "/data/user/\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "installAPP = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    and-int/lit8 v18, p1, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 220
    const-string v18, "/data/system/users/0/accounts.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v18, "/data/system/sync/accounts.xml\n"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Account, installAPP = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_8
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 226
    :cond_9
    and-int/lit8 v18, p1, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 227
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_c

    .line 228
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v18

    if-nez v18, :cond_c

    .line 229
    const-string v18, "FactoryExt"

    const-string v19, "create deleFile failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 230
    const/16 v18, 0x0

    .line 273
    if-eqz v14, :cond_a

    .line 274
    :try_start_4
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_a
    if-eqz v2, :cond_b

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_b
    move-object v13, v14

    .line 283
    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 280
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    .line 281
    .restart local v7       #exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 233
    .end local v7           #exception:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_c
    :try_start_5
    new-instance v3, Ljava/io/FileOutputStream;

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-direct {v3, v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 234
    .end local v2           #deleOut:Ljava/io/FileOutputStream;
    .local v3, deleOut:Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v4, delePath:Ljava/lang/StringBuffer;
    const-string v18, "/data/data/com.android.providers.contacts/databases/contacts2.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string v18, "/data/data/com.android.providers.contacts/databases/profile.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string v18, "/data/data/com.android.providers.telephony/databases/mmssms.db\n"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "delePath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 243
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/settings/plugin/FactoryExt;->removeAccounts(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    move-object v2, v3

    .end local v3           #deleOut:Ljava/io/FileOutputStream;
    .end local v4           #delePath:Ljava/lang/StringBuffer;
    .restart local v2       #deleOut:Ljava/io/FileOutputStream;
    :cond_d
    move-object v13, v14

    .line 273
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11           #isThreeAppExists:Z
    .end local v14           #out:Ljava/io/FileOutputStream;
    .end local v15           #persistPath:Ljava/lang/StringBuffer;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13       #out:Ljava/io/FileOutputStream;
    :cond_e
    :goto_2
    if-eqz v13, :cond_f

    .line 274
    :try_start_7
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_f
    if-eqz v2, :cond_10

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 286
    :cond_10
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 254
    :cond_11
    :try_start_8
    const-string v18, "FactoryExt"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "eraseInternalData = 0x11, eraseInternalData ="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v18, "FactoryExt"

    const-string v19, "write a null .keep_list file"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_e

    .line 257
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    move-result v18

    if-nez v18, :cond_e

    .line 258
    const-string v18, "FactoryExt"

    const-string v19, "create keepFile failed"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 259
    const/16 v18, 0x0

    .line 273
    if-eqz v13, :cond_12

    .line 274
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_12
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_0

    .line 280
    :catch_2
    move-exception v7

    .line 281
    .restart local v7       #exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 280
    .end local v7           #exception:Ljava/io/IOException;
    :catch_3
    move-exception v7

    .line 281
    .restart local v7       #exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 263
    .end local v7           #exception:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 264
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_a
    const-string v18, "FactoryExt"

    const-string v19, "FileNotFoundException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 266
    const/16 v18, 0x0

    .line 273
    if-eqz v13, :cond_13

    .line 274
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_13
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 280
    :catch_5
    move-exception v7

    .line 281
    .restart local v7       #exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 267
    .end local v6           #e:Ljava/io/FileNotFoundException;
    .end local v7           #exception:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 268
    .local v6, e:Ljava/io/IOException;
    :goto_4
    :try_start_c
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 270
    const/16 v18, 0x0

    .line 273
    if-eqz v13, :cond_14

    .line 274
    :try_start_d
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_14
    if-eqz v2, :cond_0

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_0

    .line 280
    :catch_7
    move-exception v7

    .line 281
    .restart local v7       #exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 272
    .end local v6           #e:Ljava/io/IOException;
    .end local v7           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 273
    :goto_5
    if-eqz v13, :cond_15

    .line 274
    :try_start_e
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 277
    :cond_15
    if-eqz v2, :cond_16

    .line 278
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 283
    :cond_16
    throw v18

    .line 280
    :catch_8
    move-exception v7

    .line 281
    .restart local v7       #exception:Ljava/io/IOException;
    const-string v18, "FactoryExt"

    const-string v19, "IOException"

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 272
    .end local v7           #exception:Ljava/io/IOException;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v2           #deleOut:Ljava/io/FileOutputStream;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v3       #deleOut:Ljava/io/FileOutputStream;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11       #isThreeAppExists:Z
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #persistPath:Ljava/lang/StringBuffer;
    .restart local v16       #pm:Landroid/content/pm/PackageManager;
    .restart local v17       #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v18

    move-object v2, v3

    .end local v3           #deleOut:Ljava/io/FileOutputStream;
    .restart local v2       #deleOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 267
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11           #isThreeAppExists:Z
    .end local v13           #out:Ljava/io/FileOutputStream;
    .end local v15           #persistPath:Ljava/lang/StringBuffer;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v6

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2           #deleOut:Ljava/io/FileOutputStream;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v3       #deleOut:Ljava/io/FileOutputStream;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11       #isThreeAppExists:Z
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #persistPath:Ljava/lang/StringBuffer;
    .restart local v16       #pm:Landroid/content/pm/PackageManager;
    .restart local v17       #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_a
    move-exception v6

    move-object v2, v3

    .end local v3           #deleOut:Ljava/io/FileOutputStream;
    .restart local v2       #deleOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 263
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11           #isThreeAppExists:Z
    .end local v13           #out:Ljava/io/FileOutputStream;
    .end local v15           #persistPath:Ljava/lang/StringBuffer;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :catch_b
    move-exception v6

    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v2           #deleOut:Ljava/io/FileOutputStream;
    .end local v13           #out:Ljava/io/FileOutputStream;
    .restart local v3       #deleOut:Ljava/io/FileOutputStream;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v11       #isThreeAppExists:Z
    .restart local v14       #out:Ljava/io/FileOutputStream;
    .restart local v15       #persistPath:Ljava/lang/StringBuffer;
    .restart local v16       #pm:Landroid/content/pm/PackageManager;
    .restart local v17       #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_c
    move-exception v6

    move-object v2, v3

    .end local v3           #deleOut:Ljava/io/FileOutputStream;
    .restart local v2       #deleOut:Ljava/io/FileOutputStream;
    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v11           #isThreeAppExists:Z
    .end local v13           #out:Ljava/io/FileOutputStream;
    .end local v15           #persistPath:Ljava/lang/StringBuffer;
    .end local v16           #pm:Landroid/content/pm/PackageManager;
    .end local v17           #thirdPartyPackages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14       #out:Ljava/io/FileOutputStream;
    :cond_17
    move-object v13, v14

    .end local v14           #out:Ljava/io/FileOutputStream;
    .restart local v13       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method


# virtual methods
.method public getCheckBoxStatus()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, status:I
    iget-object v5, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mPersonalDataCheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInstallAppCheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mMediaDataCheckbox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mPersonalDataCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    .line 130
    .local v1, data:I
    :goto_0
    iget-object v5, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInstallAppCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x2

    .line 131
    .local v0, app:I
    :goto_1
    iget-object v5, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mMediaDataCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v2, 0x4

    .line 132
    .local v2, media:I
    :goto_2
    or-int v4, v1, v0

    or-int v3, v4, v2

    .line 133
    const-string v4, "FactoryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "data = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v4, "FactoryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "app = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v4, "FactoryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "media = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v4, "FactoryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(data | app | media) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .end local v0           #app:I
    .end local v1           #data:I
    .end local v2           #media:I
    :cond_0
    iget-boolean v4, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mIsEncrypted:Z

    if-eqz v4, :cond_1

    .line 139
    const-string v4, "FactoryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The phone has encrypted: pre status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v3, 0x3

    .line 141
    const-string v4, "FactoryExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The phone has encrypted: reset status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1
    return v3

    :cond_2
    move v1, v4

    .line 129
    goto/16 :goto_0

    .restart local v1       #data:I
    :cond_3
    move v0, v4

    .line 130
    goto/16 :goto_1

    .restart local v0       #app:I
    :cond_4
    move v2, v4

    .line 131
    goto/16 :goto_2
.end method

.method public onClick(I)Z
    .locals 3
    .parameter "eraseInternalData"

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, p1}, Lcom/mediatek/settings/plugin/FactoryExt;->writePathFile(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mContext:Landroid/content/Context;

    const v2, 0x7f090128

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResetPhone(Landroid/app/Activity;IZ)V
    .locals 3
    .parameter "activity"
    .parameter "eraseInternalData"
    .parameter "eraseSdCard"

    .prologue
    .line 391
    invoke-virtual {p0, p2}, Lcom/mediatek/settings/plugin/FactoryExt;->onClick(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    :goto_0
    return-void

    .line 394
    :cond_0
    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 395
    const-string v0, "FactoryExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEraseInternalData = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEraseSdCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 p3, 0x1

    .line 398
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/mediatek/settings/ext/DefaultFactoryExt;->onResetPhone(Landroid/app/Activity;IZ)V

    goto :goto_0
.end method

.method public setLayout(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, lists:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, eraseInternalLayout:Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/FactoryExt;->getInternalStorageView()Landroid/view/View;

    move-result-object v2

    .line 293
    .local v2, internalStorageView:Landroid/view/View;
    if-eqz v2, :cond_2

    .line 294
    const-string v3, "FactoryExt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The device is currently encrypted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/mediatek/settings/plugin/FactoryExt;->isEncrypted()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-direct {p0}, Lcom/mediatek/settings/plugin/FactoryExt;->isEncrypted()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEncryptedContainer:Landroid/widget/LinearLayout;

    .line 296
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 297
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 295
    .end local v1           #i:I
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInternalEraseContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 299
    .restart local v1       #i:I
    :cond_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0}, Lcom/mediatek/settings/plugin/FactoryExt;->isEncrypted()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 301
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    .end local v1           #i:I
    :cond_2
    return-void

    .restart local v1       #i:I
    :cond_3
    move v4, v5

    .line 299
    goto :goto_2
.end method

.method public updateContentViewLayout(Landroid/view/ViewGroup;I)V
    .locals 12
    .parameter "container"
    .parameter "siberViewId"

    .prologue
    const v11, 0x7f0b0012

    const v10, 0x7f0b0011

    const/4 v9, -0x2

    const/4 v8, -0x1

    .line 310
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    .line 311
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEncryptedContainer:Landroid/widget/LinearLayout;

    if-nez v6, :cond_0

    .line 312
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEncryptedContainer:Landroid/widget/LinearLayout;

    .line 313
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 315
    .local v2, layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEncryptedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEncryptedContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setId(I)V

    .line 318
    .end local v2           #layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mEncryptedContainer:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 322
    :cond_1
    invoke-virtual {p1, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_4

    .line 323
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 324
    .local v4, siberView:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 325
    .local v3, parent:Landroid/view/ViewGroup;
    const/4 v5, -0x1

    .line 326
    .local v5, siberViewIndex:I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 327
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 328
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-ne v6, v4, :cond_5

    .line 329
    move v5, v1

    .line 333
    :cond_2
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInternalEraseContainer:Landroid/widget/LinearLayout;

    if-nez v6, :cond_3

    .line 334
    if-le v5, v8, :cond_3

    .line 335
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInternalEraseContainer:Landroid/widget/LinearLayout;

    .line 336
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .restart local v2       #layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInternalEraseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInternalEraseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setId(I)V

    .line 342
    .end local v2           #layoutParam:Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/settings/plugin/FactoryExt;->mInternalEraseContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 344
    .end local v0           #count:I
    .end local v1           #index:I
    .end local v3           #parent:Landroid/view/ViewGroup;
    .end local v4           #siberView:Landroid/view/View;
    .end local v5           #siberViewIndex:I
    :cond_4
    return-void

    .line 327
    .restart local v0       #count:I
    .restart local v1       #index:I
    .restart local v3       #parent:Landroid/view/ViewGroup;
    .restart local v4       #siberView:Landroid/view/View;
    .restart local v5       #siberViewIndex:I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
