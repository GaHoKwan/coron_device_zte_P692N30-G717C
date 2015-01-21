.class public Lcom/mediatek/contacts/list/service/CopyProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "CopyProcessor.java"


# static fields
.field private static final DATA_ALLCOLUMNS:[Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CopyMultiContacts"

.field private static final MAX_OP_COUNT_IN_ONE_BATCH:I = 0x190

.field private static final RETRYCOUNT:I = 0x14


# instance fields
.field private final mAccountDst:Landroid/accounts/Account;

.field private final mAccountSrc:Landroid/accounts/Account;

.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private volatile mIsRunning:Z

.field private final mJobId:I

.field private final mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "data7"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data8"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "data9"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "data10"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data11"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "data12"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "data13"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "data14"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "data15"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "data_sync1"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "data_sync2"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "data_sync3"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "data_sync4"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "is_additional_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->DATA_ALLCOLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/contacts/list/service/MultiChoiceService;Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;Ljava/util/List;ILandroid/accounts/Account;Landroid/accounts/Account;)V
    .locals 3
    .parameter "service"
    .parameter "listener"
    .parameter
    .parameter "jobId"
    .parameter "sourceAccount"
    .parameter "destinationAccount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/contacts/list/service/MultiChoiceService;",
            "Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/list/service/MultiChoiceRequest;",
            ">;I",
            "Landroid/accounts/Account;",
            "Landroid/accounts/Account;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p3, requests:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/list/service/MultiChoiceRequest;>;"
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    .line 101
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 102
    iput-object p2, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    .line 104
    iput-object p3, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    .line 105
    iput p4, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    .line 106
    iput-object p5, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountSrc:Landroid/accounts/Account;

    .line 107
    iput-object p6, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    .line 109
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 111
    .local v0, powerManager:Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "CopyMultiContacts"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 113
    return-void
.end method

.method private copyContactsToAccount()V
    .locals 30

    .prologue
    .line 722
    const-string v1, "CopyMultiContacts"

    const-string v2, "copyContactsToAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    if-eqz v1, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    const/16 v17, 0x0

    .line 727
    .local v17, successfulItems:I
    const/16 v21, 0x0

    .line 729
    .local v21, currentCount:I
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v29, sb:Ljava/lang/StringBuilder;
    const-string v1, "("

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    .line 732
    .local v28, request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    move-object/from16 v0, v28

    iget v1, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, ","

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 735
    .end local v28           #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    :cond_2
    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, ")"

    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, "CopyMultiContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyContactsToAccount contactIds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v20, Lcom/mediatek/contacts/util/TimingStatistics;

    const-class v1, Lcom/mediatek/contacts/list/service/CopyProcessor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v20

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/util/TimingStatistics;-><init>(Ljava/lang/String;)V

    .line 739
    .local v20, contactsProviderTiming:Lcom/mediatek/contacts/util/TimingStatistics;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v13, "_id"

    aput-object v13, v3, v7

    const/4 v7, 0x1

    const-string v13, "display_name"

    aput-object v13, v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "contact_id IN "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .line 746
    .local v27, rawContactsCursor:Landroid/database/Cursor;
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 747
    if-nez v27, :cond_6

    const/4 v5, 0x0

    .line 749
    .local v5, totalItems:I
    :goto_2
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 751
    .local v26, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v27, :cond_c

    .line 752
    const-string v1, "CopyMultiContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "copyContactsToAccount: rawContactsCursor.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v4, v21

    .line 755
    .end local v21           #currentCount:I
    .local v4, currentCount:I
    :cond_3
    :goto_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 756
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    if-eqz v1, :cond_7

    .line 757
    const-string v1, "CopyMultiContacts"

    const-string v2, "runInternal run: mCanceled = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_4
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 828
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 830
    :try_start_0
    const-string v1, "CopyMultiContacts"

    const-string v2, "Before end applyBatch. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 832
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    move-object/from16 v0, v26

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 833
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 834
    const-string v1, "CopyMultiContacts"

    const-string v2, "After end applyBatch "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 840
    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 842
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    if-eqz v1, :cond_d

    .line 843
    const-string v1, "CopyMultiContacts"

    const-string v2, "runInternal run: mCanceled = true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    sub-int v18, v5, v17

    move/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onCanceled(IIIII)V

    .line 847
    if-eqz v27, :cond_0

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 848
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 747
    .end local v4           #currentCount:I
    .end local v5           #totalItems:I
    .end local v26           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v21       #currentCount:I
    :cond_6
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto/16 :goto_2

    .line 760
    .end local v21           #currentCount:I
    .restart local v4       #currentCount:I
    .restart local v5       #totalItems:I
    .restart local v26       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_7
    add-int/lit8 v4, v4, 0x1

    .line 761
    const/4 v1, 0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 763
    .local v6, displayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    invoke-virtual/range {v1 .. v6}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 766
    const/4 v1, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 768
    .local v24, nOldRawContactId:J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/mediatek/contacts/list/service/CopyProcessor;->DATA_ALLCOLUMNS:[Ljava/lang/String;

    const-string v10, "raw_contact_id=? "

    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 771
    .local v8, dataCursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 773
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_8

    .line 774
    const-string v1, "CopyMultiContacts"

    const-string v2, "dataCursor is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 779
    :cond_8
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 780
    .local v19, backRef:I
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 782
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 783
    const-string v1, "account_name"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 784
    const-string v1, "account_type"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 788
    :goto_5
    const-string v1, "aggregation_mode"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 790
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const/4 v1, -0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 793
    invoke-interface {v8}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v10

    .line 794
    .local v10, columnNames:[Ljava/lang/String;
    :cond_9
    :goto_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 796
    const-string v1, "mimetype"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 797
    .local v11, mimeType:Ljava/lang/String;
    const-string v1, "CopyMultiContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimeType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 801
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 803
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    check-cast v1, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v12

    .line 804
    .local v12, slotId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountSrc:Landroid/accounts/Account;

    iget-object v13, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/mediatek/contacts/list/service/CopyProcessor;->generateDataBuilder(Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 807
    const-string v1, "raw_contact_id"

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 808
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 786
    .end local v10           #columnNames:[Ljava/lang/String;
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #slotId:I
    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v9, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_5

    .line 810
    .restart local v10       #columnNames:[Ljava/lang/String;
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 811
    add-int/lit8 v17, v17, 0x1

    .line 812
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x190

    if-le v1, v2, :cond_3

    .line 814
    :try_start_1
    const-string v1, "CopyMultiContacts"

    const-string v2, "Before applyBatch. "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "com.android.contacts"

    move-object/from16 v0, v26

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 817
    invoke-virtual/range {v20 .. v20}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 818
    const-string v1, "CopyMultiContacts"

    const-string v2, "After applyBatch "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 824
    :goto_7
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 819
    :catch_0
    move-exception v22

    .line 820
    .local v22, e:Landroid/os/RemoteException;
    const-string v1, "CopyMultiContacts"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 821
    .end local v22           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v22

    .line 822
    .local v22, e:Landroid/content/OperationApplicationException;
    const-string v1, "CopyMultiContacts"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 835
    .end local v6           #displayName:Ljava/lang/String;
    .end local v8           #dataCursor:Landroid/database/Cursor;
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #columnNames:[Ljava/lang/String;
    .end local v19           #backRef:I
    .end local v22           #e:Landroid/content/OperationApplicationException;
    .end local v24           #nOldRawContactId:J
    :catch_2
    move-exception v22

    .line 836
    .local v22, e:Landroid/os/RemoteException;
    const-string v1, "CopyMultiContacts"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 837
    .end local v22           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v22

    .line 838
    .local v22, e:Landroid/content/OperationApplicationException;
    const-string v1, "CopyMultiContacts"

    const-string v2, "%s: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    const/4 v7, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .end local v4           #currentCount:I
    .end local v22           #e:Landroid/content/OperationApplicationException;
    .restart local v21       #currentCount:I
    :cond_c
    move/from16 v4, v21

    .line 854
    .end local v21           #currentCount:I
    .restart local v4       #currentCount:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    move/from16 v0, v17

    if-ne v0, v5, :cond_e

    const/4 v1, 0x1

    :goto_8
    invoke-virtual {v2, v3, v1}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 855
    move/from16 v0, v17

    if-ne v0, v5, :cond_f

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    invoke-virtual {v1, v2, v3, v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFinished(III)V

    .line 862
    :goto_9
    const-string v1, "CopyMultiContacts"

    const-string v2, "copyContactsToAccount: end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "copyContactsToAccount():ContactsProviderTiming"

    aput-object v3, v1, v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/util/TimingStatistics;->log([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 854
    :cond_e
    const/4 v1, 0x0

    goto :goto_8

    .line 858
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    sub-int v18, v5, v17

    move/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFailed(IIIII)V

    goto :goto_9
.end method

.method private copyContactsToSim()V
    .locals 94

    .prologue
    .line 169
    const/4 v8, 0x0

    .line 172
    .local v8, errorCause:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    move-object/from16 v52, v0

    check-cast v52, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 173
    .local v52, account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[copyContactsToSim]AccountName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|accountType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual/range {v52 .. v52}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v19

    .line 176
    .local v19, dstSlotId:I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v59

    .line 177
    .local v59, dstSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v59, :cond_0

    move-object/from16 v0, v59

    iget-wide v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    move-wide/from16 v40, v0

    .line 178
    .local v40, dstSimId:J
    :goto_0
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[copyContactsToSim]dstSlotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|dstSimId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v40

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v73

    .line 180
    .local v73, isTargetUsim:Z
    if-eqz v73, :cond_1

    const-string v42, "USIM"

    .line 181
    .local v42, dstSimType:Ljava/lang/String;
    :goto_1
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[copyContactsToSim]dstSimType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 184
    const/4 v8, 0x3

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual/range {v2 .. v8}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFailed(IIIIII)V

    .line 712
    :goto_2
    return-void

    .line 177
    .end local v40           #dstSimId:J
    .end local v42           #dstSimType:Ljava/lang/String;
    .end local v73           #isTargetUsim:Z
    :cond_0
    const-wide/16 v40, -0x1

    goto :goto_0

    .line 180
    .restart local v40       #dstSimId:J
    .restart local v73       #isTargetUsim:Z
    :cond_1
    const-string v42, "SIM"

    goto :goto_1

    .line 191
    .restart local v42       #dstSimType:Ljava/lang/String;
    :cond_2
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v25, numberArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v16, additionalNumberArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v63, emailArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v26, phoneTypeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v17, additionalTypeArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v80, nicknameArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v92, 0x0

    .line 205
    .local v92, targetName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 239
    .local v9, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    .line 240
    .local v6, totalItems:I
    const/16 v49, 0x0

    .line 241
    .local v49, successfulItems:I
    const/4 v5, 0x0

    .line 242
    .local v5, currentCount:I
    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getIccCardEmailCount(I)I

    move-result v68

    .line 244
    .local v68, iccCardMaxEmailCount:I
    const/16 v72, 0x0

    .line 245
    .local v72, isSimStorageFull:Z
    new-instance v84, Ljava/util/ArrayList;

    invoke-direct/range {v84 .. v84}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v84, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v69, Lcom/mediatek/contacts/util/TimingStatistics;

    const-class v2, Lcom/mediatek/contacts/list/service/CopyProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v69

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;-><init>(Ljava/lang/String;)V

    .line 247
    .local v69, iccProviderTiming:Lcom/mediatek/contacts/util/TimingStatistics;
    new-instance v58, Lcom/mediatek/contacts/util/TimingStatistics;

    const-class v2, Lcom/mediatek/contacts/list/service/CopyProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v58

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;-><init>(Ljava/lang/String;)V

    .line 248
    .local v58, contactsProviderTiming:Lcom/mediatek/contacts/util/TimingStatistics;
    new-instance v55, Lcom/mediatek/contacts/util/TimingStatistics;

    const-class v2, Lcom/mediatek/contacts/list/service/CopyProcessor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v55

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;-><init>(Ljava/lang/String;)V

    .line 249
    .local v55, checkStatusTiming:Lcom/mediatek/contacts/util/TimingStatistics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v67

    .local v67, i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v67 .. v67}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;

    .line 250
    .local v87, request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    if-eqz v2, :cond_7

    .line 674
    .end local v87           #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    :cond_4
    :goto_4
    invoke-virtual/range {v84 .. v84}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 676
    :try_start_0
    const-string v2, "CopyMultiContacts"

    const-string v3, "Before end applyBatch. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 679
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 680
    const-string v2, "com.android.contacts"

    move-object/from16 v0, v84

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 681
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 683
    :cond_5
    const-string v2, "CopyMultiContacts"

    const-string v3, "After end applyBatch "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_3

    .line 689
    :goto_5
    invoke-virtual/range {v84 .. v84}, Ljava/util/ArrayList;->clear()V

    .line 692
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    if-eqz v2, :cond_36

    .line 693
    const-string v2, "CopyMultiContacts"

    const-string v3, "copyContactsToSim run: mCanceled = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v8, 0x2

    .line 695
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    move/from16 v47, v0

    sub-int v50, v6, v49

    move/from16 v48, v6

    invoke-virtual/range {v45 .. v50}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onCanceled(IIIII)V

    goto/16 :goto_2

    .line 254
    .restart local v87       #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    :cond_7
    invoke-virtual/range {v55 .. v55}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 255
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 256
    :cond_8
    const-string v2, "CopyMultiContacts"

    const-string v3, "copyContactsToSim run: sim not ready"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v8, 0x1

    .line 258
    invoke-virtual/range {v84 .. v84}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    .line 261
    :cond_9
    invoke-virtual/range {v55 .. v55}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 263
    add-int/lit8 v5, v5, 0x1

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    move-object/from16 v0, v87

    iget-object v7, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactName:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onProcessed(IIIILjava/lang/String;)V

    .line 269
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 270
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 273
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 274
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 276
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->clear()V

    .line 277
    const/16 v92, 0x0

    .line 279
    move-object/from16 v0, v87

    iget v0, v0, Lcom/mediatek/contacts/list/service/MultiChoiceRequest;->mContactId:I

    move/from16 v57, v0

    .line 282
    .local v57, contactId:I
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v57

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "data"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 285
    .local v10, dataUri:Landroid/net/Uri;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v86, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v86, v2

    const/4 v2, 0x1

    const-string v3, "mimetype"

    aput-object v3, v86, v2

    const/4 v2, 0x2

    const-string v3, "data1"

    aput-object v3, v86, v2

    const/4 v2, 0x3

    const-string v3, "is_additional_number"

    aput-object v3, v86, v2

    .line 294
    .local v86, projection:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "ExtensionForAAS"

    move-object/from16 v0, v86

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/contacts/ext/ContactAccountExtension;->getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v85

    .line 296
    .local v85, plugProjection:[Ljava/lang/String;
    move-object/from16 v0, v85

    array-length v2, v0

    add-int/lit8 v2, v2, 0x2

    new-array v11, v2, [Ljava/lang/String;

    .line 297
    .local v11, dataViewProject:[Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v85

    array-length v4, v0

    move-object/from16 v0, v85

    invoke-static {v0, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name_raw_contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "raw_contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    move-object/from16 v0, v85

    array-length v4, v0

    const/4 v7, 0x2

    invoke-static {v2, v3, v11, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 301
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v54

    .line 302
    .local v54, c:Landroid/database/Cursor;
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 305
    if-eqz v54, :cond_d

    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 307
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    .line 308
    .local v78, mimeType:Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v78

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 310
    const/4 v2, 0x2

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v81

    .line 312
    .local v81, number:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    .line 313
    .local v71, isAdditionalNumber:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    const-string v3, "ExtensionForAAS"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v70

    .line 315
    .local v70, isAasEnabled:Z
    const/4 v2, 0x1

    move/from16 v0, v71

    if-ne v0, v2, :cond_11

    .line 316
    move-object/from16 v0, v16

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    if-eqz v70, :cond_b

    .line 318
    const/4 v2, 0x4

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    .end local v70           #isAasEnabled:Z
    .end local v71           #isAdditionalNumber:I
    .end local v81           #number:Ljava/lang/String;
    :cond_b
    :goto_6
    if-eqz v73, :cond_c

    .line 335
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v78

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-lez v68, :cond_13

    .line 337
    const/4 v2, 0x2

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 338
    .local v62, email:Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v62           #email:Ljava/lang/String;
    :cond_c
    :goto_7
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 393
    .end local v78           #mimeType:Ljava/lang/String;
    :cond_d
    if-eqz v54, :cond_e

    .line 394
    invoke-interface/range {v54 .. v54}, Landroid/database/Cursor;->close()V

    .line 399
    :cond_e
    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v60

    .line 400
    .local v60, dstSimUri:Landroid/net/Uri;
    invoke-static/range {v92 .. v92}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v77, 0x0

    .line 402
    .local v77, maxCount:I
    :goto_8
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v2

    const-string v3, "ExtensionForAAS"

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Lcom/android/contacts/ext/ContactDetailExtension;->getAdditionNumberCount(ILjava/lang/String;)I

    move-result v18

    .line 407
    .local v18, maxAnrCount:I
    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getAnrCount(I)I

    move-result v93

    .line 409
    .local v93, usimMaxAnrCount:I
    if-eqz v73, :cond_19

    .line 410
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v82

    .line 411
    .local v82, numberCount:I
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v53

    .line 412
    .local v53, additionalCount:I
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v64

    .line 414
    .local v64, emailCount:I
    move/from16 v0, v77

    move/from16 v1, v53

    if-le v0, v1, :cond_15

    .line 415
    :goto_9
    move/from16 v0, v77

    move/from16 v1, v64

    if-le v0, v1, :cond_16

    .line 418
    :goto_a
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "ExtensionForAAS"

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 420
    add-int v2, v82, v53

    int-to-double v2, v2

    const-wide/high16 v12, 0x3ff0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v12, v12, v21

    div-double/2addr v2, v12

    move/from16 v0, v18

    int-to-float v4, v0

    float-to-double v12, v4

    const-wide/high16 v21, 0x3ff0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v23, v0

    add-double v21, v21, v23

    div-double v12, v12, v21

    add-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v83, v0

    .line 422
    .local v83, numberQuota:I
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxAnr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; numberQuota="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v83

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_b
    move/from16 v0, v77

    move/from16 v1, v83

    if-le v0, v1, :cond_18

    .line 445
    .end local v53           #additionalCount:I
    .end local v64           #emailCount:I
    .end local v83           #numberQuota:I
    :goto_c
    const/16 v89, 0x0

    .line 446
    .local v89, sameNameCount:I
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 447
    .local v15, values:Landroid/content/ContentValues;
    const/16 v35, 0x0

    .line 448
    .local v35, simTag:Ljava/lang/String;
    const/16 v36, 0x0

    .line 449
    .local v36, simNum:Ljava/lang/String;
    const/16 v38, 0x0

    .line 450
    .local v38, simAnrNum:Ljava/lang/String;
    const/16 v90, 0x0

    .line 452
    .local v90, simEmail:Ljava/lang/String;
    const/16 v32, 0x0

    .line 455
    .local v32, simNickname:Ljava/lang/String;
    if-lez v89, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v92

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v89

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 456
    :goto_d
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v35, ""

    .line 457
    :cond_f
    if-eqz v35, :cond_10

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c

    :cond_10
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 459
    const-string v2, "CopyMultiContacts"

    const-string v3, " name and number are empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v8, 0x1

    .line 461
    goto/16 :goto_3

    .line 321
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v18           #maxAnrCount:I
    .end local v32           #simNickname:Ljava/lang/String;
    .end local v35           #simTag:Ljava/lang/String;
    .end local v36           #simNum:Ljava/lang/String;
    .end local v38           #simAnrNum:Ljava/lang/String;
    .end local v60           #dstSimUri:Landroid/net/Uri;
    .end local v77           #maxCount:I
    .end local v82           #numberCount:I
    .end local v89           #sameNameCount:I
    .end local v90           #simEmail:Ljava/lang/String;
    .end local v93           #usimMaxAnrCount:I
    .restart local v70       #isAasEnabled:Z
    .restart local v71       #isAdditionalNumber:I
    .restart local v78       #mimeType:Ljava/lang/String;
    .restart local v81       #number:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, v25

    move-object/from16 v1, v81

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    if-eqz v70, :cond_b

    .line 323
    const/4 v2, 0x4

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 327
    .end local v70           #isAasEnabled:Z
    .end local v71           #isAdditionalNumber:I
    .end local v81           #number:Ljava/lang/String;
    :cond_12
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v78

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "name_raw_contact_id"

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "raw_contact_id"

    move-object/from16 v0, v54

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v54

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v2, v3, :cond_b

    .line 331
    const/4 v2, 0x2

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v92

    goto/16 :goto_6

    .line 385
    :cond_13
    invoke-static/range {v78 .. v78}, Lcom/mediatek/contacts/extension/aassne/SneExt;->isNickname(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 386
    const/4 v2, 0x2

    move-object/from16 v0, v54

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    .line 387
    .local v79, nickName:Ljava/lang/String;
    move-object/from16 v0, v80

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 400
    .end local v78           #mimeType:Ljava/lang/String;
    .end local v79           #nickName:Ljava/lang/String;
    .restart local v60       #dstSimUri:Landroid/net/Uri;
    :cond_14
    const/16 v77, 0x1

    goto/16 :goto_8

    .restart local v18       #maxAnrCount:I
    .restart local v53       #additionalCount:I
    .restart local v64       #emailCount:I
    .restart local v77       #maxCount:I
    .restart local v82       #numberCount:I
    .restart local v93       #usimMaxAnrCount:I
    :cond_15
    move/from16 v77, v53

    .line 414
    goto/16 :goto_9

    :cond_16
    move/from16 v77, v64

    .line 415
    goto/16 :goto_a

    .line 429
    :cond_17
    add-int v2, v82, v53

    int-to-double v2, v2

    const-wide/high16 v12, 0x3ff0

    move/from16 v0, v93

    int-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v12, v12, v21

    div-double/2addr v2, v12

    move/from16 v0, v93

    int-to-float v4, v0

    float-to-double v12, v4

    const-wide/high16 v21, 0x3ff0

    move/from16 v0, v93

    int-to-double v0, v0

    move-wide/from16 v23, v0

    add-double v21, v21, v23

    div-double v12, v12, v21

    add-double/2addr v2, v12

    double-to-int v0, v2

    move/from16 v83, v0

    .restart local v83       #numberQuota:I
    goto/16 :goto_b

    :cond_18
    move/from16 v77, v83

    .line 435
    goto/16 :goto_c

    .line 437
    .end local v53           #additionalCount:I
    .end local v64           #emailCount:I
    .end local v82           #numberCount:I
    .end local v83           #numberQuota:I
    :cond_19
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 439
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 441
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 442
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v82

    .line 443
    .restart local v82       #numberCount:I
    move/from16 v0, v77

    move/from16 v1, v82

    if-le v0, v1, :cond_1a

    :goto_e
    goto/16 :goto_c

    :cond_1a
    move/from16 v77, v82

    goto :goto_e

    .restart local v15       #values:Landroid/content/ContentValues;
    .restart local v32       #simNickname:Ljava/lang/String;
    .restart local v35       #simTag:Ljava/lang/String;
    .restart local v36       #simNum:Ljava/lang/String;
    .restart local v38       #simAnrNum:Ljava/lang/String;
    .restart local v89       #sameNameCount:I
    .restart local v90       #simEmail:Ljava/lang/String;
    :cond_1b
    move-object/from16 v35, v92

    .line 455
    goto/16 :goto_d

    .line 464
    :cond_1c
    const/16 v91, 0x0

    .line 466
    .local v91, subContact:I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v20, anrsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ext/Anr;>;"
    const/16 v66, 0x0

    .local v66, i:I
    :goto_f
    move/from16 v0, v66

    move/from16 v1, v77

    if-ge v0, v1, :cond_26

    .line 469
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 470
    const-string v2, "tag"

    move-object/from16 v0, v35

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyContactsToSim tag is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v36, 0x0

    .line 473
    const/16 v38, 0x0

    .line 474
    const/16 v90, 0x0

    .line 475
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 476
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v36

    .end local v36           #simNum:Ljava/lang/String;
    check-cast v36, Ljava/lang/String;

    .line 477
    .restart local v36       #simNum:Ljava/lang/String;
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v36, ""

    .line 478
    :goto_10
    const-string v2, "number"

    invoke-static/range {v36 .. v36}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyContactsToSim number is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "ExtensionForAAS"

    move-object/from16 v0, v26

    invoke-virtual {v2, v3, v0, v4}, Lcom/android/contacts/ext/ContactListExtension;->checkPhoneTypeArray(Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 488
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 490
    if-eqz v73, :cond_25

    .line 491
    const-string v2, "CopyMultiContacts"

    const-string v3, "copyContactsToSim copy to USIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 496
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v13, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const-string v21, "ExtensionForAAS"

    invoke-virtual/range {v12 .. v21}, Lcom/android/contacts/ext/ContactAccountExtension;->buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 509
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v93

    if-ge v2, v0, :cond_1f

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v76

    .line 510
    .local v76, loop:I
    :goto_11
    const/16 v74, 0x0

    .local v74, j:I
    :goto_12
    move/from16 v0, v74

    move/from16 v1, v76

    if-ge v0, v1, :cond_21

    .line 511
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #simAnrNum:Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .line 512
    .restart local v38       #simAnrNum:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    const-string v38, ""

    .line 513
    :goto_13
    const-string v2, "anr"

    invoke-static/range {v38 .. v38}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    add-int/lit8 v74, v74, 0x1

    goto :goto_12

    .line 477
    .end local v74           #j:I
    .end local v76           #loop:I
    :cond_1e
    const-string v2, "-"

    const-string v3, ""

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_10

    :cond_1f
    move/from16 v76, v93

    .line 509
    goto :goto_11

    .line 512
    .restart local v74       #j:I
    .restart local v76       #loop:I
    :cond_20
    const-string v2, "-"

    const-string v3, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    goto :goto_13

    .line 515
    :cond_21
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 516
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 517
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 547
    .end local v74           #j:I
    .end local v76           #loop:I
    :cond_22
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 548
    const/4 v2, 0x0

    move-object/from16 v0, v63

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v90

    .end local v90           #simEmail:Ljava/lang/String;
    check-cast v90, Ljava/lang/String;

    .line 549
    .restart local v90       #simEmail:Ljava/lang/String;
    invoke-static/range {v90 .. v90}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v90, ""

    .line 550
    :cond_23
    const-string v2, "emails"

    move-object/from16 v0, v90

    invoke-virtual {v15, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyContactsToSim emails is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v90

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_24
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v33, "ExtensionForSNE"

    move-object/from16 v29, v15

    move-object/from16 v30, v80

    move/from16 v31, v19

    invoke-virtual/range {v27 .. v33}, Lcom/android/contacts/ext/ContactListExtension;->buildSimNickname(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 562
    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 666
    :cond_26
    :goto_14
    if-lez v91, :cond_27

    .line 667
    add-int/lit8 v49, v49, 0x1

    .line 669
    :cond_27
    if-eqz v72, :cond_3

    goto/16 :goto_4

    .line 521
    :cond_28
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 524
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v0, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v30, "ExtensionForAAS"

    move-object/from16 v24, v15

    move/from16 v27, v18

    move/from16 v28, v19

    move-object/from16 v29, v20

    invoke-virtual/range {v21 .. v30}, Lcom/android/contacts/ext/ContactAccountExtension;->buildValuesForSim(Ljava/lang/String;Landroid/content/Context;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 537
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v93

    if-ge v2, v0, :cond_29

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v76

    .line 538
    .restart local v76       #loop:I
    :goto_15
    const/16 v75, 0x0

    .local v75, k:I
    :goto_16
    move/from16 v0, v75

    move/from16 v1, v76

    if-ge v0, v1, :cond_22

    .line 539
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38           #simAnrNum:Ljava/lang/String;
    check-cast v38, Ljava/lang/String;

    .line 540
    .restart local v38       #simAnrNum:Ljava/lang/String;
    invoke-static/range {v38 .. v38}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v38, ""

    .line 541
    :goto_17
    const-string v2, "anr"

    invoke-static/range {v38 .. v38}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    add-int/lit8 v75, v75, 0x1

    goto :goto_16

    .end local v75           #k:I
    .end local v76           #loop:I
    :cond_29
    move/from16 v76, v93

    .line 537
    goto :goto_15

    .line 540
    .restart local v75       #k:I
    .restart local v76       #loop:I
    :cond_2a
    const-string v2, "-"

    const-string v3, ""

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v38

    goto :goto_17

    .line 565
    .end local v75           #k:I
    .end local v76           #loop:I
    :cond_2b
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before insert Sim card. values="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 567
    move-object/from16 v0, v60

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v88

    .line 568
    .local v88, retUri:Landroid/net/Uri;
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 569
    const-string v2, "CopyMultiContacts"

    const-string v3, "After insert Sim card."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retUri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v88

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    if-eqz v88, :cond_35

    .line 573
    invoke-virtual/range {v88 .. v88}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v56

    .line 574
    .local v56, checkUriPathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "error"

    const/4 v3, 0x0

    move-object/from16 v0, v56

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 575
    const/4 v2, 0x1

    move-object/from16 v0, v56

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/String;

    .line 576
    .local v65, errorCode:Ljava/lang/String;
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/CopyProcessor;->printSimErrorDetails(Ljava/lang/String;)V

    .line 580
    const/4 v2, 0x6

    if-eq v8, v2, :cond_2c

    .line 581
    const/4 v8, 0x1

    .line 583
    :cond_2c
    const-string v2, "-3"

    const/4 v3, 0x1

    move-object/from16 v0, v56

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 584
    const/4 v8, -0x3

    .line 585
    const/16 v72, 0x1

    .line 586
    const-string v2, "CopyMultiContacts"

    const-string v3, "Fail to insert sim contacts fail because sim storage is full."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 589
    :cond_2d
    const-string v2, "-12"

    const/4 v3, 0x1

    move-object/from16 v0, v56

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 590
    const/4 v8, 0x6

    .line 591
    const-string v2, "CopyMultiContacts"

    const-string v3, "Fail to save USIM email  because emial slot is full in USIM."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string v2, "CopyMultiContacts"

    const-string v3, "Ignore this error and remove the email address to save this item again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const-string v2, "emails"

    invoke-virtual {v15, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 597
    move-object/from16 v0, v60

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v88

    .line 598
    invoke-virtual/range {v69 .. v69}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 599
    const-string v2, "CopyMultiContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Save Again]The retUri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v88

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    if-eqz v88, :cond_2e

    const-string v2, "error"

    invoke-virtual/range {v88 .. v88}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 601
    const-string v2, "-3"

    invoke-virtual/range {v88 .. v88}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 602
    const/4 v8, -0x3

    .line 603
    const/16 v72, 0x1

    .line 604
    const-string v2, "CopyMultiContacts"

    const-string v3, "Fail to insert sim contacts fail because sim storage is full."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 609
    :cond_2e
    if-eqz v88, :cond_30

    const-string v2, "error"

    invoke-virtual/range {v88 .. v88}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 610
    invoke-static/range {v88 .. v88}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v43

    .line 616
    .local v43, indexInSim:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    move-object/from16 v34, v0

    const/16 v37, 0x0

    const/16 v45, 0x0

    move-object/from16 v33, v84

    move-object/from16 v39, v9

    move-object/from16 v46, v20

    move-object/from16 v47, v32

    invoke-static/range {v33 .. v47}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    move-object/from16 v34, v0

    const/16 v37, 0x0

    const/16 v45, 0x0

    move-object/from16 v33, v84

    move-object/from16 v39, v9

    invoke-static/range {v33 .. v45}, Lcom/mediatek/contacts/SubContactsUtils;->buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;)V

    .line 623
    :cond_2f
    add-int/lit8 v91, v91, 0x1

    .line 647
    .end local v43           #indexInSim:J
    .end local v56           #checkUriPathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v65           #errorCode:Ljava/lang/String;
    :cond_30
    :goto_18
    invoke-virtual/range {v84 .. v84}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x190

    if-le v2, v3, :cond_32

    .line 649
    :try_start_1
    const-string v2, "CopyMultiContacts"

    const-string v3, "Before applyBatch. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static/range {v19 .. v19}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 653
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/contacts/util/TimingStatistics;->timingStart()V

    .line 654
    const-string v2, "com.android.contacts"

    move-object/from16 v0, v84

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 655
    invoke-virtual/range {v58 .. v58}, Lcom/mediatek/contacts/util/TimingStatistics;->timingEnd()J

    .line 657
    :cond_31
    const-string v2, "CopyMultiContacts"

    const-string v3, "After applyBatch "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 663
    :goto_19
    invoke-virtual/range {v84 .. v84}, Ljava/util/ArrayList;->clear()V

    .line 468
    :cond_32
    add-int/lit8 v66, v66, 0x1

    goto/16 :goto_f

    .line 627
    .restart local v56       #checkUriPathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_33
    const-string v2, "CopyMultiContacts"

    const-string v3, "insertUsimFlag = true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-static/range {v88 .. v88}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v43

    .line 635
    .restart local v43       #indexInSim:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    move-object/from16 v34, v0

    const/16 v45, 0x0

    move-object/from16 v33, v84

    move-object/from16 v37, v90

    move-object/from16 v39, v9

    move-object/from16 v46, v20

    move-object/from16 v47, v32

    invoke-static/range {v33 .. v47}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    move-object/from16 v34, v0

    const/16 v45, 0x0

    move-object/from16 v33, v84

    move-object/from16 v37, v90

    move-object/from16 v39, v9

    invoke-static/range {v33 .. v45}, Lcom/mediatek/contacts/SubContactsUtils;->buildInsertOperation(Ljava/util/ArrayList;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;)V

    .line 641
    :cond_34
    add-int/lit8 v91, v91, 0x1

    goto :goto_18

    .line 645
    .end local v43           #indexInSim:J
    .end local v56           #checkUriPathSegs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_35
    const/4 v8, 0x1

    goto :goto_18

    .line 658
    :catch_0
    move-exception v61

    .line 659
    .local v61, e:Landroid/os/RemoteException;
    const-string v2, "CopyMultiContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 660
    .end local v61           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v61

    .line 661
    .local v61, e:Landroid/content/OperationApplicationException;
    const-string v2, "CopyMultiContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 684
    .end local v10           #dataUri:Landroid/net/Uri;
    .end local v11           #dataViewProject:[Ljava/lang/String;
    .end local v15           #values:Landroid/content/ContentValues;
    .end local v18           #maxAnrCount:I
    .end local v20           #anrsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/ext/Anr;>;"
    .end local v32           #simNickname:Ljava/lang/String;
    .end local v35           #simTag:Ljava/lang/String;
    .end local v36           #simNum:Ljava/lang/String;
    .end local v38           #simAnrNum:Ljava/lang/String;
    .end local v54           #c:Landroid/database/Cursor;
    .end local v57           #contactId:I
    .end local v60           #dstSimUri:Landroid/net/Uri;
    .end local v61           #e:Landroid/content/OperationApplicationException;
    .end local v66           #i:I
    .end local v77           #maxCount:I
    .end local v82           #numberCount:I
    .end local v85           #plugProjection:[Ljava/lang/String;
    .end local v86           #projection:[Ljava/lang/String;
    .end local v87           #request:Lcom/mediatek/contacts/list/service/MultiChoiceRequest;
    .end local v88           #retUri:Landroid/net/Uri;
    .end local v89           #sameNameCount:I
    .end local v90           #simEmail:Ljava/lang/String;
    .end local v91           #subContact:I
    .end local v93           #usimMaxAnrCount:I
    :catch_2
    move-exception v61

    .line 685
    .local v61, e:Landroid/os/RemoteException;
    const-string v2, "CopyMultiContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 686
    .end local v61           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v61

    .line 687
    .local v61, e:Landroid/content/OperationApplicationException;
    const-string v2, "CopyMultiContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    const/4 v7, 0x1

    invoke-virtual/range {v61 .. v61}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 701
    .end local v61           #e:Landroid/content/OperationApplicationException;
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    if-nez v8, :cond_37

    const/4 v2, 0x1

    :goto_1a
    invoke-virtual {v3, v4, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 702
    if-nez v8, :cond_38

    .line 703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v6}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFinished(III)V

    .line 709
    :goto_1b
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "copyContactsToSim():IccProviderTiming"

    aput-object v4, v2, v3

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;->log([Ljava/lang/String;)V

    .line 710
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "copyContactsToSim():ContactsProviderTiming"

    aput-object v4, v2, v3

    move-object/from16 v0, v58

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;->log([Ljava/lang/String;)V

    .line 711
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "copyContactsToSim():CheckStatusTiming"

    aput-object v4, v2, v3

    move-object/from16 v0, v55

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/util/TimingStatistics;->log([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 701
    :cond_37
    const/4 v2, 0x0

    goto :goto_1a

    .line 705
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    move-object/from16 v45, v0

    const/16 v46, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    move/from16 v47, v0

    sub-int v50, v6, v49

    move/from16 v48, v6

    move/from16 v51, v8

    invoke-virtual/range {v45 .. v51}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFailed(IIIIII)V

    goto :goto_1b
.end method

.method private copyContactsToSimWithRadioStateCheck()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 923
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 927
    :cond_0
    const/4 v6, 0x0

    .line 929
    .local v6, errorCause:I
    iget-object v7, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    check-cast v7, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    .line 930
    .local v7, account:Lcom/mediatek/contacts/model/AccountWithDataSetEx;
    const-string v0, "CopyMultiContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[copyContactsToSimWithRadioCheck]AccountName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | accountType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    invoke-virtual {v7}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v8

    .line 934
    .local v8, dstSlotId:I
    invoke-direct {p0, v8}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 935
    const/4 v10, 0x0

    .local v10, i:I
    move v11, v10

    .line 936
    .end local v10           #i:I
    .local v11, i:I
    :goto_1
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    const/16 v0, 0x14

    if-ge v11, v0, :cond_1

    .line 938
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    :goto_2
    invoke-direct {p0, v8}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 948
    .end local v10           #i:I
    :cond_1
    invoke-direct {p0, v8}, Lcom/mediatek/contacts/list/service/CopyProcessor;->isPhoneBookReady(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 949
    const/4 v6, 0x3

    .line 950
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    iget v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 951
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    iget-object v3, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mRequests:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onFailed(IIIIII)V

    goto :goto_0

    .line 939
    .restart local v10       #i:I
    :catch_0
    move-exception v9

    .line 940
    .local v9, e:Ljava/lang/InterruptedException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 955
    .end local v9           #e:Ljava/lang/InterruptedException;
    .end local v10           #i:I
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/CopyProcessor;->copyContactsToSim()V

    goto :goto_0

    .restart local v10       #i:I
    :cond_3
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_1
.end method

.method private cursorColumnToBuilder(Landroid/database/Cursor;[Ljava/lang/String;ILandroid/content/ContentProviderOperation$Builder;)V
    .locals 3
    .parameter "cursor"
    .parameter "columnNames"
    .parameter "index"
    .parameter "builder"

    .prologue
    .line 868
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 882
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid or unhandled data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :pswitch_1
    aget-object v0, p2, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 884
    :goto_0
    :pswitch_2
    return-void

    .line 876
    :pswitch_3
    aget-object v0, p2, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 879
    :pswitch_4
    aget-object v0, p2, p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_0

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private generateDataBuilder(Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 10
    .parameter "dataCursor"
    .parameter "builder"
    .parameter "columnNames"
    .parameter "mimeType"
    .parameter "slotId"
    .parameter "srcAccountType"

    .prologue
    .line 961
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    array-length v0, p3

    if-ge v8, v0, :cond_1

    .line 962
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactListExtension()Lcom/android/contacts/ext/ContactListExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v9, "ExtensionForAAS"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p6

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/contacts/ext/ContactListExtension;->generateDataBuilder(Landroid/content/Context;Landroid/database/Cursor;Landroid/content/ContentProviderOperation$Builder;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 968
    :cond_0
    invoke-direct {p0, p1, p3, v8, p2}, Lcom/mediatek/contacts/list/service/CopyProcessor;->cursorColumnToBuilder(Landroid/database/Cursor;[Ljava/lang/String;ILandroid/content/ContentProviderOperation$Builder;)V

    goto :goto_1

    .line 970
    :cond_1
    return-void
.end method

.method private isPhoneBookReady(I)Z
    .locals 4
    .parameter "slot"

    .prologue
    .line 716
    invoke-static {p1}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    .line 717
    .local v0, result:Z
    const-string v1, "CopyMultiContacts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPhoneBookReady "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    return v0
.end method

.method private printSimErrorDetails(Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"

    .prologue
    .line 887
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 888
    .local v0, iccError:I
    packed-switch v0, :pswitch_data_0

    .line 917
    :pswitch_0
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC UNKNOW"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_0
    return-void

    .line 890
    :pswitch_1
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR PHONE NUMBER TOO LONG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 893
    :pswitch_2
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR NAME TOO LONG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 896
    :pswitch_3
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR STORAGE FULL"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 899
    :pswitch_4
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC NOT READY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 902
    :pswitch_5
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC PASSWORD ERROR"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 905
    :pswitch_6
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC ANR TOO LONG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :pswitch_7
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC GENERIC FAILURE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :pswitch_8
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC ADN LIST NOT EXIST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 914
    :pswitch_9
    const-string v1, "CopyMultiContacts"

    const-string v2, "ERROR ICC USIM EMAIL LOST"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .locals 7
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 118
    monitor-enter p0

    :try_start_0
    const-string v1, "CopyMultiContacts"

    const-string v2, "CopyProcessor received cancel request"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-boolean v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mDone:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 123
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z

    .line 124
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mIsRunning:Z

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mService:Lcom/mediatek/contacts/list/service/MultiChoiceService;

    iget v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/list/service/MultiChoiceService;->handleFinishNotification(IZ)V

    .line 126
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mListener:Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;

    const/4 v1, 0x1

    iget v2, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mJobId:I

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/contacts/list/service/MultiChoiceHandlerListener;->onCanceled(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v6

    .line 128
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .locals 1

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 149
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mIsRunning:Z

    .line 150
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 151
    const-string v0, "SIM Account"

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "USIM Account"

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UIM Account"

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mAccountDst:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/CopyProcessor;->copyContactsToSimWithRadioStateCheck()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :goto_0
    monitor-enter p0

    .line 160
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mDone:Z

    .line 161
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 166
    :cond_1
    return-void

    .line 156
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/mediatek/contacts/list/service/CopyProcessor;->copyContactsToAccount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-enter p0

    .line 160
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mDone:Z

    .line 161
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 162
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iget-object v1, p0, Lcom/mediatek/contacts/list/service/CopyProcessor;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    throw v0

    .line 161
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method
