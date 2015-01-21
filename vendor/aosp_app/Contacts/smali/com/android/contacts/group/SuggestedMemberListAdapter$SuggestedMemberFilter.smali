.class public Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;
.super Landroid/widget/Filter;
.source "SuggestedMemberListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/SuggestedMemberListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestedMemberFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 47
    .parameter "prefix"

    .prologue
    .line 244
    new-instance v37, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v37 .. v37}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 245
    .local v37, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-object v37

    .line 253
    :cond_1
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v43, suggestionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    new-instance v44, Ljava/util/HashMap;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v44, suggestionsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    .line 289
    .local v38, searchFilter:Ljava/lang/String;
    const-string v21, "account_name=? AND account_type=?"

    .line 291
    .local v21, accountFilter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Local Phone Account"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 293
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") OR ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NULL AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " IS NULL ))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND data_set IS NULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 300
    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 305
    .local v7, selectArgs:[Ljava/lang/String;
    :goto_1
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v46

    .line 307
    .local v46, uriBuilder:Landroid/net/Uri$Builder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " EXISTS ( SELECT _id FROM view_raw_contacts WHERE view_raw_contacts.contact_id=view_contacts._id AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 312
    .local v6, selection:Ljava/lang/String;
    const-string v3, "SuggestedMemberListAdapter"

    const-string v4, "begin the first query"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v46 .. v46}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-static {}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$400()[Ljava/lang/String;

    move-result-object v5

    const-string v8, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 316
    .local v24, cursor:Landroid/database/Cursor;
    const-string v3, "SuggestedMemberListAdapter"

    const-string v4, "End the first query"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-eqz v24, :cond_0

    .line 328
    const/4 v3, -0x1

    :try_start_0
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 329
    :cond_3
    :goto_2
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_6

    .line 339
    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 341
    .local v13, contactId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mExistingMemberContactIds:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$500(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 345
    const/4 v3, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 356
    .local v12, displayName:Ljava/lang/String;
    new-instance v8, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    const-wide/16 v10, -0x1

    invoke-direct/range {v8 .. v14}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;-><init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;JLjava/lang/String;J)V

    .line 358
    .local v8, member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    const/4 v3, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    .line 359
    .local v40, simId:I
    move/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setSimId(I)V

    .line 360
    if-lez v40, :cond_5

    .line 361
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    move/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v41

    .line 362
    .local v41, slotId:I
    invoke-static/range {v41 .. v41}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->getSimTypeBySlot(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setSimType(I)V

    .line 363
    move/from16 v0, v41

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setSlotId(I)V

    .line 368
    .end local v41           #slotId:I
    :goto_3
    const/4 v3, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v8, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setIsSdnContact(I)V

    .line 374
    move-object/from16 v0, v43

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 380
    .end local v8           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v12           #displayName:Ljava/lang/String;
    .end local v13           #contactId:J
    .end local v40           #simId:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    throw v3

    .line 302
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectArgs:[Ljava/lang/String;
    .end local v24           #cursor:Landroid/database/Cursor;
    .end local v46           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND data_set=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 303
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$300(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$100(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mDataSet:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$200(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .restart local v7       #selectArgs:[Ljava/lang/String;
    goto/16 :goto_1

    .line 365
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v8       #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .restart local v12       #displayName:Ljava/lang/String;
    .restart local v13       #contactId:J
    .restart local v24       #cursor:Landroid/database/Cursor;
    .restart local v40       #simId:I
    .restart local v46       #uriBuilder:Landroid/net/Uri$Builder;
    :cond_5
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {v8, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setSimType(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 380
    .end local v8           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v12           #displayName:Ljava/lang/String;
    .end local v13           #contactId:J
    .end local v40           #simId:I
    :cond_6
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 383
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v32

    .line 384
    .local v32, numSuggestions:I
    if-eqz v32, :cond_0

    .line 391
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v36, rawContactIdSelectionBuilder:Ljava/lang/StringBuilder;
    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v33, v0

    .line 393
    .local v33, questionMarks:[Ljava/lang/String;
    const-string v3, "?"

    move-object/from16 v0, v33

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 395
    const-string v3, "contact_id IN ("

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    move-object/from16 v0, v33

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string v3, " AND "

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v39, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual/range {v44 .. v44}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 412
    .local v13, contactId:Ljava/lang/Long;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 414
    .end local v13           #contactId:Ljava/lang/Long;
    :cond_7
    move-object/from16 v22, v7

    .local v22, arr$:[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_5
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_8

    aget-object v42, v22, v25

    .line 415
    .local v42, str:Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v25, v25, 0x1

    goto :goto_5

    .line 418
    .end local v42           #str:Ljava/lang/String;
    :cond_8
    const-string v3, "SuggestedMemberListAdapter"

    const-string v4, "Begin the second query"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    #getter for: Lcom/android/contacts/group/SuggestedMemberListAdapter;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$000(Lcom/android/contacts/group/SuggestedMemberListAdapter;)Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v16, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->access$600()[Ljava/lang/String;

    move-result-object v17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(mimetype=? OR mimetype=? OR mimetype=? OR mimetype=? ) AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    const/16 v20, 0x0

    invoke-virtual/range {v15 .. v20}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v30

    .line 430
    .local v30, memberDataCursor:Landroid/database/Cursor;
    const-string v3, "SuggestedMemberListAdapter"

    const-string v4, "End the second query"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 434
    .local v28, jointContactsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    const/4 v3, -0x1

    :try_start_2
    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 435
    :cond_9
    :goto_6
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 436
    const/4 v3, 0x4

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    .line 438
    .local v34, rawContactId:J
    const/4 v3, 0x0

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 439
    .local v13, contactId:J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 441
    .restart local v8       #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    if-eqz v8, :cond_9

    .line 445
    invoke-virtual {v8}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getRawContactId()J

    move-result-wide v3

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-gez v3, :cond_b

    .line 446
    move-wide/from16 v0, v34

    invoke-virtual {v8, v0, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setRawContactId(J)V

    .line 465
    :cond_a
    :goto_7
    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 466
    .local v31, mimetype:Ljava/lang/String;
    const-string v3, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 468
    const/4 v3, 0x3

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v23

    .line 469
    .local v23, bitmapArray:[B
    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setPhotoByteArray([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 494
    .end local v8           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v13           #contactId:J
    .end local v23           #bitmapArray:[B
    .end local v31           #mimetype:Ljava/lang/String;
    .end local v34           #rawContactId:J
    :catchall_1
    move-exception v3

    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    throw v3

    .line 448
    .restart local v8       #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .restart local v13       #contactId:J
    .restart local v34       #rawContactId:J
    :cond_b
    :try_start_3
    invoke-virtual {v8}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->getRawContactId()J

    move-result-wide v3

    cmp-long v3, v3, v34

    if-eqz v3, :cond_a

    .line 449
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 450
    .local v45, tempMember:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    if-nez v45, :cond_c

    .line 451
    new-instance v45, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .end local v45           #tempMember:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    move-object/from16 v0, v45

    invoke-direct {v0, v3, v8}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;-><init>(Lcom/android/contacts/group/SuggestedMemberListAdapter;Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;)V

    .line 452
    .restart local v45       #tempMember:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    move-object/from16 v0, v45

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setRawContactId(J)V

    .line 453
    move-object/from16 v0, v43

    invoke-interface {v0, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v26

    .line 454
    .local v26, index:I
    if-ltz v26, :cond_d

    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v26

    if-gt v0, v3, :cond_d

    .line 455
    move-object/from16 v0, v43

    move/from16 v1, v26

    move-object/from16 v2, v45

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 459
    :goto_8
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    .end local v26           #index:I
    :cond_c
    move-object/from16 v8, v45

    goto :goto_7

    .line 457
    .restart local v26       #index:I
    :cond_d
    move-object/from16 v0, v43

    move-object/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 470
    .end local v26           #index:I
    .end local v45           #tempMember:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .restart local v31       #mimetype:Ljava/lang/String;
    :cond_e
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 474
    :cond_f
    invoke-virtual {v8}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->hasExtraInfo()Z

    move-result v3

    if-nez v3, :cond_10

    .line 475
    const/4 v3, 0x2

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 476
    .local v27, info:Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setExtraInfo(Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_9

    .line 479
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setFixExtrasInfo(Z)V

    goto/16 :goto_6

    .line 482
    .end local v27           #info:Ljava/lang/String;
    :cond_10
    invoke-virtual {v8}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->hasFixedExtrasInfo()Z

    move-result v3

    if-nez v3, :cond_9

    .line 483
    const/4 v3, 0x2

    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 484
    .restart local v27       #info:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_9

    .line 485
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setExtraInfo(Ljava/lang/String;)V

    .line 486
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;->setFixExtrasInfo(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_6

    .line 494
    .end local v8           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    .end local v13           #contactId:J
    .end local v27           #info:Ljava/lang/String;
    .end local v31           #mimetype:Ljava/lang/String;
    .end local v34           #rawContactId:J
    :cond_11
    invoke-interface/range {v30 .. v30}, Landroid/database/Cursor;->close()V

    .line 498
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object/from16 v0, v43

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v43

    .end local v43           #suggestionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    :cond_12
    move-object/from16 v0, v43

    move-object/from16 v1, v37

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 508
    iget-object v2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 509
    .local v2, suggestionsList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;>;"
    if-nez v2, :cond_0

    .line 522
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 517
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;

    .line 518
    .local v1, member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1

    .line 521
    .end local v1           #member:Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMember;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/SuggestedMemberListAdapter$SuggestedMemberFilter;->this$0:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
