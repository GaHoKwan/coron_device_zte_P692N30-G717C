.class Lcom/android/contacts/group/GroupEditorFragment$MemberTask;
.super Landroid/os/AsyncTask;
.source "GroupEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemberTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;


# instance fields
.field private mFragment:Lcom/android/contacts/group/GroupEditorFragment;

.field private mResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1658
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1669
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1670
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->NEW:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    .line 1671
    return-void
.end method

.method public static createNewTask()Lcom/android/contacts/group/GroupEditorFragment$MemberTask;
    .locals 2

    .prologue
    .line 1712
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    if-eqz v0, :cond_0

    .line 1713
    const-string v0, "GroupEditorFragment"

    const-string v1, "cancel existing task instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->abort()V

    .line 1716
    :cond_0
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    invoke-direct {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 1717
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    return-object v0
.end method

.method public static getExistTask()Lcom/android/contacts/group/GroupEditorFragment$MemberTask;
    .locals 1

    .prologue
    .line 1721
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 2

    .prologue
    .line 1704
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    if-eqz v0, :cond_0

    .line 1705
    const-string v0, "GroupEditorFragment"

    const-string v1, "mInstance.cancel(true)"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1706
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1707
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mInstance:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 1709
    :cond_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1656
    check-cast p1, [Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->doInBackground([Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 39
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1730
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1731
    const/16 v32, 0x0

    .line 1873
    :goto_0
    return-object v32

    .line 1733
    :cond_0
    const/4 v2, 0x0

    aget-object v31, p1, v2

    .line 1734
    .local v31, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    move-object/from16 v22, v2

    check-cast v22, [J

    .line 1735
    .local v22, contactIds:[J
    const/4 v2, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/group/GroupEditorFragment;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 1737
    const-string v21, "account_name=? AND account_type=?"

    .line 1738
    .local v21, accountFilter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Local Phone Account"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") OR ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IS NULL ))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1745
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$2000(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND data_set IS NULL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1747
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$2100(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1757
    .local v6, selectArgs:[Ljava/lang/String;
    :goto_1
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    .line 1758
    .local v35, rawContactIdSelectionBuilder:Ljava/lang/StringBuilder;
    const-string v2, "contact_id IN ("

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1759
    move-object/from16 v0, v22

    array-length v2, v0

    if-lez v2, :cond_2

    .line 1760
    const/4 v2, 0x0

    aget-wide v2, v22, v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1762
    :cond_2
    const/16 v26, 0x1

    .local v26, i:I
    :goto_2
    move-object/from16 v0, v22

    array-length v2, v0

    move/from16 v0, v26

    if-ge v0, v2, :cond_4

    .line 1763
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, v22, v26

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1762
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 1751
    .end local v6           #selectArgs:[Ljava/lang/String;
    .end local v26           #i:I
    .end local v35           #rawContactIdSelectionBuilder:Ljava/lang/StringBuilder;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND data_set=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1752
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$2100(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$2000(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .restart local v6       #selectArgs:[Ljava/lang/String;
    goto :goto_1

    .line 1765
    .restart local v26       #i:I
    .restart local v35       #rawContactIdSelectionBuilder:Ljava/lang/StringBuilder;
    :cond_4
    const-string v2, ")"

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    const-string v2, " AND "

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1767
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawContactIdSelectionBuilder=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$2200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "contact_id"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    const-string v7, "_id"

    aput-object v7, v4, v5

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 1776
    .local v25, cursor:Landroid/database/Cursor;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1777
    .local v23, contactIdss:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v36, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_5

    .line 1780
    const/16 v32, 0x0

    .line 1793
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1782
    :cond_5
    const-wide/16 v15, 0x0

    .line 1783
    .local v15, contactId:J
    const-wide/16 v33, 0x0

    .line 1785
    .local v33, rawContactId:J
    :cond_6
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1786
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    .line 1787
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1788
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1789
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1791
    :cond_7
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 1793
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 1795
    new-instance v37, Ljava/lang/StringBuilder;

    const-string v2, "_id IN ("

    move-object/from16 v0, v37

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v37, selectionBuilder:Ljava/lang/StringBuilder;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1797
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1799
    :cond_8
    const/16 v26, 0x1

    :goto_3
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_9

    .line 1800
    const-string v2, ","

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1799
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1793
    .end local v15           #contactId:J
    .end local v33           #rawContactId:J
    .end local v37           #selectionBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v2

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1802
    .restart local v15       #contactId:J
    .restart local v33       #rawContactId:J
    .restart local v37       #selectionBuilder:Ljava/lang/StringBuilder;
    :cond_9
    const-string v2, ")"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1803
    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1804
    .local v10, selection:Ljava/lang/String;
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contacts selection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$2200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v9, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_CONTACT:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1807
    .local v20, ContactsCursor:Landroid/database/Cursor;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1809
    .local v32, memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    if-eqz v36, :cond_12

    :try_start_2
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    if-eqz v20, :cond_12

    .line 1810
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1811
    const-string v2, "GroupEditorFragment"

    const-string v3, "fail to moveToFirst"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1812
    const/16 v32, 0x0

    .line 1871
    .end local v32           #memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1814
    .restart local v32       #memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    :cond_a
    const/16 v26, -0x1

    .line 1815
    const-wide/16 v15, 0x0

    .line 1816
    const/16 v17, 0x0

    .line 1817
    .local v17, displayName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1818
    .local v14, lookupKey:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1819
    .local v18, photoUri:Ljava/lang/String;
    const/16 v19, -0x1

    .line 1820
    .local v19, simIndex:I
    const/16 v27, -0x1

    .line 1824
    .local v27, indexSimOrPhone:I
    :cond_b
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1825
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1826
    const/16 v2, 0x9

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1827
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1828
    const/16 v2, 0xe

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1829
    const/16 v2, 0xd

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 1831
    const/16 v26, -0x1

    .line 1832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1000(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    #setter for: Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {v2, v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1002(Lcom/android/contacts/group/GroupEditorFragment;Lcom/mediatek/phone/SIMInfoWrapper;)Lcom/mediatek/phone/SIMInfoWrapper;

    .line 1835
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    invoke-static {v2}, Lcom/android/contacts/group/GroupEditorFragment;->access$1000(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #getter for: Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I
    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->access$1100(Lcom/android/contacts/group/GroupEditorFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v38

    .line 1837
    .local v38, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v38, :cond_d

    .line 1838
    move-object/from16 v0, v38

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    move/from16 v26, v0

    .line 1840
    :cond_d
    if-lez v19, :cond_e

    .line 1841
    const/16 v2, 0xf

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1843
    .local v29, isSdnContact:I
    new-instance v2, Lcom/mediatek/contacts/util/SimContactPhotoUtils;

    invoke-direct {v2}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;-><init>()V

    move/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoUri(II)Ljava/lang/String;

    move-result-object v18

    .line 1846
    .end local v29           #isSdnContact:I
    :cond_e
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 1850
    .local v24, contacts:Ljava/util/HashMap;
    const/16 v30, 0x0

    .local v30, k:I
    :goto_4
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v30

    if-ge v0, v2, :cond_f

    .line 1851
    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v15, v2

    if-nez v2, :cond_10

    .line 1852
    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v23

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1853
    new-instance v11, Lcom/android/contacts/group/GroupEditorFragment$Member;

    move-object/from16 v0, v36

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct/range {v11 .. v19}, Lcom/android/contacts/group/GroupEditorFragment$Member;-><init>(JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 1855
    .local v11, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    #calls: Lcom/android/contacts/group/GroupEditorFragment;->addMembersToAdd(Lcom/android/contacts/group/GroupEditorFragment$Member;)Z
    invoke-static {v2, v11}, Lcom/android/contacts/group/GroupEditorFragment;->access$2300(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)Z

    move-result v28

    .line 1856
    .local v28, isDisplay:Z
    if-nez v28, :cond_10

    .line 1857
    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    .end local v11           #member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    .end local v28           #isDisplay:Z
    :cond_f
    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 1863
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1864
    const-string v2, "GroupEditorFragment"

    const-string v3, "task canceled"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1865
    const/16 v32, 0x0

    .line 1871
    .end local v32           #memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1850
    .restart local v32       #memberList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    :cond_10
    add-int/lit8 v30, v30, 0x1

    goto :goto_4

    .line 1868
    :cond_11
    :try_start_4
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v2

    if-nez v2, :cond_b

    .line 1871
    .end local v14           #lookupKey:Ljava/lang/String;
    .end local v17           #displayName:Ljava/lang/String;
    .end local v18           #photoUri:Ljava/lang/String;
    .end local v19           #simIndex:I
    .end local v24           #contacts:Ljava/util/HashMap;
    .end local v27           #indexSimOrPhone:I
    .end local v30           #k:I
    .end local v38           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_12
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method public getResult()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mResult:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isTaskFinished()Z
    .locals 2

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->FINISHED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTaskRunning()Z
    .locals 2

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->RUNNING:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 1675
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1676
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->CANCELED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    .line 1677
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1656
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->onCancelled(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onCancelled(Ljava/util/ArrayList;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1681
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 1682
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->CANCELED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    .line 1683
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1656
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1878
    const-string v1, "GroupEditorFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "task finished, the result size is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "none"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->FINISHED:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    .line 1880
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mResult:Ljava/util/ArrayList;

    .line 1881
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment;->access$2400()Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1882
    const-string v0, "GroupEditorFragment"

    const-string v1, "notifyAddMemberFinished"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment;->access$2400()Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;->notifyAddMemberFinished()V

    .line 1887
    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1888
    return-void

    .line 1878
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1885
    :cond_1
    const-string v0, "GroupEditorFragment"

    const-string v1, "UI is abcent now, abort UI updating"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1687
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1688
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;->RUNNING:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mTaskStatus:Lcom/android/contacts/group/GroupEditorFragment$MemberTask$TaskStatus;

    .line 1689
    return-void
.end method

.method public setFragment(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 1725
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->mFragment:Lcom/android/contacts/group/GroupEditorFragment;

    .line 1726
    return-void
.end method
