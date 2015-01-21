.class Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;
.super Landroid/os/AsyncTask;
.source "PasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoringTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        "Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V
    .locals 1
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/PasswordSetting;Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 598
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;
    .locals 86
    .parameter "params"

    .prologue
    .line 615
    const/4 v3, 0x0

    .line 616
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v27, 0x0

    .line 617
    .local v27, cursor:Landroid/database/Cursor;
    new-instance v72, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;

    const/4 v4, 0x0

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;-><init>(Lcom/zte/heartyservice/privacy/PasswordSetting$1;)V

    .line 619
    .local v72, ret:Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;
    const/4 v4, 0x0

    :try_start_0
    aget-object v19, p1, v4

    .line 620
    .local v19, backupDirPath:Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v60, p1, v4

    .line 621
    .local v60, password:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/zte/heartyservice/privacy/RestorePrivacyHelper;->getBackupDB(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 622
    const-string v4, "publicinfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 624
    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    .line 1065
    :cond_0
    if-eqz v3, :cond_1

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_1
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    .line 1075
    .end local v19           #backupDirPath:Ljava/lang/String;
    .end local v60           #password:Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v72

    .line 627
    .restart local v19       #backupDirPath:Ljava/lang/String;
    .restart local v60       #password:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    .line 628
    const-string v4, "publicKey"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v67

    .line 630
    .local v67, publicKeyStr:Ljava/lang/String;
    if-nez v67, :cond_5

    .line 1065
    if-eqz v3, :cond_4

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_4
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto :goto_0

    .line 633
    :cond_5
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v67

    invoke-static {v0, v4, v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->readKey4Str(Ljava/lang/String;ZI)Ljava/security/Key;

    move-result-object v66

    check-cast v66, Ljava/security/PublicKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 635
    .local v66, publicKey:Ljava/security/PublicKey;
    if-nez v66, :cond_7

    .line 1065
    if-eqz v3, :cond_6

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_6
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto :goto_0

    .line 639
    :cond_7
    :try_start_3
    const-string v4, "privateKey"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v64

    .line 641
    .local v64, privateKeyStr:Ljava/lang/String;
    if-nez v64, :cond_9

    .line 1065
    if-eqz v3, :cond_8

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_8
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto :goto_0

    .line 645
    :cond_9
    const/4 v4, 0x1

    :try_start_4
    move-object/from16 v0, v64

    move-object/from16 v1, v60

    invoke-static {v0, v1, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->readKey4Str(Ljava/lang/String;Ljava/lang/String;I)Ljava/security/Key;

    move-result-object v63

    check-cast v63, Ljava/security/PrivateKey;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 647
    .local v63, privateKey:Ljava/security/PrivateKey;
    if-nez v63, :cond_b

    .line 1065
    if-eqz v3, :cond_a

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_a
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto :goto_0

    .line 651
    :cond_b
    :try_start_5
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v34

    .line 653
    .local v34, helper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    invoke-virtual/range {v34 .. v34}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 655
    .local v25, curDB:Landroid/database/sqlite/SQLiteDatabase;
    const/16 v47, 0x1

    .line 656
    .local v47, needReEncrypt:Z
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    .line 657
    .local v26, curPublicKey:Ljava/security/PublicKey;
    if-nez v26, :cond_22

    .line 658
    const/16 v47, 0x0

    .line 659
    invoke-static/range {v60 .. v60}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V

    .line 660
    const-string v4, "key_type"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    .line 662
    .local v42, key_type:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    move-object/from16 v0, v67

    move-object/from16 v1, v64

    move/from16 v2, v42

    invoke-virtual {v4, v0, v1, v2}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->saveRSAKeyPair(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_d

    .line 665
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPassword(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1065
    if-eqz v3, :cond_c

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_c
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 668
    :cond_d
    :try_start_6
    invoke-static/range {v66 .. v66}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPublicKey(Ljava/security/PublicKey;)V

    .line 669
    invoke-static/range {v42 .. v42}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPasswordType(I)V

    .line 670
    invoke-static/range {v63 .. v63}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setPrivateKey(Ljava/security/PrivateKey;)V

    .line 671
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getPrivacySQLiteOpenHelper()Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->setRSAKeyPairExist(Z)V

    .line 673
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledSmsId()V

    .line 674
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->updateMaxHandledCallId()V

    .line 679
    .end local v42           #key_type:I
    :cond_e
    :goto_1
    if-eqz v27, :cond_f

    .line 680
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 681
    const/16 v27, 0x0

    .line 683
    :cond_f
    const/16 v65, 0x0

    .line 684
    .local v65, progress:I
    const-string v4, "privacycontact"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 686
    if-eqz v27, :cond_12

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 687
    const-string v4, "ac"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 688
    .local v12, acIndex:I
    const-string v4, "cl"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 689
    .local v24, clIndex:I
    const-string v4, "name"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 690
    .local v46, nameIndex:I
    const-string v4, "number"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 691
    .local v54, numberIndex:I
    const/16 v65, 0x0

    .line 692
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a0658

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 697
    :cond_10
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 700
    add-int/lit8 v65, v65, 0x1

    .line 701
    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 702
    .local v11, ac:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isContactExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 734
    :cond_11
    :goto_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 737
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v24           #clIndex:I
    .end local v46           #nameIndex:I
    .end local v54           #numberIndex:I
    :cond_12
    if-eqz v27, :cond_13

    .line 738
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 739
    const/16 v27, 0x0

    .line 742
    :cond_13
    const-string v4, "privacysms"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 744
    if-eqz v27, :cond_16

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 745
    const-string v4, "ac"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 746
    .restart local v12       #acIndex:I
    const-string v4, "date"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 747
    .local v30, dateIndex:I
    const-string v4, "cl"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 748
    .restart local v24       #clIndex:I
    const-string v4, "address"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 749
    .local v18, addressIndex:I
    const-string v4, "read"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v69

    .line 750
    .local v69, readIndex:I
    const-string v4, "type"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v80

    .line 751
    .local v80, typeIndex:I
    const-string v4, "subject"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v76

    .line 752
    .local v76, subjectIndex:I
    const-string v4, "body"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 753
    .local v22, bodyIndex:I
    const-string v4, "sub_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v74

    .line 754
    .local v74, sub_idIndex:I
    const/16 v65, 0x0

    .line 755
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a0659

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 760
    :cond_14
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 763
    add-int/lit8 v65, v65, 0x1

    .line 764
    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 765
    .restart local v11       #ac:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 766
    .local v28, date:J
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2, v11}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isSmsExist(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 809
    :cond_15
    :goto_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_14

    .line 812
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v18           #addressIndex:I
    .end local v22           #bodyIndex:I
    .end local v24           #clIndex:I
    .end local v28           #date:J
    .end local v30           #dateIndex:I
    .end local v69           #readIndex:I
    .end local v74           #sub_idIndex:I
    .end local v76           #subjectIndex:I
    .end local v80           #typeIndex:I
    :cond_16
    if-eqz v27, :cond_17

    .line 813
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 814
    const/16 v27, 0x0

    .line 817
    :cond_17
    const-string v4, "privacycall"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 819
    if-eqz v27, :cond_1a

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 820
    const-string v4, "ac"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 821
    .restart local v12       #acIndex:I
    const-string v4, "date"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 822
    .restart local v30       #dateIndex:I
    const-string v4, "cl"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 823
    .restart local v24       #clIndex:I
    const-string v4, "number"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v54

    .line 824
    .restart local v54       #numberIndex:I
    const-string v4, "duration"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 825
    .local v32, durationIndex:I
    const-string v4, "type"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v80

    .line 826
    .restart local v80       #typeIndex:I
    const-string v4, "new"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v48

    .line 827
    .local v48, newIndex:I
    const-string v4, "mode_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v44

    .line 829
    .local v44, modeIdIndex:I
    const/16 v65, 0x0

    .line 830
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a065a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 835
    :cond_18
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 838
    add-int/lit8 v65, v65, 0x1

    .line 839
    move-object/from16 v0, v27

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 840
    .restart local v11       #ac:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    .line 841
    .restart local v28       #date:J
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, v34

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2, v11}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isCalllogExist(JLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 883
    :cond_19
    :goto_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_18

    .line 886
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v24           #clIndex:I
    .end local v28           #date:J
    .end local v30           #dateIndex:I
    .end local v32           #durationIndex:I
    .end local v44           #modeIdIndex:I
    .end local v48           #newIndex:I
    .end local v54           #numberIndex:I
    .end local v80           #typeIndex:I
    :cond_1a
    if-eqz v27, :cond_1b

    .line 887
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 888
    const/16 v27, 0x0

    .line 891
    :cond_1b
    const-string v4, "passwordprotector"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 893
    if-eqz v27, :cond_1f

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 894
    const-string v4, "key"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v41

    .line 895
    .local v41, keyIndex:I
    const-string v4, "account_type"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 897
    .local v16, account_typeIndex:I
    const-string v4, "account_description"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 899
    .local v14, account_descriptionIndex:I
    const-string v4, "user_name"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v82

    .line 900
    .local v82, user_nameIndex:I
    const-string v4, "password"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v61

    .line 901
    .local v61, passwordIndex:I
    const-string v4, "notes"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v52

    .line 903
    .local v52, notesIndex:I
    const/16 v65, 0x0

    .line 904
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a065b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 910
    :cond_1c
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 913
    add-int/lit8 v65, v65, 0x1

    .line 914
    move-object/from16 v0, v27

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 915
    .local v39, key:Ljava/lang/String;
    if-eqz v47, :cond_1d

    .line 916
    move-object/from16 v0, v39

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v40

    .line 918
    .local v40, keyData:[B
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v39

    .line 921
    .end local v40           #keyData:[B
    :cond_1d
    move-object/from16 v0, v27

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 923
    .local v13, account_description:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v13}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isPasswordRecordExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 950
    :cond_1e
    :goto_5
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 953
    .end local v13           #account_description:Ljava/lang/String;
    .end local v14           #account_descriptionIndex:I
    .end local v16           #account_typeIndex:I
    .end local v39           #key:Ljava/lang/String;
    .end local v41           #keyIndex:I
    .end local v52           #notesIndex:I
    .end local v61           #passwordIndex:I
    .end local v82           #user_nameIndex:I
    :cond_1f
    if-eqz v27, :cond_20

    .line 954
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 955
    const/16 v27, 0x0

    .line 958
    :cond_20
    const-string v4, "privacyinfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 960
    if-eqz v27, :cond_32

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 961
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SysInfo;->checkPDDir()Z

    move-result v4

    if-nez v4, :cond_2d

    .line 962
    const/4 v4, 0x1

    move-object/from16 v0, v72

    iput-boolean v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->success:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1065
    if-eqz v3, :cond_21

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_21
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 675
    .end local v65           #progress:I
    :cond_22
    :try_start_7
    move-object/from16 v0, v26

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 676
    const/16 v47, 0x0

    goto/16 :goto_1

    .line 706
    .restart local v11       #ac:Ljava/lang/String;
    .restart local v12       #acIndex:I
    .restart local v24       #clIndex:I
    .restart local v46       #nameIndex:I
    .restart local v54       #numberIndex:I
    .restart local v65       #progress:I
    :cond_23
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 707
    .local v23, cl:Ljava/lang/String;
    if-eqz v47, :cond_24

    .line 708
    move-object/from16 v0, v23

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v40

    .line 710
    .restart local v40       #keyData:[B
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v23

    .line 714
    .end local v40           #keyData:[B
    :cond_24
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 718
    move-object/from16 v0, v27

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 719
    .local v45, name:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 720
    .local v53, number:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO privacycontact (name,number,ac,cl) VALUES(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 728
    move-object/from16 v0, v72

    iget v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->contactCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v72

    iput v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->contactCount:I

    .line 729
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a0658

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v72

    iget v6, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->contactCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 1061
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v19           #backupDirPath:Ljava/lang/String;
    .end local v23           #cl:Ljava/lang/String;
    .end local v24           #clIndex:I
    .end local v25           #curDB:Landroid/database/sqlite/SQLiteDatabase;
    .end local v26           #curPublicKey:Ljava/security/PublicKey;
    .end local v34           #helper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v45           #name:Ljava/lang/String;
    .end local v46           #nameIndex:I
    .end local v47           #needReEncrypt:Z
    .end local v53           #number:Ljava/lang/String;
    .end local v54           #numberIndex:I
    .end local v60           #password:Ljava/lang/String;
    .end local v63           #privateKey:Ljava/security/PrivateKey;
    .end local v64           #privateKeyStr:Ljava/lang/String;
    .end local v65           #progress:I
    .end local v66           #publicKey:Ljava/security/PublicKey;
    .end local v67           #publicKeyStr:Ljava/lang/String;
    :catch_0
    move-exception v33

    .line 1062
    .local v33, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1065
    if-eqz v3, :cond_25

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_25
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 771
    .end local v33           #e:Ljava/lang/Exception;
    .restart local v11       #ac:Ljava/lang/String;
    .restart local v12       #acIndex:I
    .restart local v18       #addressIndex:I
    .restart local v19       #backupDirPath:Ljava/lang/String;
    .restart local v22       #bodyIndex:I
    .restart local v24       #clIndex:I
    .restart local v25       #curDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26       #curPublicKey:Ljava/security/PublicKey;
    .restart local v28       #date:J
    .restart local v30       #dateIndex:I
    .restart local v34       #helper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v47       #needReEncrypt:Z
    .restart local v60       #password:Ljava/lang/String;
    .restart local v63       #privateKey:Ljava/security/PrivateKey;
    .restart local v64       #privateKeyStr:Ljava/lang/String;
    .restart local v65       #progress:I
    .restart local v66       #publicKey:Ljava/security/PublicKey;
    .restart local v67       #publicKeyStr:Ljava/lang/String;
    .restart local v69       #readIndex:I
    .restart local v74       #sub_idIndex:I
    .restart local v76       #subjectIndex:I
    .restart local v80       #typeIndex:I
    :cond_26
    :try_start_9
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 772
    .restart local v23       #cl:Ljava/lang/String;
    if-eqz v47, :cond_27

    .line 773
    move-object/from16 v0, v23

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v40

    .line 775
    .restart local v40       #keyData:[B
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v23

    .line 779
    .end local v40           #keyData:[B
    :cond_27
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 783
    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 784
    .local v17, address:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v68

    .line 785
    .local v68, read:I
    move-object/from16 v0, v27

    move/from16 v1, v80

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v79

    .line 786
    .local v79, type:I
    move-object/from16 v0, v27

    move/from16 v1, v76

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    .line 787
    .local v75, subject:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 788
    .local v21, body:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v73

    .line 790
    .local v73, sub_id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO privacysms (address,ac,date,read,type,subject,body,sub_id,cl) VALUES(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v75

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v73

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 804
    move-object/from16 v0, v72

    iget v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->smsCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v72

    iput v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->smsCount:I

    .line 805
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a0659

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v72

    iget v6, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->smsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_3

    .line 1065
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v17           #address:Ljava/lang/String;
    .end local v18           #addressIndex:I
    .end local v19           #backupDirPath:Ljava/lang/String;
    .end local v21           #body:Ljava/lang/String;
    .end local v22           #bodyIndex:I
    .end local v23           #cl:Ljava/lang/String;
    .end local v24           #clIndex:I
    .end local v25           #curDB:Landroid/database/sqlite/SQLiteDatabase;
    .end local v26           #curPublicKey:Ljava/security/PublicKey;
    .end local v28           #date:J
    .end local v30           #dateIndex:I
    .end local v34           #helper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .end local v47           #needReEncrypt:Z
    .end local v60           #password:Ljava/lang/String;
    .end local v63           #privateKey:Ljava/security/PrivateKey;
    .end local v64           #privateKeyStr:Ljava/lang/String;
    .end local v65           #progress:I
    .end local v66           #publicKey:Ljava/security/PublicKey;
    .end local v67           #publicKeyStr:Ljava/lang/String;
    .end local v68           #read:I
    .end local v69           #readIndex:I
    .end local v73           #sub_id:I
    .end local v74           #sub_idIndex:I
    .end local v75           #subject:Ljava/lang/String;
    .end local v76           #subjectIndex:I
    .end local v79           #type:I
    .end local v80           #typeIndex:I
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_28

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_28
    if-eqz v27, :cond_29

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    :cond_29
    throw v4

    .line 846
    .restart local v11       #ac:Ljava/lang/String;
    .restart local v12       #acIndex:I
    .restart local v19       #backupDirPath:Ljava/lang/String;
    .restart local v24       #clIndex:I
    .restart local v25       #curDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v26       #curPublicKey:Ljava/security/PublicKey;
    .restart local v28       #date:J
    .restart local v30       #dateIndex:I
    .restart local v32       #durationIndex:I
    .restart local v34       #helper:Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;
    .restart local v44       #modeIdIndex:I
    .restart local v47       #needReEncrypt:Z
    .restart local v48       #newIndex:I
    .restart local v54       #numberIndex:I
    .restart local v60       #password:Ljava/lang/String;
    .restart local v63       #privateKey:Ljava/security/PrivateKey;
    .restart local v64       #privateKeyStr:Ljava/lang/String;
    .restart local v65       #progress:I
    .restart local v66       #publicKey:Ljava/security/PublicKey;
    .restart local v67       #publicKeyStr:Ljava/lang/String;
    .restart local v80       #typeIndex:I
    :cond_2a
    :try_start_a
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 847
    .restart local v23       #cl:Ljava/lang/String;
    if-eqz v47, :cond_2b

    .line 848
    move-object/from16 v0, v23

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v40

    .line 850
    .restart local v40       #keyData:[B
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v23

    .line 854
    .end local v40           #keyData:[B
    :cond_2b
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 858
    move-object/from16 v0, v27

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 859
    .restart local v53       #number:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 860
    .local v31, duration:I
    move-object/from16 v0, v27

    move/from16 v1, v80

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v79

    .line 861
    .restart local v79       #type:I
    move-object/from16 v0, v27

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    .line 862
    .local v38, is_new:I
    move-object/from16 v0, v27

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    .line 864
    .local v43, modeId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO privacycall (number,ac,date,duration,type,new,mode_Id,cl) VALUES(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v79

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v43

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 878
    move-object/from16 v0, v72

    iget v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->calllogCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v72

    iput v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->calllogCount:I

    .line 879
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a065a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v72

    iget v6, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->calllogCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 929
    .end local v11           #ac:Ljava/lang/String;
    .end local v12           #acIndex:I
    .end local v23           #cl:Ljava/lang/String;
    .end local v24           #clIndex:I
    .end local v28           #date:J
    .end local v30           #dateIndex:I
    .end local v31           #duration:I
    .end local v32           #durationIndex:I
    .end local v38           #is_new:I
    .end local v43           #modeId:I
    .end local v44           #modeIdIndex:I
    .end local v48           #newIndex:I
    .end local v53           #number:Ljava/lang/String;
    .end local v54           #numberIndex:I
    .end local v79           #type:I
    .end local v80           #typeIndex:I
    .restart local v13       #account_description:Ljava/lang/String;
    .restart local v14       #account_descriptionIndex:I
    .restart local v16       #account_typeIndex:I
    .restart local v39       #key:Ljava/lang/String;
    .restart local v41       #keyIndex:I
    .restart local v52       #notesIndex:I
    .restart local v61       #passwordIndex:I
    .restart local v82       #user_nameIndex:I
    :cond_2c
    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 931
    .local v15, account_type:I
    move-object/from16 v0, v27

    move/from16 v1, v82

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v81

    .line 932
    .local v81, user_name:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v83

    .line 933
    .local v83, user_password:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 935
    .local v51, notes:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO passwordprotector (key,account_type,account_description,user_name,password,notes) VALUES(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, v72

    iget v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->passwordRecoutCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v72

    iput v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->passwordRecoutCount:I

    .line 945
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a065b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v72

    iget v6, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->passwordRecoutCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 966
    .end local v13           #account_description:Ljava/lang/String;
    .end local v14           #account_descriptionIndex:I
    .end local v15           #account_type:I
    .end local v16           #account_typeIndex:I
    .end local v39           #key:Ljava/lang/String;
    .end local v41           #keyIndex:I
    .end local v51           #notes:Ljava/lang/String;
    .end local v52           #notesIndex:I
    .end local v61           #passwordIndex:I
    .end local v81           #user_name:Ljava/lang/String;
    .end local v82           #user_nameIndex:I
    .end local v83           #user_password:Ljava/lang/String;
    :cond_2d
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getPDPath()Ljava/lang/String;

    move-result-object v62

    .line 967
    .local v62, privacyDataPath:Ljava/lang/String;
    if-nez v62, :cond_2f

    .line 968
    const/4 v4, 0x1

    move-object/from16 v0, v72

    iput-boolean v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->success:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    .line 1065
    if-eqz v3, :cond_2e

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_2e
    if-eqz v27, :cond_2

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 971
    :cond_2f
    :try_start_b
    const-string v4, "cl"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 972
    .restart local v24       #clIndex:I
    const-string v4, "name"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v46

    .line 973
    .restart local v46       #nameIndex:I
    const-string v4, "op"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v56

    .line 974
    .local v56, opIndex:I
    const-string v4, "nn"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v50

    .line 975
    .local v50, nnIndex:I
    const-string v4, "ot"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v59

    .line 976
    .local v59, otIndex:I
    const-string v4, "hs"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 977
    .local v37, hsIndex:I
    const-string v4, "uuid"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v85

    .line 978
    .local v85, uuidIndex:I
    const-string v4, "tp"

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v78

    .line 980
    .local v78, tpIndex:I
    const/16 v65, 0x0

    .line 981
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a065c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 986
    :cond_30
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V

    .line 989
    add-int/lit8 v65, v65, 0x1

    .line 990
    move-object/from16 v0, v27

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 991
    .local v49, nn:Ljava/lang/String;
    invoke-static/range {v49 .. v49}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, v34

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/PrivacySQLiteOpenHelper;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1053
    :cond_31
    :goto_6
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_30

    .line 1056
    .end local v24           #clIndex:I
    .end local v37           #hsIndex:I
    .end local v46           #nameIndex:I
    .end local v49           #nn:Ljava/lang/String;
    .end local v50           #nnIndex:I
    .end local v56           #opIndex:I
    .end local v59           #otIndex:I
    .end local v62           #privacyDataPath:Ljava/lang/String;
    .end local v78           #tpIndex:I
    .end local v85           #uuidIndex:I
    :cond_32
    if-eqz v27, :cond_33

    .line 1057
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 1058
    const/16 v27, 0x0

    .line 1065
    :cond_33
    if-eqz v3, :cond_34

    .line 1066
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1067
    const/4 v3, 0x0

    .line 1069
    :cond_34
    if-eqz v27, :cond_35

    .line 1070
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 1071
    const/16 v27, 0x0

    .line 1074
    :cond_35
    const/4 v4, 0x1

    move-object/from16 v0, v72

    iput-boolean v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->success:Z

    goto/16 :goto_0

    .line 995
    .restart local v24       #clIndex:I
    .restart local v37       #hsIndex:I
    .restart local v46       #nameIndex:I
    .restart local v49       #nn:Ljava/lang/String;
    .restart local v50       #nnIndex:I
    .restart local v56       #opIndex:I
    .restart local v59       #otIndex:I
    .restart local v62       #privacyDataPath:Ljava/lang/String;
    .restart local v78       #tpIndex:I
    .restart local v85       #uuidIndex:I
    :cond_36
    :try_start_c
    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 996
    .restart local v23       #cl:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptStringRSA(Ljava/lang/String;Ljava/security/Key;)[B

    move-result-object v40

    .line 998
    .restart local v40       #keyData:[B
    if-eqz v47, :cond_37

    .line 999
    move-object/from16 v0, v40

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->encryStringRSA([BLjava/security/Key;)Ljava/lang/String;

    move-result-object v23

    .line 1002
    :cond_37
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1006
    move-object/from16 v0, v49

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->decryptString(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v70

    .line 1008
    .local v70, realName:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1011
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v70

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .local v20, backupFile:Ljava/io/File;
    new-instance v71, Ljava/io/File;

    move-object/from16 v0, v71

    move-object/from16 v1, v62

    move-object/from16 v2, v70

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .local v71, restoreFile:Ljava/io/File;
    invoke-virtual/range {v71 .. v71}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_38

    .line 1014
    move-object/from16 v0, v20

    move-object/from16 v1, v71

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->fileCopy(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 1020
    :cond_38
    move-object/from16 v0, v27

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1021
    .restart local v45       #name:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v55

    .line 1022
    .local v55, op:Ljava/lang/String;
    move-object/from16 v0, v27

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 1023
    .local v57, ot:J
    move-object/from16 v0, v27

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    .line 1024
    .local v35, hs:J
    move-object/from16 v0, v27

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v84

    .line 1025
    .local v84, uuid:Ljava/lang/String;
    const-string v4, "1"

    move-object/from16 v0, v84

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    const-string v4, "2"

    move-object/from16 v0, v84

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 1028
    const-string v84, "1"

    .line 1030
    :cond_39
    move-object/from16 v0, v27

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v77

    .line 1032
    .local v77, tp:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO privacyinfo (name,op,nn,ot,hs,uuid,tp,cl) VALUES(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v57

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v35

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v84

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v77

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1048
    move-object/from16 v0, v72

    iget v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->fileCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v72

    iput v4, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->fileCount:I

    .line 1049
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const v6, 0x7f0a065c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, v72

    iget v6, v0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->fileCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_6
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 598
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->doInBackground([Ljava/lang/String;)Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;)V
    .locals 7
    .parameter "result"

    .prologue
    .line 1100
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1101
    if-eqz p1, :cond_0

    iget-boolean v2, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->success:Z

    if-nez v2, :cond_1

    .line 1102
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0650

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #calls: Lcom/zte/heartyservice/privacy/PasswordSetting;->nextState()V
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$700(Lcom/zte/heartyservice/privacy/PasswordSetting;)V

    .line 1153
    return-void

    .line 1105
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1106
    .local v1, msg:Ljava/lang/StringBuilder;
    iget v2, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->contactCount:I

    if-lez v2, :cond_2

    .line 1107
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v3, 0x7f0a0653

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->contactCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    :cond_2
    iget v2, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->smsCount:I

    if-lez v2, :cond_4

    .line 1112
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1113
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_3
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v3, 0x7f0a0654

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->smsCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_4
    iget v2, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->calllogCount:I

    if-lez v2, :cond_6

    .line 1120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 1121
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    :cond_5
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v3, 0x7f0a0655

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->calllogCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    :cond_6
    iget v2, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->passwordRecoutCount:I

    if-lez v2, :cond_8

    .line 1128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 1129
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_7
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v3, 0x7f0a0656

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->passwordRecoutCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_8
    iget v2, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->fileCount:I

    if-lez v2, :cond_a

    .line 1136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_9

    .line 1137
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1139
    :cond_9
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v3, 0x7f0a0657

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;->fileCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    :cond_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-gtz v2, :cond_b

    .line 1143
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v3, 0x7f0a0652

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :goto_1
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1149
    .end local v1           #msg:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .line 1150
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1145
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #msg:Ljava/lang/StringBuilder;
    :cond_b
    const/4 v2, 0x0

    :try_start_2
    iget-object v3, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v4, 0x7f0a0651

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 598
    check-cast p1, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->onPostExecute(Lcom/zte/heartyservice/privacy/PasswordSetting$RestoreResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 604
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    #getter for: Lcom/zte/heartyservice/privacy/PasswordSetting;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/zte/heartyservice/privacy/PasswordSetting;->access$200(Lcom/zte/heartyservice/privacy/PasswordSetting;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 605
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 606
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 607
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 608
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 609
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    const v2, 0x7f0a064a

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 610
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 611
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 9
    .parameter "values"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1080
    aget-object v3, p1, v8

    check-cast v3, Ljava/lang/Integer;

    .line 1081
    .local v3, progress:Ljava/lang/Integer;
    aget-object v1, p1, v7

    check-cast v1, Ljava/lang/Integer;

    .line 1082
    .local v1, max:Ljava/lang/Integer;
    const/4 v4, 0x2

    aget-object v2, p1, v4

    check-cast v2, Ljava/lang/Integer;

    .line 1083
    .local v2, msgRes:Ljava/lang/Integer;
    const/4 v4, 0x3

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Integer;

    .line 1085
    .local v0, deal:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 1086
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1088
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_1

    .line 1089
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1091
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2

    .line 1092
    iget-object v4, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v5, p0, Lcom/zte/heartyservice/privacy/PasswordSetting$RestoringTask;->this$0:Lcom/zte/heartyservice/privacy/PasswordSetting;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/zte/heartyservice/privacy/PasswordSetting;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1095
    :cond_2
    return-void
.end method
