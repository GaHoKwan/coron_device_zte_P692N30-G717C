.class Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/dragon/toolkit/grammar/content/ContentManager$PlatformFullIterator;


# instance fields
.field final synthetic this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

.field final synthetic val$hashes:Ljava/util/HashSet;

.field final synthetic val$variants:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/util/ArrayList;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    iput-object p2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 17

    invoke-direct/range {p0 .. p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->getNextCachedEntry()Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;->getUniqueId()I

    move-result v4

    iget-object v5, v2, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;->surfaceForm:Ljava/lang/String;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;->spokenForm:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "in_visible_group"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v1

    const-string v2, "lookup"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "display_name"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v1, "data2"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "data5"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v1, "data3"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v11, :cond_25

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v11}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v7, 0x1

    if-le v10, v7, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v13

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainLetter(Ljava/lang/String;)Z
    invoke-static {v9}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$400(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v10, :cond_1

    aget-char v14, v13, v7

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isLetter(C)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$500(C)Z

    move-result v14

    if-nez v14, :cond_12

    aget-char v14, v13, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_12

    if-nez v7, :cond_e

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    :goto_2
    if-nez v4, :cond_2

    if-nez v3, :cond_2

    const/4 v7, 0x4

    if-ne v10, v7, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x2

    const/4 v7, 0x4

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-le v7, v9, :cond_4

    const/4 v9, 0x5

    if-ge v7, v9, :cond_4

    if-ne v7, v8, :cond_4

    packed-switch v7, :pswitch_data_0

    :cond_4
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    move-object v5, v1

    move-object v6, v2

    :goto_4
    const-string v1, "data7"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v1, "data8"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v1, "data9"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->getPhoneticDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v14, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    move-object v4, v3

    :goto_5
    const/high16 v16, 0x4000

    move/from16 v0, v16

    invoke-direct {v14, v15, v11, v4, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v13, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1e

    move-object v4, v3

    :goto_6
    const/high16 v15, 0x4000

    invoke-direct {v13, v14, v9, v4, v15}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v11, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f

    move-object v4, v3

    :goto_7
    const/high16 v14, 0x4000

    invoke-direct {v11, v13, v8, v4, v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v9, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    move-object v4, v3

    :goto_8
    const/high16 v13, 0x4000

    invoke-direct {v9, v11, v7, v4, v13}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v8, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_21

    move-object v4, v3

    :goto_9
    const/high16 v11, 0x4000

    invoke-direct {v8, v9, v6, v4, v11}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v6, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_22

    :goto_a
    const/high16 v8, 0x4000

    invoke-direct {v6, v7, v5, v3, v8}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v4, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_23

    :goto_b
    const/high16 v6, -0x8000

    invoke-direct {v4, v5, v10, v2, v6}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$hashes:Ljava/util/HashSet;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_24

    :goto_c
    const/high16 v5, -0x4000

    invoke-direct {v3, v4, v12, v1, v5}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;-><init>(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->getNextCachedEntry()Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/nuance/dragon/toolkit/grammar/WordAction;

    new-instance v3, Lcom/nuance/dragon/toolkit/grammar/Word;

    invoke-virtual {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;->getUniqueId()I

    move-result v4

    iget-object v5, v2, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;->surfaceForm:Ljava/lang/String;

    iget-object v2, v2, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;->spokenForm:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v2}, Lcom/nuance/dragon/toolkit/grammar/Word;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/nuance/dragon/toolkit/grammar/WordAction;-><init>(Lcom/nuance/dragon/toolkit/grammar/Word;Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :cond_d
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v4, v10, -0x1

    if-ne v7, v4, :cond_f

    const/4 v4, 0x0

    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v9, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_f
    const/4 v3, 0x0

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aget-char v3, v13, v7

    const/16 v14, 0x28

    if-eq v3, v14, :cond_10

    aget-char v3, v13, v7

    const v13, 0xff08

    if-ne v3, v13, :cond_11

    :cond_10
    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_11
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    :cond_12
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v7, 0x4

    if-le v10, v7, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v9, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v10, -0x2

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v10, -0x3

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    :cond_14
    const/4 v7, 0x0

    aget-char v7, v13, v7

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isLetter(C)Z
    invoke-static {v7}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$500(C)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    :goto_d
    if-ge v7, v10, :cond_15

    aget-char v14, v13, v7

    const/16 v15, 0x20

    if-eq v14, v15, :cond_18

    aget-char v14, v13, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_15
    const/4 v7, 0x1

    aget-char v7, v13, v7

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isLetter(C)Z
    invoke-static {v7}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$500(C)Z

    move-result v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    :goto_e
    if-ge v7, v10, :cond_16

    aget-char v14, v13, v7

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isLetter(C)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$500(C)Z

    move-result v14

    if-nez v14, :cond_19

    aget-char v14, v13, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_16
    const/4 v7, 0x0

    aget-char v7, v13, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v7}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_f
    if-ge v7, v10, :cond_2

    aget-char v14, v13, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1c

    aget-char v14, v13, v7

    invoke-static {v14}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v14

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isContainChinese(Ljava/lang/String;)Z
    invoke-static {v14}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$300(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aget-char v3, v13, v7

    const/16 v14, 0x28

    if-eq v3, v14, :cond_17

    aget-char v3, v13, v7

    const v14, 0xff08

    if-ne v3, v14, :cond_1a

    :cond_17
    add-int/lit8 v3, v7, 0x1

    add-int/lit8 v7, v10, -0x1

    invoke-virtual {v9, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_d

    :cond_19
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1a
    aget-char v3, v13, v7

    #calls: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->isLetter(C)Z
    invoke-static {v3}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$500(C)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_1b
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :pswitch_0
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    move-object v5, v1

    move-object v6, v2

    goto/16 :goto_4

    :pswitch_1
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    move-object v5, v1

    move-object v6, v2

    goto/16 :goto_4

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_7

    :cond_20
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_21
    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_22
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_24
    const/4 v1, 0x0

    goto/16 :goto_c

    :cond_25
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    move-object v5, v1

    move-object v6, v2

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getNextCachedEntry()Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;
    .locals 2

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->val$variants:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$NameEntry;

    goto :goto_0
.end method

.method private getPhoneticDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final hasNext()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    #setter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v3, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$102(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Lcom/nuance/dragon/toolkit/grammar/WordAction;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #setter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$202(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Landroid/database/Cursor;)Landroid/database/Cursor;

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final next()Lcom/nuance/dragon/toolkit/grammar/WordAction;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #setter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$102(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Lcom/nuance/dragon/toolkit/grammar/WordAction;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_1
    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_next:Lcom/nuance/dragon/toolkit/grammar/WordAction;
    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$100(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #setter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v2, v1}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$202(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->this$0:Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;

    #getter for: Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->_cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;->access$200(Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN;)Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->getNext(Landroid/database/Cursor;)Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/nuance/dragon/toolkit/grammar/content/ext/VariantContactManagerCN$2;->next()Lcom/nuance/dragon/toolkit/grammar/WordAction;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
