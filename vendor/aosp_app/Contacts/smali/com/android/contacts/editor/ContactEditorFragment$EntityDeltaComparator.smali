.class Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDeltaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/contacts/model/RawContactDelta;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1865
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/editor/ContactEditorFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;-><init>(Lcom/android/contacts/editor/ContactEditorFragment;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)I
    .locals 21
    .parameter "one"
    .parameter "two"

    .prologue
    .line 1872
    invoke-virtual/range {p1 .. p2}, Lcom/android/contacts/model/RawContactDelta;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1873
    const/16 v16, 0x0

    .line 1975
    :cond_0
    :goto_0
    return v16

    .line 1876
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->this$0:Lcom/android/contacts/editor/ContactEditorFragment;

    move-object/from16 v17, v0

    #getter for: Lcom/android/contacts/editor/ContactEditorFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/editor/ContactEditorFragment;->access$500(Lcom/android/contacts/editor/ContactEditorFragment;)Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 1877
    .local v4, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1878
    .local v2, accountType1:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1879
    .local v5, dataSet1:Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v14

    .line 1880
    .local v14, type1:Lcom/android/contacts/model/account/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1881
    .local v3, accountType2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v17

    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1882
    .local v6, dataSet2:Ljava/lang/String;
    invoke-virtual {v4, v3, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v15

    .line 1885
    .local v15, type2:Lcom/android/contacts/model/account/AccountType;
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[compare] type1 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[compare] type2 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    if-nez v15, :cond_2

    if-nez v14, :cond_2

    .line 1889
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600()Ljava/lang/String;

    move-result-object v17

    const-string v18, "type2 and type1 also null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1890
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1891
    :cond_2
    if-eqz v15, :cond_3

    if-nez v14, :cond_4

    .line 1892
    :cond_3
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600()Ljava/lang/String;

    move-result-object v17

    const-string v18, "type2 or type1 is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 1898
    :cond_4
    invoke-virtual {v14}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-virtual {v15}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1899
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1900
    :cond_5
    invoke-virtual {v14}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v15}, Lcom/android/contacts/model/account/AccountType;->areContactsWritable()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1901
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 1905
    :cond_6
    const/4 v11, 0x0

    .line 1906
    .local v11, skipAccountTypeCheck:Z
    instance-of v7, v14, Lcom/android/contacts/model/account/GoogleAccountType;

    .line 1907
    .local v7, isGoogleAccount1:Z
    instance-of v8, v15, Lcom/android/contacts/model/account/GoogleAccountType;

    .line 1908
    .local v8, isGoogleAccount2:Z
    if-eqz v7, :cond_7

    if-nez v8, :cond_7

    .line 1909
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 1910
    :cond_7
    if-nez v7, :cond_8

    if-eqz v8, :cond_8

    .line 1911
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1912
    :cond_8
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    .line 1913
    const/4 v11, 0x1

    .line 1917
    :cond_9
    if-nez v11, :cond_c

    .line 1929
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_a

    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_b

    .line 1930
    :cond_a
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600()Ljava/lang/String;

    move-result-object v17

    const-string v18, "type.accountType is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1931
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1937
    :cond_b
    invoke-static {}, Lcom/android/contacts/editor/ContactEditorFragment;->access$600()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ype1.accountType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " | type2.accountType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 1941
    .local v16, value:I
    if-nez v16, :cond_0

    .line 1945
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1946
    iget-object v0, v14, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 1947
    if-nez v16, :cond_0

    .line 1957
    .end local v16           #value:I
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v9

    .line 1958
    .local v9, oneAccount:Ljava/lang/String;
    if-nez v9, :cond_d

    const-string v9, ""

    .line 1959
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getAccountName()Ljava/lang/String;

    move-result-object v12

    .line 1960
    .local v12, twoAccount:Ljava/lang/String;
    if-nez v12, :cond_e

    const-string v12, ""

    .line 1961
    :cond_e
    invoke-virtual {v9, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    .line 1962
    .restart local v16       #value:I
    if-nez v16, :cond_0

    .line 1967
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v10

    .line 1968
    .local v10, oneId:Ljava/lang/Long;
    invoke-virtual/range {p2 .. p2}, Lcom/android/contacts/model/RawContactDelta;->getRawContactId()Ljava/lang/Long;

    move-result-object v13

    .line 1969
    .local v13, twoId:Ljava/lang/Long;
    if-nez v10, :cond_10

    .line 1970
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 1950
    .end local v9           #oneAccount:Ljava/lang/String;
    .end local v10           #oneId:Ljava/lang/Long;
    .end local v12           #twoAccount:Ljava/lang/String;
    .end local v13           #twoId:Ljava/lang/Long;
    :cond_f
    iget-object v0, v15, Lcom/android/contacts/model/account/AccountType;->dataSet:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    .line 1951
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1971
    .restart local v9       #oneAccount:Ljava/lang/String;
    .restart local v10       #oneId:Ljava/lang/Long;
    .restart local v12       #twoAccount:Ljava/lang/String;
    .restart local v13       #twoId:Ljava/lang/Long;
    :cond_10
    if-nez v13, :cond_11

    .line 1972
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 1975
    :cond_11
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v16, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1865
    check-cast p1, Lcom/android/contacts/model/RawContactDelta;

    .end local p1
    check-cast p2, Lcom/android/contacts/model/RawContactDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/editor/ContactEditorFragment$EntityDeltaComparator;->compare(Lcom/android/contacts/model/RawContactDelta;Lcom/android/contacts/model/RawContactDelta;)I

    move-result v0

    return v0
.end method
