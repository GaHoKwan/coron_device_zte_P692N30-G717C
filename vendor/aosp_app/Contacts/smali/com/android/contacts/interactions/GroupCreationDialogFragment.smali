.class public Lcom/android/contacts/interactions/GroupCreationDialogFragment;
.super Lcom/android/contacts/interactions/GroupNameDialogFragment;
.source "GroupCreationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final ARG_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final ARG_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final ARG_RAW_CONTACT_ID:Ljava/lang/String; = "rawContactId"

.field private static final ARG_RAW_CONTACT_SIM_INDEX:Ljava/lang/String; = "simIndex"

.field private static final EXTRA_SLOT_ID:Ljava/lang/String; = "slotId"

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "createGroupDialog"

.field private static final RAW_CONTACT_COUNT:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private final mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "GroupNameDialogFragment"

    sput-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 58
    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 98
    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 99
    return-void
.end method

.method private constructor <init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/contacts/interactions/GroupNameDialogFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 103
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    .line 104
    return-void
.end method

.method private static initDialogConfig(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;Landroid/os/Bundle;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "rawContactId"
    .parameter "listener"
    .parameter "args"

    .prologue
    .line 76
    new-instance v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    invoke-direct {v0, p6}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;-><init>(Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V

    .line 78
    .local v0, dialog:Lcom/android/contacts/interactions/GroupCreationDialogFragment;
    const-string v1, "accountType"

    invoke-virtual {p7, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "accountName"

    invoke-virtual {p7, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "dataSet"

    invoke-virtual {p7, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v1, "rawContactId"

    invoke-virtual {p7, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 82
    invoke-virtual {v0, p7}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 83
    const-string v1, "createGroupDialog"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;I)V
    .locals 9
    .parameter "fragmentManager"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "rawContactId"
    .parameter "simIndex"
    .parameter "listener"
    .parameter "slotId"

    .prologue
    .line 89
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v8, args:Landroid/os/Bundle;
    const-string v1, "slotId"

    move/from16 v0, p8

    invoke-virtual {v8, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "simIndex"

    invoke-virtual {v8, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move-object/from16 v7, p7

    .line 93
    invoke-static/range {v1 .. v8}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->initDialogConfig(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;Landroid/os/Bundle;)V

    .line 94
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;)V
    .locals 8
    .parameter "fragmentManager"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "rawContactId"
    .parameter "listener"

    .prologue
    .line 70
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, args:Landroid/os/Bundle;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 71
    invoke-static/range {v0 .. v7}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->initDialogConfig(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;Landroid/os/Bundle;)V

    .line 72
    return-void
.end method


# virtual methods
.method public checkName(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "name"
    .parameter "accountType"
    .parameter "accountName"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 173
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mContext:Landroid/content/Context;

    .line 178
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkName() mContext is null,return!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mApplicationContext:Landroid/content/Context;

    const v1, 0x7f0c006a

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v9

    .line 245
    :goto_0
    return v0

    .line 185
    :cond_0
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkName begiin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkName() name is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c0069

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v9

    .line 189
    goto :goto_0

    .line 200
    :cond_1
    const/4 v8, 0x0

    .line 202
    .local v8, nameExists:Z
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--accountName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--accountType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    :cond_2
    const-string p3, "Phone"

    .line 210
    const-string p2, "Local Phone Account"

    .line 216
    :cond_3
    if-nez v8, :cond_5

    .line 217
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "title=? AND account_name =? AND account_type=? AND deleted=0"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p3, v4, v10

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 223
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--cursor.getCount()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 225
    :cond_4
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "checkName() cursor have no data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-eqz v6, :cond_5

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 235
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_5
    :goto_1
    if-eqz v8, :cond_8

    .line 236
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f0c006b

    invoke-static {v0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    .line 240
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_6

    .line 241
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v7, v0, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_6
    move v0, v9

    .line 243
    goto/16 :goto_0

    .line 230
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 231
    const/4 v8, 0x1

    goto :goto_1

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_8
    move v0, v10

    .line 245
    goto/16 :goto_0
.end method

.method public getOnGroupCreatedListener()Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    return-object v0
.end method

.method protected getTitleResourceId()I
    .locals 1

    .prologue
    .line 117
    const v0, 0x7f0c02b0

    return v0
.end method

.method protected initializeGroupLabelEditText(Landroid/widget/EditText;)V
    .locals 0
    .parameter "editText"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mEditText:Landroid/widget/EditText;

    .line 113
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 252
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mApplicationContext:Landroid/content/Context;

    .line 253
    return-void
.end method

.method protected onCompleted(Ljava/lang/String;)V
    .locals 17
    .parameter "groupLabel"

    .prologue
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v12

    .line 123
    .local v12, arguments:Landroid/os/Bundle;
    const-string v3, "accountType"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 124
    .local v11, accountType:Ljava/lang/String;
    const-string v3, "accountName"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 125
    .local v10, accountName:Ljava/lang/String;
    const-string v3, "dataSet"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, dataSet:Ljava/lang/String;
    const-string v3, "rawContactId"

    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 129
    .local v14, rawCotnactId:J
    const-string v3, "slotId"

    const/4 v4, -0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 130
    .local v9, slotId:I
    const-string v3, "simIndex"

    const/4 v4, -0x1

    invoke-virtual {v12, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 131
    .local v16, simIndex:I
    const/4 v3, 0x1

    new-array v5, v3, [J

    .line 132
    .local v5, membersToAddArray:[J
    const/4 v3, 0x0

    aput-wide v14, v5, v3

    .line 133
    const/4 v3, 0x1

    new-array v8, v3, [I

    .line 134
    .local v8, simIndexArray:[I
    const/4 v3, 0x0

    aput v16, v8, v3

    .line 140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    if-eqz v3, :cond_0

    .line 141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->mListener:Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;

    invoke-interface {v3}, Lcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;->onGroupCreated()V

    .line 151
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v11, v10}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->checkName(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    sget-object v3, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    const-string v4, "onCompleted() checkName failed,return!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 162
    .local v2, activity:Landroid/app/Activity;
    new-instance v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    invoke-direct {v3, v10, v11, v13}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "android.intent.action.INSERT"

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v9}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;[II)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 258
    sget-object v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method
