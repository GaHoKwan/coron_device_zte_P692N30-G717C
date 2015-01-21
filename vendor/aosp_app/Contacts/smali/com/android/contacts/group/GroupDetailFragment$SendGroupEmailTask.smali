.class Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;
.super Lcom/android/contacts/util/WeakAsyncTask;
.source "GroupDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/group/GroupDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendGroupEmailTask"
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
    .line 1034
    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    .line 1035
    invoke-direct {p0, p2}, Lcom/android/contacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 1036
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, [Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->doInBackground(Landroid/app/Activity;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground(Landroid/app/Activity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "target"
    .parameter "group"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupDetailFragment;->getGroupId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->getEmailAddressFromGroup(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailAddressFromGroup(Landroid/content/Context;J)Ljava/lang/String;
    .locals 21
    .parameter "context"
    .parameter "groupId"

    .prologue
    .line 1094
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

    .line 1095
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    .local v10, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1098
    .local v2, resolver:Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1099
    .local v9, allContacts:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    move-wide/from16 v0, p2

    #calls: Lcom/android/contacts/group/GroupDetailFragment;->getWhere(Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;
    invoke-static {v3, v2, v0, v1, v9}, Lcom/android/contacts/group/GroupDetailFragment;->access$2000(Lcom/android/contacts/group/GroupDetailFragment;Landroid/content/ContentResolver;JLjava/util/HashSet;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1100
    .local v20, where:Ljava/lang/StringBuilder;
    if-nez v20, :cond_0

    .line 1101
    const-string v3, ""

    .line 1158
    :goto_0
    return-object v3

    .line 1103
    :cond_0
    const-string v3, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string v3, "GroupDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getEmailAddressFromGroup]where "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
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

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "contact_id ASC "

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1110
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_a

    .line 1111
    const-wide/16 v12, -0x1

    .line 1112
    .local v12, candidateContactId:J
    const-string v11, ""

    .line 1114
    .local v11, candidateAddress:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1116
    .local v18, isDefault:I
    :cond_1
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1117
    const/4 v3, 0x2

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1118
    .local v16, id:J
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1119
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1121
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 1122
    .local v19, type:I
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1124
    .local v15, email:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1126
    const-wide/16 v3, -0x1

    cmp-long v3, v12, v3

    if-nez v3, :cond_5

    .line 1127
    move-wide/from16 v12, v16

    .line 1128
    move-object v11, v15

    .line 1146
    :cond_3
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->isLast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1147
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1148
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1149
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    :cond_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1130
    :cond_5
    cmp-long v3, v12, v16

    if-eqz v3, :cond_8

    .line 1131
    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1132
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1133
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1135
    :cond_6
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_7
    move-wide/from16 v12, v16

    .line 1138
    move-object v11, v15

    goto :goto_2

    .line 1140
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_3

    .line 1141
    move-wide/from16 v12, v16

    .line 1142
    move-object v11, v15

    goto :goto_2

    .line 1155
    .end local v15           #email:Ljava/lang/String;
    .end local v16           #id:J
    .end local v19           #type:I
    :cond_9
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1157
    .end local v11           #candidateAddress:Ljava/lang/String;
    .end local v12           #candidateContactId:J
    .end local v18           #isDefault:I
    :cond_a
    const-string v3, "GroupDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[getEmailAddressFromGroup]builder String:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    const-string v8, "email"

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
    .locals 8
    .parameter "target"
    .parameter "address"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1051
    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProgressDialog;

    .line 1052
    .local v4, progress:Landroid/app/ProgressDialog;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->this$0:Lcom/android/contacts/group/GroupDetailFragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1054
    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1064
    :cond_0
    const/4 v0, 0x0

    .line 1066
    .local v0, dataUri:Landroid/net/Uri;
    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 1067
    :cond_1
    const v5, 0x7f0c0065

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1091
    :cond_2
    :goto_0
    return-void

    .line 1070
    :cond_3
    const-string v5, ";"

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1071
    .local v3, list:[Ljava/lang/String;
    array-length v5, v3

    if-le v5, v6, :cond_4

    .line 1072
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1075
    :cond_4
    const/4 v5, 0x0

    aget-object p2, v3, v5

    .line 1076
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1079
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1080
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1081
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1083
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #list:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1084
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "GroupDetailFragment"

    const-string v6, "No activity found for Eamil"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const v5, 0x7f0c0066

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1088
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v1

    .line 1089
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "GroupDetailFragment"

    const-string v6, "SendGroupEmail error"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1030
    check-cast p1, Landroid/app/Activity;

    .end local p1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->onPostExecute(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute(Landroid/app/Activity;)V
    .locals 3
    .parameter "target"

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const v2, 0x7f0c005b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->mProgress:Ljava/lang/ref/WeakReference;

    .line 1042
    return-void
.end method

.method protected bridge synthetic onPreExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1030
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment$SendGroupEmailTask;->onPreExecute(Landroid/app/Activity;)V

    return-void
.end method
