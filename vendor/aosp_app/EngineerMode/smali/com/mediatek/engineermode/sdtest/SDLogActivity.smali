.class public Lcom/mediatek/engineermode/sdtest/SDLogActivity;
.super Landroid/app/Activity;
.source "SDLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;,
        Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;
    }
.end annotation


# static fields
.field private static final AVAILABLESPACE:I = 0x3ffc18

.field private static final COUNT:I = 0xa

.field private static final FILECOUNT_MAX:I = 0xc8

.field private static final FILENAME:Ljava/lang/String; = "EM_SDLOG_TESTFILE"

.field private static final FODERNAME:Ljava/lang/String; = "EM_SDLog"

.field private static final LONG_TIME:I = 0x1f4

.field private static final MAP_KEY_ITEM_DESCR:Ljava/lang/String; = "item_descr"

.field private static final MAP_KEY_ITEM_TITLE:Ljava/lang/String; = "item_title"

.field private static final NO_AVAILABLE_STORAGE:Ljava/lang/String; = "No Available Storage"

.field private static final OPERATOR_TYPE:I = 0x3

.field private static final PRE_FILE_SIZE:I = 0x100

.field private static final SDLOG_TEXT:Ljava/lang/String; = "Copyright Statement:This software/firmware and related documentation MediaTek Softwareare* protected under relevant copyright laws. The information contained herein* is confidential and proprietary to MediaTek Inc. and/or its licensors.* Without the prior written permission of MediaTek inc. and/or its licensors,* any reproduction, modification, use or disclosure of MediaTek Software,* and information contained herein, in whole or in part, shall be strictly prohibited. MediaTek Inc. (C) 2010. All rights reserved** BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES* THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS (MEDIATEK SOFTWARE)* RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON* AN AS-IS BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED OF* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.* NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE* SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR* SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH* THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES* THAT IT IS RECEIVER\'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES* CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEKSOFTWARE RELEASES MADE TO RECEIVER\'S SPECIFICATION OR TO CONFORM TO A PARTICULARSTANDARD OR OPEN FORUM. RECEIVER\'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK\'S ENTIRE ANCUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,AT MEDIATEK\'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,OR REFUND ANY LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TOMEDIATEK FOR SUCH MEDIATEK  AT ISSUE.The following software/firmware and/or related documentation have been modified by MediaTek Inc. All revisions are subject to any receiver\'sapplicable license agreements with MediaTek Inc."

.field private static final SHORT_TIME:I = 0x32

.field private static final TAG:Ljava/lang/String; = "SD Log"


# instance fields
.field private mFileCount:I

.field private mFileList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLVChooseStorage:Landroid/widget/ListView;

.field private mRandom:Ljava/util/Random;

.field private mSelectedIndex:I

.field private mState:Z

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mThread:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

.field private mThreadState:Z

.field private mToggleButton:Landroid/widget/ToggleButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThreadState:Z

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    .line 338
    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getAvailStorageTags()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Ljava/lang/String;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->constructAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mLVChooseStorage:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->emptyForder(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mediatek/engineermode/sdtest/SDLogActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getRandom(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->readFile()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->deleteFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z

    return v0
.end method

.method static synthetic access$302(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createFileForder()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThread:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createAndWriteFile()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThreadState:Z

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdMounted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/sdtest/SDLogActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    return p1
.end method

.method private checkSDCard()V
    .locals 4

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdMounted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Please insert SD card!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdWriteable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SD card isn\'t writeable!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/mediatek/engineermode/sdtest/SDLogActivity$2;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$2;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 298
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdAvailableSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3ffc18

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 299
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Warning!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "SD card space < 4M!"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/mediatek/engineermode/sdtest/SDLogActivity$3;

    invoke-direct {v2, p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$3;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private constructAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;
    .locals 8
    .parameter "descr"

    .prologue
    const/4 v7, 0x2

    .line 215
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 217
    .local v6, itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "item_title"

    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v1, "item_descr"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    new-instance v0, Landroid/widget/SimpleAdapter;

    const v3, 0x7f030037

    new-array v4, v7, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "item_title"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "item_descr"

    aput-object v5, v4, v1

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 224
    .local v0, adapter:Landroid/widget/SimpleAdapter;
    return-object v0

    .line 220
    :array_0
    .array-data 0x4
        0x74t 0x1t 0xbt 0x7ft
        0x75t 0x1t 0xbt 0x7ft
    .end array-data
.end method

.method private createAndWriteFile()V
    .locals 9

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdAvailableSpace()J

    move-result-wide v5

    const-wide/32 v7, 0x3ffc18

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 404
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->emptyForder(Z)V

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdWriteable()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EM_SDLog"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "EM_SDLOG_TESTFILE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    .local v4, testFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 410
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 411
    const-string v5, "SD Log"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CreateAndWriteFile :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EM_SDLOG_TESTFILE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 417
    iget v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    .line 418
    const/4 v2, 0x0

    .line 420
    .local v2, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6

    .line 422
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .local v3, outputStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v5, 0xa

    if-ge v1, v5, :cond_2

    .line 423
    :try_start_2
    const-string v5, "Copyright Statement:This software/firmware and related documentation MediaTek Softwareare* protected under relevant copyright laws. The information contained herein* is confidential and proprietary to MediaTek Inc. and/or its licensors.* Without the prior written permission of MediaTek inc. and/or its licensors,* any reproduction, modification, use or disclosure of MediaTek Software,* and information contained herein, in whole or in part, shall be strictly prohibited. MediaTek Inc. (C) 2010. All rights reserved** BY OPENING THIS FILE, RECEIVER HEREBY UNEQUIVOCALLY ACKNOWLEDGES AND AGREES* THAT THE SOFTWARE/FIRMWARE AND ITS DOCUMENTATIONS (MEDIATEK SOFTWARE)* RECEIVED FROM MEDIATEK AND/OR ITS REPRESENTATIVES ARE PROVIDED TO RECEIVER ON* AN AS-IS BASIS ONLY. MEDIATEK EXPRESSLY DISCLAIMS ANY AND ALL WARRANTIES,* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED OF* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NONINFRINGEMENT.* NEITHER DOES MEDIATEK PROVIDE ANY WARRANTY WHATSOEVER WITH RESPECT TO THE* SOFTWARE OF ANY THIRD PARTY WHICH MAY BE USED BY, INCORPORATED IN, OR* SUPPLIED WITH THE MEDIATEK SOFTWARE, AND RECEIVER AGREES TO LOOK ONLY TO SUCH* THIRD PARTY FOR ANY WARRANTY CLAIM RELATING THERETO. RECEIVER EXPRESSLY ACKNOWLEDGES* THAT IT IS RECEIVER\'S SOLE RESPONSIBILITY TO OBTAIN FROM ANY THIRD PARTY ALL PROPER LICENSES* CONTAINED IN MEDIATEK SOFTWARE. MEDIATEK SHALL ALSO NOT BE RESPONSIBLE FOR ANY MEDIATEKSOFTWARE RELEASES MADE TO RECEIVER\'S SPECIFICATION OR TO CONFORM TO A PARTICULARSTANDARD OR OPEN FORUM. RECEIVER\'S SOLE AND EXCLUSIVE REMEDY AND MEDIATEK\'S ENTIRE ANCUMULATIVE LIABILITY WITH RESPECT TO THE MEDIATEK SOFTWARE RELEASED HEREUNDER WILL BE,AT MEDIATEK\'S OPTION, TO REVISE OR REPLACE THE MEDIATEK SOFTWARE AT ISSUE,OR REFUND ANY LICENSE FEES OR SERVICE CHARGE PAID BY RECEIVER TOMEDIATEK FOR SUCH MEDIATEK  AT ISSUE.The following software/firmware and/or related documentation have been modified by MediaTek Inc. All revisions are subject to any receiver\'sapplicable license agreements with MediaTek Inc."

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 412
    .end local v1           #i:I
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 413
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 430
    if-eqz v3, :cond_3

    .line 431
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 441
    .end local v1           #i:I
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .end local v4           #testFile:Ljava/io/File;
    :cond_3
    :goto_2
    return-void

    .line 433
    .restart local v1       #i:I
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    .restart local v4       #testFile:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 434
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    move-object v2, v3

    .line 438
    .end local v1           #i:I
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/FileNotFoundException;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 426
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #i:I
    .restart local v3       #outputStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    .line 427
    .local v0, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 430
    if-eqz v3, :cond_3

    .line 431
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 433
    :catch_4
    move-exception v0

    .line 434
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 429
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 430
    if-eqz v3, :cond_4

    .line 431
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    .line 435
    :cond_4
    :goto_4
    :try_start_a
    throw v5

    .line 433
    :catch_5
    move-exception v0

    .line 434
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_4

    .line 437
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #i:I
    .end local v3           #outputStream:Ljava/io/FileOutputStream;
    .restart local v2       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    goto :goto_3
.end method

.method private createFileForder()V
    .locals 4

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdMounted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EM_SDLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v0, testForder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 333
    const-string v1, "SD Log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFileForder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .end local v0           #testForder:Ljava/io/File;
    :cond_0
    return-void
.end method

.method private deleteFile()V
    .locals 4

    .prologue
    .line 444
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 445
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "EM_SDLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    iget-object v3, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getRandom(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v0, deleteFile:Ljava/io/File;
    const-string v1, "SD Log"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 450
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 457
    .end local v0           #deleteFile:Ljava/io/File;
    :goto_0
    return-void

    .line 452
    .restart local v0       #deleteFile:Ljava/io/File;
    :cond_0
    const-string v1, "SD Log"

    const-string v2, "deleteFile doesn\'t exist!"

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    .end local v0           #deleteFile:Ljava/io/File;
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createAndWriteFile()V

    goto :goto_0
.end method

.method private emptyForder(Z)V
    .locals 9
    .parameter "isDeleteForder"

    .prologue
    .line 311
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EM_SDLog"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v5, testForder:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 314
    .local v2, fileList:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 315
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 316
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 317
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 318
    const-string v6, "SD Log"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete File :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    if-eqz p1, :cond_2

    .line 323
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 326
    .end local v2           #fileList:[Ljava/io/File;
    :cond_2
    return-void
.end method

.method private getAvailStorageTags()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 147
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 148
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    aget-object v5, v4, v0

    invoke-virtual {v5, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 155
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private getFirstAvailStorageTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getAvailStorageTags()Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 138
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "No Available Storage"

    goto :goto_0
.end method

.method private getMountedVolumeById(I)Landroid/os/storage/StorageVolume;
    .locals 6
    .parameter "index"

    .prologue
    .line 159
    iget-object v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 160
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .line 161
    .local v1, mountedIndx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 162
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 165
    if-ne v1, p1, :cond_0

    .line 166
    aget-object v5, v4, v0

    .line 171
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 168
    .restart local v2       #path:Ljava/lang/String;
    .restart local v3       #state:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 161
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getRandom(I)I
    .locals 1
    .parameter "count"

    .prologue
    .line 497
    if-gtz p1, :cond_0

    .line 498
    const/4 v0, 0x0

    .line 501
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0
.end method

.method private getSdAvailableSpace()J
    .locals 8

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->isSdMounted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 544
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdPath()Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, sdcard:Ljava/lang/String;
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 546
    .local v3, statFs:Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 550
    .end local v2           #sdcard:Ljava/lang/String;
    .end local v3           #statFs:Landroid/os/StatFs;
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getSdPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 535
    iget v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    invoke-direct {p0, v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getMountedVolumeById(I)Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 536
    .local v0, sv:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 539
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    iput-boolean v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThreadState:Z

    .line 251
    iput v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileCount:I

    .line 252
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 253
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    .line 254
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mRandom:Ljava/util/Random;

    .line 255
    new-instance v0, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThread:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    .line 256
    return-void
.end method

.method private isSdMounted()Z
    .locals 3

    .prologue
    .line 517
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget v2, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getMountedVolumeById(I)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSdWriteable()Z
    .locals 3

    .prologue
    .line 529
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget v2, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getMountedVolumeById(I)Landroid/os/storage/StorageVolume;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private readFile()V
    .locals 9

    .prologue
    .line 460
    iget-object v6, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 461
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getSdPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "EM_SDLog"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    iget-object v8, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getRandom(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v5, readFile:Ljava/io/File;
    const-string v6, "SD Log"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFile: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 465
    const/4 v2, 0x0

    .line 467
    .local v2, inputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    .line 468
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .local v3, inputStream:Ljava/io/FileInputStream;
    const/16 v6, 0x100

    :try_start_1
    new-array v0, v6, [B
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 470
    .local v0, buffer:[B
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 471
    .local v4, len:I
    :goto_0
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 472
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    .line 478
    :cond_0
    if-eqz v3, :cond_1

    .line 479
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4           #len:I
    :cond_1
    :goto_1
    move-object v2, v3

    .line 494
    .end local v0           #buffer:[B
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .end local v5           #readFile:Ljava/io/File;
    :goto_2
    return-void

    .line 481
    .restart local v0       #buffer:[B
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #len:I
    .restart local v5       #readFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 482
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 485
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #len:I
    :catch_1
    move-exception v1

    move-object v2, v3

    .line 486
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 474
    .end local v1           #e:Ljava/io/FileNotFoundException;
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .restart local v0       #buffer:[B
    .restart local v3       #inputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 475
    .local v1, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 478
    if-eqz v3, :cond_1

    .line 479
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 481
    :catch_3
    move-exception v1

    .line 482
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 477
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 478
    if-eqz v3, :cond_2

    .line 479
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1

    .line 483
    :cond_2
    :goto_4
    :try_start_9
    throw v6

    .line 481
    :catch_4
    move-exception v1

    .line 482
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 489
    .end local v0           #buffer:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #inputStream:Ljava/io/FileInputStream;
    :cond_3
    const-string v6, "SD Log"

    const-string v7, "readFile doesn\'t exist!"

    invoke-static {v6, v7}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 492
    .end local v5           #readFile:Ljava/io/File;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createAndWriteFile()V

    goto :goto_2

    .line 485
    .restart local v2       #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #readFile:Ljava/io/File;
    :catch_5
    move-exception v1

    goto :goto_3
.end method

.method private showSingleChoiceDialog(Ljava/lang/String;Ljava/util/List;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .parameter "title"
    .parameter
    .parameter "checkedId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/DialogInterface$OnClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 204
    .local p2, itemList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/CharSequence;

    .line 205
    .local v2, items:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 206
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    aput-object v3, v2, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, p3, p4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 211
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 212
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 197
    iput p2, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    .line 198
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mLVChooseStorage:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getAvailStorageTags()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->constructAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 200
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 115
    const v1, 0x7f0b015a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;

    .line 116
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;

    invoke-direct {v2, p0, v4}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ButtonClickListener;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 118
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getFirstAvailStorageTag()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, firstStorageTag:Ljava/lang/String;
    const-string v1, "No Available Storage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const-string v1, "No Available Storage"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 124
    :cond_0
    iput v3, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    .line 125
    const v1, 0x7f0b0159

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mLVChooseStorage:Landroid/widget/ListView;

    .line 126
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mLVChooseStorage:Landroid/widget/ListView;

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->constructAdapter(Ljava/lang/String;)Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    iget-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mLVChooseStorage:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 128
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mFileList:Ljava/util/Vector;

    .line 129
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mRandom:Ljava/util/Random;

    .line 130
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->checkSDCard()V

    .line 131
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->createFileForder()V

    .line 132
    new-instance v1, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    invoke-direct {v1, p0, v4}, Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;-><init>(Lcom/mediatek/engineermode/sdtest/SDLogActivity;Lcom/mediatek/engineermode/sdtest/SDLogActivity$1;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThread:Lcom/mediatek/engineermode/sdtest/SDLogActivity$ActionThread;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 241
    iput-boolean v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mState:Z

    .line 242
    iput-boolean v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mThreadState:Z

    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->emptyForder(Z)V

    .line 244
    const-string v0, "SD Log"

    const-string v1, "DesenceSDLogActivity onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 246
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 191
    const-string v0, "SD Log"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    if-nez p3, :cond_0

    .line 179
    iget-object v0, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mToggleButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 184
    :cond_1
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->getAvailStorageTags()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->mSelectedIndex:I

    invoke-direct {p0, v0, v1, v2, p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->showSingleChoiceDialog(Ljava/lang/String;Ljava/util/List;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0159
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 236
    invoke-direct {p0}, Lcom/mediatek/engineermode/sdtest/SDLogActivity;->init()V

    .line 237
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 230
    const-string v0, "SD Log"

    const-string v1, "DesenceSDLogActivity onStop()"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method
