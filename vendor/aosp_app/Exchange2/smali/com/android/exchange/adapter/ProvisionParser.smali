.class public Lcom/android/exchange/adapter/ProvisionParser;
.super Lcom/android/exchange/adapter/Parser;
.source "ProvisionParser.java"


# instance fields
.field private mIsSupportable:Z

.field private mPolicy:Lcom/android/emailcommon/provider/Policy;

.field private mRemoteWipe:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mSecuritySyncKey:Ljava/lang/String;

.field private final mService:Lcom/android/exchange/EasSyncService;

.field private smimeRequired:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/exchange/EasSyncService;)V
    .locals 2
    .parameter "in"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/exchange/adapter/Parser;-><init>(Ljava/io/InputStream;)V

    .line 42
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 43
    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 46
    iput-boolean v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    .line 51
    iput-object p2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    .line 52
    iget-object v0, p2, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mResources:Landroid/content/res/Resources;

    .line 53
    return-void
.end method

.method private addPolicyString(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "sb"
    .parameter "res"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    return-void
.end method

.method private deviceSupportsEncryption()Z
    .locals 4

    .prologue
    .line 105
    iget-object v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v2, v2, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 107
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    .line 108
    .local v1, status:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 9
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 449
    const/4 v0, 0x1

    .line 451
    .local v0, enforceInactivityTimer:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 452
    .local v2, type:I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "characteristic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    return-void

    .line 454
    :cond_1
    if-ne v2, v7, :cond_0

    .line 455
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "parm"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 456
    const-string v4, "name"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, name:Ljava/lang/String;
    const-string v4, "value"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, value:Ljava/lang/String;
    const-string v4, "AEFrequencyValue"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 459
    if-eqz v0, :cond_0

    .line 460
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    iput v6, p2, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_0

    .line 463
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_0

    .line 466
    :cond_3
    const-string v4, "AEFrequencyType"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 468
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 469
    const/4 v0, 0x0

    goto :goto_0

    .line 471
    :cond_4
    const-string v4, "DeviceWipeThreshold"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 472
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_0

    .line 473
    :cond_5
    const-string v4, "CodewordFrequency"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    const-string v4, "MinimumPasswordLength"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 476
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 477
    :cond_6
    const-string v4, "PasswordComplexity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 479
    iput v7, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_0

    .line 481
    :cond_7
    iput v6, p2, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto/16 :goto_0
.end method

.method private parseDeviceInformation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    :goto_0
    const/16 v0, 0x496

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 579
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x486

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceInformation status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 585
    :cond_1
    return-void
.end method

.method private parsePolicies()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    :goto_0
    const/16 v0, 0x386

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 569
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x387

    if-ne v0, v1, :cond_0

    .line 570
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicy()V

    goto :goto_0

    .line 572
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 575
    :cond_1
    return-void
.end method

.method private parsePolicy()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, policyType:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x387

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 541
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 562
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 543
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy type: "

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    goto :goto_0

    .line 550
    :pswitch_2
    iget-object v1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Policy status: "

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/exchange/AbstractSyncService;->userLog([Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_3
    const-string v1, "MS-WAP-Provisioning-XML"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocXml(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_0
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionData()V

    goto :goto_0

    .line 565
    :cond_1
    return-void

    .line 541
    :pswitch_data_0
    .packed-switch 0x388
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private parseProvisionData()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 529
    :goto_0
    const/16 v0, 0x38a

    invoke-virtual {p0, v0}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 530
    iget v0, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v1, 0x38d

    if-ne v0, v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseProvisionDocWbxml()V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 536
    :cond_1
    return-void
.end method

.method private parseProvisionDocWbxml()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 113
    .local v6, policy:Lcom/android/emailcommon/provider/Policy;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v11, unsupportedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 116
    .local v5, passwordEnabled:Z
    :cond_0
    :goto_0
    const/16 v15, 0x38d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_d

    .line 117
    const/4 v10, 0x1

    .line 118
    .local v10, tagIsSupported:Z
    const/4 v7, 0x0

    .line 119
    .local v7, res:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v15, :pswitch_data_0

    .line 351
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    .line 354
    :cond_1
    :goto_1
    if-nez v10, :cond_0

    .line 355
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Policy not supported: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 356
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 122
    const/4 v5, 0x1

    .line 123
    iget v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-nez v15, :cond_1

    .line 124
    const/4 v15, 0x1

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1

    .line 129
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    goto :goto_1

    .line 132
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 133
    const/4 v15, 0x2

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    goto :goto_1

    .line 138
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    goto :goto_1

    .line 141
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    goto :goto_1

    .line 144
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    goto :goto_1

    .line 147
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    goto :goto_1

    .line 150
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    if-nez v15, :cond_2

    const/4 v15, 0x1

    :goto_2
    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    goto :goto_2

    .line 155
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    goto :goto_1

    .line 169
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    if-nez v15, :cond_1

    .line 170
    const/4 v10, 0x0

    .line 171
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v15, :sswitch_data_0

    .line 207
    :goto_3
    if-lez v7, :cond_1

    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 173
    :sswitch_0
    const v7, 0x7f050011

    .line 174
    goto :goto_3

    .line 176
    :sswitch_1
    const v7, 0x7f050012

    .line 177
    goto :goto_3

    .line 179
    :sswitch_2
    const v7, 0x7f050013

    .line 180
    goto :goto_3

    .line 182
    :sswitch_3
    const v7, 0x7f050014

    .line 183
    goto :goto_3

    .line 185
    :sswitch_4
    const v7, 0x7f050015

    .line 186
    goto :goto_3

    .line 188
    :sswitch_5
    const v7, 0x7f050016

    .line 189
    goto :goto_3

    .line 191
    :sswitch_6
    const v7, 0x7f050017

    .line 192
    goto :goto_3

    .line 194
    :sswitch_7
    const v7, 0x7f050018

    .line 195
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowHtml:Z

    goto :goto_3

    .line 198
    :sswitch_8
    const v7, 0x7f050019

    .line 199
    goto :goto_3

    .line 201
    :sswitch_9
    const v7, 0x7f05001a

    .line 202
    goto :goto_3

    .line 204
    :sswitch_a
    const v7, 0x7f05001b

    goto :goto_3

    .line 213
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    const/4 v15, 0x1

    :goto_4
    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    goto/16 :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    .line 217
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 218
    const/4 v10, 0x0

    .line 219
    const v15, 0x7f05001d

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 225
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->deviceSupportsEncryption()Z

    move-result v15

    if-nez v15, :cond_4

    .line 227
    const/4 v10, 0x0

    .line 228
    const v15, 0x7f050026

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 230
    :cond_4
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1

    .line 237
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 238
    const-string v15, "Policy requires SD card encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 240
    invoke-direct/range {p0 .. p0}, Lcom/android/exchange/adapter/ProvisionParser;->deviceSupportsEncryption()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    iget-object v15, v15, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    const-string v16, "storage"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/storage/StorageManager;

    .line 246
    .local v9, sm:Landroid/os/storage/StorageManager;
    invoke-virtual {v9}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v14

    .line 247
    .local v14, volumeList:[Landroid/os/storage/StorageVolume;
    move-object v1, v14

    .local v1, arr$:[Landroid/os/storage/StorageVolume;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_5
    if-ge v2, v3, :cond_5

    aget-object v13, v1, v2

    .line 248
    .local v13, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v13}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 249
    const/4 v10, 0x0

    .line 250
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Removable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 256
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    :cond_5
    if-eqz v10, :cond_8

    .line 258
    const-string v15, "Device supports SD card encryption"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 259
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto/16 :goto_1

    .line 253
    .restart local v13       #volume:Landroid/os/storage/StorageVolume;
    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Not Removable: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/exchange/AbstractSyncService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 263
    .end local v1           #arr$:[Landroid/os/storage/StorageVolume;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v9           #sm:Landroid/os/storage/StorageManager;
    .end local v13           #volume:Landroid/os/storage/StorageVolume;
    .end local v14           #volumeList:[Landroid/os/storage/StorageVolume;
    :cond_7
    const-string v15, "Device doesn\'t support encryption; failing"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/exchange/adapter/Parser;->log(Ljava/lang/String;)V

    .line 264
    const/4 v10, 0x0

    .line 267
    :cond_8
    const v15, 0x7f050022

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 272
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    const/4 v15, 0x1

    :goto_6
    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    goto/16 :goto_1

    :cond_9
    const/4 v15, 0x0

    goto :goto_6

    .line 279
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const/4 v15, 0x1

    :goto_7
    iput-boolean v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordRecoveryEnabled:Z

    goto/16 :goto_1

    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    .line 286
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 287
    const/4 v10, 0x0

    .line 288
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    if-nez v15, :cond_1

    .line 289
    const v15, 0x7f05001c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/exchange/adapter/ProvisionParser;->smimeRequired:Z

    goto/16 :goto_1

    .line 295
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v4

    .line 296
    .local v4, max:I
    if-lez v4, :cond_1

    .line 297
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxAttachmentSize:I

    goto/16 :goto_1

    .line 302
    .end local v4           #max:I
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    goto/16 :goto_1

    .line 309
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto/16 :goto_1

    .line 315
    :pswitch_15
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/exchange/adapter/ProvisionParser;->specifiesApplications(I)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 316
    const/4 v10, 0x0

    .line 317
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v16, 0x3b7

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 318
    const v15, 0x7f05001e

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 320
    :cond_b
    const v15, 0x7f05001f

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 327
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mMaxCalendarLookback:I

    goto/16 :goto_1

    .line 331
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v15

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mMaxEmailLookback:I

    goto/16 :goto_1

    .line 336
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/exchange/adapter/Parser;->getValue()Ljava/lang/String;

    move-result-object v12

    .line 338
    .local v12, value:Ljava/lang/String;
    const-string v15, "-1"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 339
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 340
    .restart local v4       #max:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/exchange/adapter/Parser;->tag:I

    const/16 v16, 0x3ab

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    .line 341
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxTextTruncationSize:I

    .line 342
    const v15, 0x7f050020

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 344
    :cond_c
    iput v4, v6, Lcom/android/emailcommon/provider/Policy;->mMaxHtmlTruncationSize:I

    .line 345
    const v15, 0x7f050021

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 361
    .end local v4           #max:I
    .end local v7           #res:I
    .end local v10           #tagIsSupported:Z
    .end local v12           #value:Ljava/lang/String;
    :cond_d
    if-nez v5, :cond_e

    .line 362
    const/4 v15, 0x0

    iput v15, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 365
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    .line 366
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v8, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 368
    .restart local v7       #res:I
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v7}, Lcom/android/exchange/adapter/ProvisionParser;->addPolicyString(Ljava/lang/StringBuilder;I)V

    goto :goto_9

    .line 370
    .end local v7           #res:I
    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v6, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 373
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v8           #sb:Ljava/lang/StringBuilder;
    :cond_10
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 374
    return-void

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x38e
        :pswitch_1
        :pswitch_3
        :pswitch_e
        :pswitch_10
        :pswitch_0
        :pswitch_b
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_12
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_8
        :pswitch_d
        :pswitch_a
        :pswitch_a
        :pswitch_13
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_16
        :pswitch_a
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_14
        :pswitch_a
        :pswitch_a
        :pswitch_14
        :pswitch_a
        :pswitch_15
        :pswitch_0
        :pswitch_15
    .end packed-switch

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x39b -> :sswitch_0
        0x39e -> :sswitch_1
        0x39f -> :sswitch_2
        0x3a1 -> :sswitch_3
        0x3a2 -> :sswitch_4
        0x3a3 -> :sswitch_5
        0x3a5 -> :sswitch_6
        0x3a9 -> :sswitch_7
        0x3b3 -> :sswitch_8
        0x3b4 -> :sswitch_9
        0x3b6 -> :sswitch_a
    .end sparse-switch
.end method

.method private parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 4
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 492
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    .line 493
    .local v1, type:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "characteristic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 502
    return-void

    .line 495
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 496
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, name:Ljava/lang/String;
    const-string v2, "characteristic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseCharacteristic(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)Z
    .locals 8
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 426
    const/4 v1, 0x1

    .line 428
    .local v1, passwordRequired:Z
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v3

    .line 429
    .local v3, type:I
    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "characteristic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 444
    return v1

    .line 431
    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_0

    .line 432
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 433
    .local v2, tagName:Ljava/lang/String;
    const-string v5, "parm"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 434
    const-string v5, "name"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, name:Ljava/lang/String;
    const-string v5, "4131"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 436
    const-string v5, "value"

    invoke-interface {p1, v7, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, value:Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    .locals 5
    .parameter "parser"
    .parameter "policy"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    .line 508
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wap-provisioningdoc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    :goto_0
    return-void

    .line 510
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 511
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, name:Ljava/lang/String;
    const-string v3, "characteristic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 513
    const/4 v3, 0x0

    const-string v4, "type"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    .local v0, atype:Ljava/lang/String;
    const-string v3, "SecurityPolicy"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 516
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseSecurityPolicy(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 519
    :cond_2
    const-string v3, "Registry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/android/exchange/adapter/ProvisionParser;->parseRegistry(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V

    goto :goto_0
.end method

.method private setPolicy(Lcom/android/emailcommon/provider/Policy;)V
    .locals 2
    .parameter "policy"

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowAttachments:Z

    if-eqz v1, :cond_0

    .line 95
    const v1, 0x7f050023

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->addPolicyString(Ljava/lang/StringBuilder;I)V

    .line 97
    :cond_0
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireManualSyncWhenRoaming:Z

    if-eqz v1, :cond_1

    .line 98
    const v1, 0x7f050025

    invoke-direct {p0, v0, v1}, Lcom/android/exchange/adapter/ProvisionParser;->addPolicyString(Ljava/lang/StringBuilder;I)V

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesEnforced:Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    .line 102
    return-void
.end method

.method private specifiesApplications(I)Z
    .locals 3
    .parameter "endTag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, specifiesApplications:Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 385
    iget v1, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    packed-switch v1, :pswitch_data_0

    .line 391
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .line 388
    :pswitch_1
    const/4 v0, 0x1

    .line 389
    goto :goto_0

    .line 394
    :cond_0
    return v0

    .line 385
    :pswitch_data_0
    .packed-switch 0x3b8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearUnsupportablePolicies()V
    .locals 2

    .prologue
    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    .line 77
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/emailcommon/provider/Policy;->mProtocolPoliciesUnsupported:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public getPolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    return-object v0
.end method

.method public getRemoteWipe()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    return v0
.end method

.method public getSecuritySyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    return-object v0
.end method

.method public hasSupportablePolicySet()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mPolicy:Lcom/android/emailcommon/provider/Policy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/exchange/adapter/ProvisionParser;->mIsSupportable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, res:Z
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v4

    const/16 v5, 0x385

    if-eq v4, v5, :cond_0

    .line 591
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 596
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->getValueInt()I

    move-result v1

    .line 597
    .local v1, status:I
    iget-object v4, p0, Lcom/android/exchange/adapter/ProvisionParser;->mService:Lcom/android/exchange/EasSyncService;

    const-string v5, "Provision status: "

    invoke-virtual {v4, v5, v1}, Lcom/android/exchange/AbstractSyncService;->userLog(Ljava/lang/String;I)V

    .line 598
    if-ne v1, v2, :cond_1

    move v0, v2

    .line 593
    .end local v1           #status:I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/exchange/adapter/Parser;->nextTag(I)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    .line 594
    iget v4, p0, Lcom/android/exchange/adapter/Parser;->tag:I

    sparse-switch v4, :sswitch_data_0

    .line 611
    invoke-virtual {p0}, Lcom/android/exchange/adapter/Parser;->skipTag()V

    goto :goto_0

    .restart local v1       #status:I
    :cond_1
    move v0, v3

    .line 598
    goto :goto_0

    .line 601
    .end local v1           #status:I
    :sswitch_1
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parseDeviceInformation()V

    goto :goto_0

    .line 604
    :sswitch_2
    invoke-direct {p0}, Lcom/android/exchange/adapter/ProvisionParser;->parsePolicies()V

    goto :goto_0

    .line 608
    :sswitch_3
    iput-boolean v2, p0, Lcom/android/exchange/adapter/ProvisionParser;->mRemoteWipe:Z

    goto :goto_0

    .line 614
    :cond_2
    return v0

    .line 594
    nop

    :sswitch_data_0
    .sparse-switch
        0x386 -> :sswitch_2
        0x38b -> :sswitch_0
        0x38c -> :sswitch_3
        0x496 -> :sswitch_1
    .end sparse-switch
.end method

.method parseProvisionDocXml(Ljava/lang/String;)V
    .locals 8
    .parameter "doc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v3, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v3}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 401
    .local v3, policy:Lcom/android/emailcommon/provider/Policy;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 402
    .local v1, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 403
    .local v2, parser:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v7, "UTF-8"

    invoke-interface {v2, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 404
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 405
    .local v5, type:I
    if-nez v5, :cond_0

    .line 406
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 407
    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 408
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, tagName:Ljava/lang/String;
    const-string v6, "wap-provisioningdoc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    invoke-direct {p0, v2, v3}, Lcom/android/exchange/adapter/ProvisionParser;->parseWapProvisioningDoc(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/emailcommon/provider/Policy;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v4           #tagName:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/exchange/adapter/ProvisionParser;->setPolicy(Lcom/android/emailcommon/provider/Policy;)V

    .line 419
    return-void

    .line 414
    .end local v1           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v2           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #type:I
    :catch_0
    move-exception v0

    .line 415
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method public setSecuritySyncKey(Ljava/lang/String;)V
    .locals 0
    .parameter "securitySyncKey"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/exchange/adapter/ProvisionParser;->mSecuritySyncKey:Ljava/lang/String;

    .line 65
    return-void
.end method
