.class Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendGroupSmsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/util/WeakAsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field private mProgress:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/contacts/group/GroupDetailFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/group/GroupDetailFragment;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "target"

    .prologue
    .line 797
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    .line 798
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 799
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 793
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, [Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->doInBackground(Landroid/app/Activity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "target"
    .parameter "group"

    .prologue
    .line 810
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupId()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->getSmsAddressFromGroup(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsAddressFromGroup(Landroid/content/Context;J)Ljava/lang/String;
    .locals 23
    .parameter "context"
    .parameter "groupId"

    .prologue
    .line 847
    const-string v3, "GroupDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "groupId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    .local v10, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 851
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 852
    .local v9, allContacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    move-wide/from16 v0, p2

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->getWhere(Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;
    invoke-static {v3, v2, v0, v1, v9}, Lcom/android/contacts/group/GroupDetailFragment;->access$2000(Lcom/android/contacts/group/GroupDetailFragment;Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 853
    .local v22, where:Ljava/lang/StringBuilder;
    if-nez v22, :cond_0

    .line 854
    const-string v3, ""

    .line 940
    :goto_0
    return-object v3

    .line 856
    :cond_0
    const-string v3, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v3, "GroupDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmsAddressFromGroup where "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "contact_id"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "is_primary"

    aput-object v6, v4, v5

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "contact_id ASC, _id ASC "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 861
    .local v15, cursor:Landroid/database/Cursor;
    if-eqz v15, :cond_f

    .line 862
    const-wide/16 v12, -0x1

    .line 863
    .local v12, candidateContactId:J
    const/4 v14, -0x1

    .line 864
    .local v14, candidateType:I
    const-string v11, ""

    .line 866
    .local v11, candidateAddress:Ljava/lang/String;
    const/16 v17, 0x0

    .line 868
    .local v17, isDefault:I
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 869
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 870
    .local v16, id:Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 871
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 873
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 874
    .local v21, type:I
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 876
    .local v19, number:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 878
    const-string v3, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 879
    .local v18, numIndex:I
    const/16 v20, -0x1

    .line 880
    .local v20, tempIndex:I
    const-string v3, ";"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-ltz v20, :cond_3

    .line 881
    if-gez v18, :cond_7

    .line 882
    move/from16 v18, v20

    .line 888
    :cond_3
    :goto_2
    if-eqz v18, :cond_1

    .line 890
    if-lez v18, :cond_4

    .line 891
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 894
    :cond_4
    const-wide/16 v3, -0x1

    cmp-long v3, v12, v3

    if-nez v3, :cond_9

    .line 895
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 896
    move/from16 v14, v21

    .line 897
    move-object/from16 v11, v19

    .line 925
    :cond_5
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 926
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 928
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 929
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 884
    :cond_7
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    :goto_4
    goto :goto_2

    :cond_8
    move/from16 v18, v20

    goto :goto_4

    .line 899
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v12, v3

    if-eqz v3, :cond_c

    .line 900
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 902
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 903
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 908
    move/from16 v14, v21

    .line 909
    move-object/from16 v11, v19

    goto :goto_3

    .line 911
    :cond_c
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_d

    .line 912
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 913
    move/from16 v14, v21

    .line 914
    move-object/from16 v11, v19

    goto :goto_3

    .line 917
    :cond_d
    const/4 v3, 0x2

    if-eq v14, v3, :cond_5

    const/4 v3, 0x2

    move/from16 v0, v21

    if-ne v0, v3, :cond_5

    .line 919
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 920
    move/from16 v14, v21

    .line 921
    move-object/from16 v11, v19

    goto :goto_3

    .line 936
    .end local v16           #id:Ljava/lang/Long;
    .end local v18           #numIndex:I
    .end local v19           #number:Ljava/lang/String;
    .end local v20           #tempIndex:I
    .end local v21           #type:I
    :cond_e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 938
    .end local v11           #candidateAddress:Ljava/lang/String;
    .end local v12           #candidateContactId:J
    .end local v14           #candidateType:I
    .end local v17           #isDefault:I
    :cond_f
    const-string v3, "GroupDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getSmsAddressFromGroup]address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    const-string v8, "sms"

    move-object/from16 v4, p1

    move-object v5, v10

    move-object v6, v2

    move-object v7, v9

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->showNoTelphoneOrEmailToast(Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/ContentResolver;Ljava/util/HashSet;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v3 .. v8}, Lcom/android/contacts/group/GroupDetailFragment;->access$2100(Lcom/android/contacts/group/GroupDetailFragment;Landroid/content/Context;Ljava/lang/StringBuilder;Landroid/content/ContentResolver;Ljava/util/HashSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method protected onPostExecute(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .parameter "target"
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 815
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ProgressDialog;

    .line 816
    .local v3, progress:Landroid/app/ProgressDialog;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v4}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 818
    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 820
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 821
    :cond_1
    const v4, 0x7f0c0064

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 844
    :cond_2
    :goto_0
    return-void

    .line 824
    :cond_3
    const-string v4, ";"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 825
    .local v2, list:[Ljava/lang/String;
    array-length v4, v2

    if-le v4, v5, :cond_4

    .line 826
    aget-object v4, v2, v5

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 828
    :cond_4
    aget-object p2, v2, v6

    .line 829
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 832
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "smsto"

    const/4 v5, 0x0

    invoke-static {v4, p2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 836
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    const v5, 0x7f0c01f9

    invoke-virtual {v4, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 841
    const-string v4, "GroupDetailFragment"

    const-string v5, "ActivityNotFoundException for secondaryIntent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 793
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 803
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const v2, 0x7f0c005b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->mProgress:Ljava/lang/ref/WeakReference;

    .line 806
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 793
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupSmsTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
