.class public Lcom/android/email/provider/DBHelper$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "name"

    .prologue
    .line 584
    const/4 v0, 0x0

    const/16 v1, 0x2c

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 585
    iput-object p1, p0, Lcom/android/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 586
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 590
    const-string v0, "EmailProvider"

    const-string v1, "Creating EmailProvider database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createMessageTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 593
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 594
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createMailboxTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 595
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 596
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createAccountTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 597
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 598
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createQuickResponseTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 600
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createVipMemberTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 602
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createSmartPushTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 603
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1032
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 11
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x5

    .line 608
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DBHelper upgrading EmailProvider.db from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    if-ge p2, v9, :cond_2

    .line 612
    iget-object v6, p0, Lcom/android/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.android.exchange"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 614
    .local v1, accounts:[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, arr$:[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 615
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, p0, Lcom/android/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6, v0, v10, v10}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 614
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 617
    .end local v0           #account:Landroid/accounts/Account;
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/DBHelper;->resetMessageTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 618
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/DBHelper;->resetAttachmentTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 619
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/DBHelper;->resetMailboxTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 620
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/DBHelper;->resetHostAuthTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 621
    invoke-static {p1, p2, p3}, Lcom/android/email/provider/DBHelper;->resetAccountTable(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1028
    .end local v1           #accounts:[Landroid/accounts/Account;
    .end local v2           #arr$:[Landroid/accounts/Account;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    :goto_1
    return-void

    .line 624
    :cond_2
    if-ne p2, v9, :cond_3

    .line 627
    :try_start_0
    const-string v6, "alter table Message add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 629
    const-string v6, "alter table Message_Updates add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 631
    const-string v6, "alter table Message_Deletes add column syncServerTimeStamp integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_2
    const/4 p2, 0x6

    .line 639
    :cond_3
    const/4 v6, 0x6

    if-ne p2, v6, :cond_4

    .line 641
    const-string v6, "drop trigger mailbox_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 642
    const-string v6, "create trigger mailbox_delete before delete on Mailbox begin delete from Message  where mailboxKey=old._id; delete from Message_Updates  where mailboxKey=old._id; delete from Message_Deletes  where mailboxKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const/4 p2, 0x7

    .line 645
    :cond_4
    const/4 v6, 0x7

    if-ne p2, v6, :cond_5

    .line 648
    :try_start_1
    const-string v6, "alter table Account add column securityFlags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 654
    :goto_3
    const/16 p2, 0x8

    .line 656
    :cond_5
    const/16 v6, 0x8

    if-ne p2, v6, :cond_6

    .line 659
    :try_start_2
    const-string v6, "alter table Account add column securitySyncKey text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 661
    const-string v6, "alter table Account add column signature text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    .line 667
    :goto_4
    const/16 p2, 0x9

    .line 669
    :cond_6
    const/16 v6, 0x9

    if-ne p2, v6, :cond_7

    .line 672
    :try_start_3
    const-string v6, "alter table Message add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 674
    const-string v6, "alter table Message_Updates add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 676
    const-string v6, "alter table Message_Deletes add column meetingInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 682
    :goto_5
    const/16 p2, 0xa

    .line 684
    :cond_7
    const/16 v6, 0xa

    if-ne p2, v6, :cond_8

    .line 687
    :try_start_4
    const-string v6, "alter table Attachment add column content text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 689
    const-string v6, "alter table Attachment add column flags integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 695
    :goto_6
    const/16 p2, 0xb

    .line 697
    :cond_8
    const/16 v6, 0xb

    if-ne p2, v6, :cond_9

    .line 700
    :try_start_5
    const-string v6, "alter table Attachment add column content_bytes blob;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_5

    .line 706
    :goto_7
    const/16 p2, 0xc

    .line 708
    :cond_9
    const/16 v6, 0xc

    if-ne p2, v6, :cond_a

    .line 710
    :try_start_6
    const-string v6, "alter table Mailbox add column messageCount integer not null default 0;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->recalculateMessageCount(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_6 .. :try_end_6} :catch_6

    .line 718
    :goto_8
    const/16 p2, 0xd

    .line 720
    :cond_a
    const/16 v6, 0xd

    if-ne p2, v6, :cond_b

    .line 722
    :try_start_7
    const-string v6, "alter table Message add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_7

    .line 729
    :goto_9
    const/16 p2, 0xe

    .line 731
    :cond_b
    const/16 v6, 0xe

    if-ne p2, v6, :cond_c

    .line 733
    :try_start_8
    const-string v6, "alter table Message_Deletes add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 735
    const-string v6, "alter table Message_Updates add column snippet text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_8} :catch_8

    .line 741
    :goto_a
    const/16 p2, 0xf

    .line 743
    :cond_c
    const/16 v6, 0xf

    if-ne p2, v6, :cond_d

    .line 745
    :try_start_9
    const-string v6, "alter table Attachment add column accountKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 748
    const-string v6, "update Attachment set accountKey= (SELECT Message.accountKey from Message where Message._id = Attachment.messageKey)"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/database/SQLException; {:try_start_9 .. :try_end_9} :catch_9

    .line 757
    :goto_b
    const/16 p2, 0x10

    .line 759
    :cond_d
    const/16 v6, 0x10

    if-ne p2, v6, :cond_e

    .line 761
    :try_start_a
    const-string v6, "alter table Mailbox add column parentKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/database/SQLException; {:try_start_a .. :try_end_a} :catch_a

    .line 767
    :goto_c
    const/16 p2, 0x11

    .line 769
    :cond_e
    const/16 v6, 0x11

    if-ne p2, v6, :cond_f

    .line 770
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->upgradeFromVersion17ToVersion18(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 771
    const/16 p2, 0x12

    .line 773
    :cond_f
    const/16 v6, 0x12

    if-ne p2, v6, :cond_10

    .line 775
    :try_start_b
    const-string v6, "alter table Account add column policyKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 777
    const-string v6, "drop trigger account_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 778
    const-string v6, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; delete from VipMember where accountKey=old._id; delete from SmartPush where accountKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 780
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->convertPolicyFlagsToPolicyTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_b
    .catch Landroid/database/SQLException; {:try_start_b .. :try_end_b} :catch_b

    .line 785
    :goto_d
    const/16 p2, 0x13

    .line 787
    :cond_10
    const/16 v6, 0x13

    if-ne p2, v6, :cond_11

    .line 789
    :try_start_c
    const-string v6, "alter table Policy add column requireManualSyncRoaming integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 792
    const-string v6, "alter table Policy add column dontAllowCamera integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 794
    const-string v6, "alter table Policy add column dontAllowAttachments integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 796
    const-string v6, "alter table Policy add column dontAllowHtml integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 798
    const-string v6, "alter table Policy add column maxAttachmentSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 800
    const-string v6, "alter table Policy add column maxTextTruncationSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 803
    const-string v6, "alter table Policy add column maxHTMLTruncationSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 806
    const-string v6, "alter table Policy add column maxEmailLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 808
    const-string v6, "alter table Policy add column maxCalendarLookback integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 810
    const-string v6, "alter table Policy add column passwordRecoveryEnabled integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_c} :catch_c

    .line 817
    :goto_e
    const/16 p2, 0x14

    .line 819
    :cond_11
    const/16 v6, 0x14

    if-ne p2, v6, :cond_12

    .line 821
    :try_start_d
    const-string v6, "alter table Mailbox add column lastSeenMessageKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Landroid/database/SQLException; {:try_start_d .. :try_end_d} :catch_d

    .line 827
    :goto_f
    const/16 p2, 0x15

    .line 829
    :cond_12
    const/16 v6, 0x15

    if-ne p2, v6, :cond_13

    .line 830
    iget-object v6, p0, Lcom/android/email/provider/DBHelper$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1, v6}, Lcom/android/email/provider/DBHelper;->upgradeFromVersion21ToVersion22(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 831
    const/16 p2, 0x16

    .line 833
    :cond_13
    const/16 v6, 0x16

    if-ne p2, v6, :cond_14

    .line 834
    #calls: Lcom/android/email/provider/DBHelper;->upgradeFromVersion22ToVersion23(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->access$000(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 835
    const/16 p2, 0x17

    .line 837
    :cond_14
    const/16 v6, 0x17

    if-ne p2, v6, :cond_15

    .line 838
    #calls: Lcom/android/email/provider/DBHelper;->upgradeFromVersion23ToVersion24(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 839
    const/16 p2, 0x18

    .line 841
    :cond_15
    const/16 v6, 0x18

    if-ne p2, v6, :cond_16

    .line 842
    #calls: Lcom/android/email/provider/DBHelper;->upgradeFromVersion24ToVersion25(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->access$200(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 843
    const/16 p2, 0x19

    .line 845
    :cond_16
    const/16 v6, 0x19

    if-ne p2, v6, :cond_17

    .line 846
    #calls: Lcom/android/email/provider/DBHelper;->upgradeFromVersion25ToVersion26(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->access$300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 847
    const/16 p2, 0x1a

    .line 849
    :cond_17
    const/16 v6, 0x1a

    if-ne p2, v6, :cond_18

    .line 851
    :try_start_e
    const-string v6, "alter table Message add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 853
    const-string v6, "alter table Message_Deletes add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 855
    const-string v6, "alter table Message_Updates add column protocolSearchInfo text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_e} :catch_e

    .line 861
    :goto_10
    const/16 p2, 0x1b

    .line 863
    :cond_18
    const/16 v6, 0x1b

    if-ne p2, v6, :cond_19

    .line 865
    :try_start_f
    const-string v6, "alter table Account add column notifiedMessageId integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 867
    const-string v6, "alter table Account add column notifiedMessageCount integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/database/SQLException; {:try_start_f .. :try_end_f} :catch_f

    .line 873
    :goto_11
    const/16 p2, 0x1c

    .line 875
    :cond_19
    const/16 v6, 0x1c

    if-ne p2, v6, :cond_1a

    .line 878
    :try_start_10
    const-string v6, "alter table Message add column size integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 880
    const-string v6, "alter table Message_Updates add column size integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 882
    const-string v6, "alter table Message_Deletes add column size integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_10} :catch_10

    .line 888
    :goto_12
    const/16 p2, 0x1d

    .line 890
    :cond_1a
    const/16 v6, 0x1d

    if-ne p2, v6, :cond_1b

    .line 892
    :try_start_11
    const-string v6, "alter table Policy add column protocolPoliciesEnforced text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    const-string v6, "alter table Policy add column protocolPoliciesUnsupported text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/database/SQLException; {:try_start_11 .. :try_end_11} :catch_11

    .line 900
    :goto_13
    const/16 p2, 0x1e

    .line 902
    :cond_1b
    const/16 v6, 0x1e

    if-ne p2, v6, :cond_1c

    .line 903
    #calls: Lcom/android/email/provider/DBHelper;->upgradeFromVersion30ToVersion31(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->access$400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 904
    const/16 p2, 0x1f

    .line 906
    :cond_1c
    const/16 v6, 0x1f

    if-ne p2, v6, :cond_1d

    .line 908
    :try_start_12
    const-string v6, "alter table Mailbox add column uiSyncStatus integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 910
    const-string v6, "alter table Mailbox add column uiLastSyncResult integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_12
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_12} :catch_12

    .line 916
    :goto_14
    const/16 p2, 0x20

    .line 918
    :cond_1d
    const/16 v6, 0x20

    if-ne p2, v6, :cond_1e

    .line 920
    :try_start_13
    const-string v6, "alter table Mailbox add column lastNotifiedMessageKey integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 922
    const-string v6, "alter table Mailbox add column lastNotifiedMessageCount integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 924
    const-string v6, "update Mailbox set lastNotifiedMessageKey=0 where lastNotifiedMessageKey IS NULL"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 926
    const-string v6, "update Mailbox set lastNotifiedMessageCount=0 where lastNotifiedMessageCount IS NULL"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/database/SQLException; {:try_start_13 .. :try_end_13} :catch_13

    .line 932
    :goto_15
    const/16 p2, 0x21

    .line 934
    :cond_1e
    const/16 v6, 0x21

    if-ne p2, v6, :cond_1f

    .line 936
    :try_start_14
    const-string v6, "alter table Attachment add column uiState integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 938
    const-string v6, "alter table Attachment add column uiDestination integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 940
    const-string v6, "alter table Attachment add column uiDownloadedSize integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_14
    .catch Landroid/database/SQLException; {:try_start_14 .. :try_end_14} :catch_14

    .line 946
    :goto_16
    const/16 p2, 0x22

    .line 948
    :cond_1f
    const/16 v6, 0x22

    if-ne p2, v6, :cond_20

    .line 950
    :try_start_15
    const-string v6, "alter table Mailbox add column totalCount integer;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_15} :catch_15

    .line 956
    :goto_17
    const/16 p2, 0x23

    .line 958
    :cond_20
    const/16 v6, 0x23

    if-ne p2, v6, :cond_21

    .line 959
    const/16 p2, 0x24

    .line 961
    :cond_21
    const/16 v6, 0x24

    if-eq p2, v6, :cond_22

    const/16 v6, 0x25

    if-ne p2, v6, :cond_23

    .line 962
    :cond_22
    const/16 p2, 0x26

    .line 964
    :cond_23
    const/16 v6, 0x26

    if-ne p2, v6, :cond_24

    .line 966
    :try_start_16
    const-string v6, "alter table Message add column threadTopic text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_16
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_16} :catch_16

    .line 972
    :goto_18
    const/16 p2, 0x27

    .line 974
    :cond_24
    const/16 v6, 0x27

    if-ne p2, v6, :cond_25

    .line 976
    :try_start_17
    const-string v6, "alter table Message_Deletes add column threadTopic text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 978
    const-string v6, "alter table Message_Updates add column threadTopic text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_17
    .catch Landroid/database/SQLException; {:try_start_17 .. :try_end_17} :catch_17

    .line 984
    :goto_19
    const/16 p2, 0x28

    .line 986
    :cond_25
    const/16 v6, 0x28

    if-ne p2, v6, :cond_26

    .line 988
    :try_start_18
    const-string v6, "alter table Message add column dirty text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 990
    const-string v6, "alter table Message_Deletes add column dirty text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 992
    const-string v6, "alter table Message_Updates add column dirty text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_18 .. :try_end_18} :catch_18

    .line 998
    :goto_1a
    const/16 p2, 0x29

    .line 1001
    :cond_26
    const/16 v6, 0x29

    if-ne p2, v6, :cond_27

    .line 1003
    :try_start_19
    const-string v6, "alter table Account add column vipRingtoneUri text;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1005
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createVipMemberTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1006
    const-string v6, "drop trigger account_delete;"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1007
    const-string v6, "create trigger account_delete before delete on Account begin delete from Mailbox where accountKey=old._id; delete from HostAuth where _id=old.hostAuthKeyRecv; delete from HostAuth where _id=old.hostAuthKeySend; delete from Policy where _id=old.policyKey; delete from VipMember where accountKey=old._id; delete from SmartPush where accountKey=old._id; end"

    invoke-virtual {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/database/SQLException; {:try_start_19 .. :try_end_19} :catch_19

    .line 1011
    :goto_1b
    const/16 p2, 0x2a

    .line 1013
    :cond_27
    const/16 v6, 0x2a

    if-ne p2, v6, :cond_28

    .line 1015
    :try_start_1a
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->createSmartPushTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_1a
    .catch Landroid/database/SQLException; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 1019
    :goto_1c
    const/16 p2, 0x2b

    .line 1023
    :cond_28
    const/16 v6, 0x2b

    if-ne p2, v6, :cond_1

    .line 1024
    #calls: Lcom/android/email/provider/DBHelper;->upgradeFromVersion43ToVersion44(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {p1}, Lcom/android/email/provider/DBHelper;->access$500(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1025
    const/16 p2, 0x2c

    goto/16 :goto_1

    .line 633
    :catch_0
    move-exception v3

    .line 635
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    const-string v7, "Exception upgrading EmailProvider.db from v5 to v6"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 650
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1
    move-exception v3

    .line 652
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 7 to 8 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 663
    .end local v3           #e:Landroid/database/SQLException;
    :catch_2
    move-exception v3

    .line 665
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 8 to 9 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 678
    .end local v3           #e:Landroid/database/SQLException;
    :catch_3
    move-exception v3

    .line 680
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 9 to 10 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 691
    .end local v3           #e:Landroid/database/SQLException;
    :catch_4
    move-exception v3

    .line 693
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 10 to 11 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 702
    .end local v3           #e:Landroid/database/SQLException;
    :catch_5
    move-exception v3

    .line 704
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 11 to 12 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 714
    .end local v3           #e:Landroid/database/SQLException;
    :catch_6
    move-exception v3

    .line 716
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 12 to 13 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 725
    .end local v3           #e:Landroid/database/SQLException;
    :catch_7
    move-exception v3

    .line 727
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 13 to 14 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 737
    .end local v3           #e:Landroid/database/SQLException;
    :catch_8
    move-exception v3

    .line 739
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 14 to 15 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 753
    .end local v3           #e:Landroid/database/SQLException;
    :catch_9
    move-exception v3

    .line 755
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 15 to 16 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 763
    .end local v3           #e:Landroid/database/SQLException;
    :catch_a
    move-exception v3

    .line 765
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 16 to 17 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 781
    .end local v3           #e:Landroid/database/SQLException;
    :catch_b
    move-exception v3

    .line 783
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 18 to 19 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 813
    .end local v3           #e:Landroid/database/SQLException;
    :catch_c
    move-exception v3

    .line 815
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 19 to 20 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 823
    .end local v3           #e:Landroid/database/SQLException;
    :catch_d
    move-exception v3

    .line 825
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 20 to 21 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 857
    .end local v3           #e:Landroid/database/SQLException;
    :catch_e
    move-exception v3

    .line 859
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 26 to 27 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 869
    .end local v3           #e:Landroid/database/SQLException;
    :catch_f
    move-exception v3

    .line 871
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 27 to 28 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 884
    .end local v3           #e:Landroid/database/SQLException;
    :catch_10
    move-exception v3

    .line 886
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 28 to 29 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 896
    .end local v3           #e:Landroid/database/SQLException;
    :catch_11
    move-exception v3

    .line 898
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 29 to 30 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 912
    .end local v3           #e:Landroid/database/SQLException;
    :catch_12
    move-exception v3

    .line 914
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 31 to 32 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 928
    .end local v3           #e:Landroid/database/SQLException;
    :catch_13
    move-exception v3

    .line 930
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 32 to 33 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 942
    .end local v3           #e:Landroid/database/SQLException;
    :catch_14
    move-exception v3

    .line 944
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 33 to 34 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 952
    .end local v3           #e:Landroid/database/SQLException;
    :catch_15
    move-exception v3

    .line 954
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 34 to 35 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 968
    .end local v3           #e:Landroid/database/SQLException;
    :catch_16
    move-exception v3

    .line 970
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 38 to 39 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 980
    .end local v3           #e:Landroid/database/SQLException;
    :catch_17
    move-exception v3

    .line 982
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 39 to 40 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 994
    .end local v3           #e:Landroid/database/SQLException;
    :catch_18
    move-exception v3

    .line 996
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 40 to 41 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a

    .line 1008
    .end local v3           #e:Landroid/database/SQLException;
    :catch_19
    move-exception v3

    .line 1009
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 41 to 42 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1016
    .end local v3           #e:Landroid/database/SQLException;
    :catch_1a
    move-exception v3

    .line 1017
    .restart local v3       #e:Landroid/database/SQLException;
    const-string v6, "EmailProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception upgrading EmailProvider.db from 42 to 43 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c
.end method
