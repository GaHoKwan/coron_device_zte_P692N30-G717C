.class public Lcom/mediatek/contacts/simservice/SIMEditProcessor;
.super Lcom/mediatek/contacts/simservice/SIMProcessorBase;
.source "SIMEditProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final DEFAULT_ID:I = -0x1

.field public static final EDIT_SIM_ACTION:Ljava/lang/String; = "com.mediatek.contacts.simservice.EDIT_SIM"

.field private static final MODE_DEFAULT:I = 0x0

.field private static final MODE_EDIT:I = 0x2

.field private static final MODE_INSERT:I = 0x1

.field public static final RESULT_CANCELED:I = 0x0

.field public static final RESULT_NO_DATA:I = 0x2

.field public static final RESULT_OK:I = 0x1

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

.field public static final SIM_TYPE_SIM:Ljava/lang/String; = "SIM"

.field public static final SIM_TYPE_USIM:Ljava/lang/String; = "USIM"

.field private static final TAG:Ljava/lang/String; = "SIMEditProcessor"

.field private static final USIM_EMAIL_PATTERN:Ljava/lang/String; = "[[0-9][a-z][A-Z][_]][[0-9][a-z][A-Z][-_.]]*@[[0-9][a-z][A-Z][-_.]]+"

.field private static mHandler:Landroid/os/Handler;

.field private static mListener:Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

.field private static sAfterOtherPhone:Ljava/lang/String;

.field private static sAfterPhone:Ljava/lang/String;

.field private static sEmail:Ljava/lang/String;

.field private static sName:Ljava/lang/String;

.field private static sNickname:Ljava/lang/String;

.field private static sOtherPhone:Ljava/lang/String;

.field private static sPhone:Ljava/lang/String;

.field private static sUpdateNickname:Ljava/lang/String;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAnrsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ext/Anr;",
            ">;"
        }
    .end annotation
.end field

.field private mContactId:I

.field private mContext:Landroid/content/Context;

.field private mDoublePhoneNumber:Z

.field private mFixNumberInvalid:Z

.field mGroupAddList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNum:I

.field private mIndexInSim:J

.field private mIndicate:J

.field private mIntent:Landroid/content/Intent;

.field private mLookupUri:Landroid/net/Uri;

.field private mMode:I

.field private mNumberInvalid:Z

.field private mNumberIsNull:Z

.field private mOldAnrsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ext/Anr;",
            ">;"
        }
    .end annotation
.end field

.field private mOldEmail:Ljava/lang/String;

.field mOldGroupAddList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldName:Ljava/lang/String;

.field private mOldNickname:Ljava/lang/String;

.field private mOldOtherPhone:Ljava/lang/String;

.field private mOldPhone:Ljava/lang/String;

.field private mOnBackGoing:Z

.field private mPhbReady:Z

.field private mQuitEdit:Z

.field private mRawContactId:J

.field private mSaveFailToastStrId:I

.field private mSaveMode:I

.field private mSimData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mSimOldData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/RawContactDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mSimType:Ljava/lang/String;

.field private mSlotId:I

.field private mUpdateAdditionalNumber:Ljava/lang/String;

.field private mUpdateName:Ljava/lang/String;

.field private mUpdatemail:Ljava/lang/String;

.field private mUpdatephone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "additionalNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "groupIds"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 83
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    .line 84
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    .line 85
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    .line 86
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    .line 87
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterPhone:Ljava/lang/String;

    .line 88
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterOtherPhone:Ljava/lang/String;

    .line 133
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    .line 134
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    .line 137
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    .line 138
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V
    .locals 5
    .parameter "context"
    .parameter "slotId"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0, p3, p4}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;-><init>(Landroid/content/Intent;Lcom/mediatek/contacts/simservice/SIMProcessorManager$ProcessorCompleteListener;)V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    .line 102
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountName:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    .line 110
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    .line 111
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 112
    const-string v0, "SIM"

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    .line 114
    iput v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    .line 115
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    .line 116
    iput v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveMode:I

    .line 117
    iput v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mMode:I

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 119
    iput v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContactId:I

    .line 121
    iput-wide v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    .line 122
    iput-wide v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    .line 123
    iput-wide v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    .line 125
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mPhbReady:Z

    .line 126
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mDoublePhoneNumber:Z

    .line 127
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    .line 128
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    .line 129
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberIsNull:Z

    .line 130
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mFixNumberInvalid:Z

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOnBackGoing:Z

    .line 139
    iput-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldNickname:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAnrsList:Ljava/util/ArrayList;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldAnrsList:Ljava/util/ArrayList;

    .line 184
    iput-object p1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    .line 185
    iput p2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    .line 186
    iput-object p3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    .line 187
    return-void
.end method

.method static synthetic access$000()Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    return-object v0
.end method

.method private backToFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 586
    const-string v1, "SIMEditProcessor"

    const-string v2, "[backToFragment]"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 588
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simData1"

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 589
    const-string v1, "mQuitEdit"

    iget-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 590
    const-string v1, "result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v1, "com.mediatek.contacts.simservice.EDIT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnUiThread(Landroid/content/Intent;)V

    .line 593
    iput-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    .line 594
    return-void
.end method

.method private checkPhoneStatus()V
    .locals 1

    .prologue
    .line 1361
    iget v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mPhbReady:Z

    .line 1362
    return-void
.end method

.method private compareData()Z
    .locals 8

    .prologue
    .line 1301
    const/4 v2, 0x0

    .line 1302
    .local v2, compareName:Z
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1303
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1304
    const/4 v2, 0x1

    .line 1310
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 1311
    .local v4, comparePhone:Z
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1312
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1313
    const/4 v4, 0x1

    .line 1319
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 1320
    .local v0, compareEmail:Z
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1321
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1322
    const/4 v0, 0x1

    .line 1328
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 1329
    .local v3, compareOther:Z
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1330
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1331
    const/4 v3, 0x1

    .line 1337
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .line 1338
    .local v1, compareGroup:Z
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    .line 1339
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1340
    const/4 v1, 0x1

    .line 1345
    :cond_4
    :goto_4
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[compareData]compareName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | comparePhone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | compareOther : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | compareEmail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | compareGroup : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[compareData] sName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | sEmail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldEmail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | sPhone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldPhone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | sOtherPhone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldOtherPhone :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldOtherPhone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    :goto_5
    return v5

    .line 1306
    .end local v0           #compareEmail:Z
    .end local v1           #compareGroup:Z
    .end local v3           #compareOther:Z
    .end local v4           #comparePhone:Z
    :cond_5
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1307
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1315
    .restart local v4       #comparePhone:Z
    :cond_6
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1316
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1324
    .restart local v0       #compareEmail:Z
    :cond_7
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1325
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1333
    .restart local v3       #compareOther:Z
    :cond_8
    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1334
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1342
    .restart local v1       #compareGroup:Z
    :cond_9
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    if-nez v5, :cond_4

    .line 1343
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 1354
    :cond_a
    const/4 v5, 0x0

    goto :goto_5
.end method

.method private deliverCallback()V
    .locals 3

    .prologue
    .line 1365
    const-string v1, "SIMEditProcessor"

    const-string v2, "[deliverCallback]RESULT_OK---"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1367
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1368
    const-string v1, "com.mediatek.contacts.simservice.EDIT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1369
    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnUiThread(Landroid/content/Intent;)V

    .line 1370
    return-void
.end method

.method private deliverCallbackOnError()V
    .locals 3

    .prologue
    .line 1389
    const-string v1, "SIMEditProcessor"

    const-string v2, "[deliverCallbackOnError]RESULT_NO_DATA---"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1391
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1392
    const-string v1, "com.mediatek.contacts.simservice.EDIT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1393
    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnUiThread(Landroid/content/Intent;)V

    .line 1394
    return-void
.end method

.method private editSIMContact(Landroid/content/ContentResolver;)V
    .locals 14
    .parameter "resolver"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 793
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v13, updatevalues:Landroid/content/ContentValues;
    invoke-direct {p0, v13}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setUpdateValues(Landroid/content/ContentValues;)V

    .line 795
    const/4 v10, 0x0

    .line 797
    .local v10, cursor:Landroid/database/Cursor;
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setContactId()V

    .line 798
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[editSIMContact]mSimType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    const-string v0, "SIM"

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->isSIMUpdateValuesInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    const-string v0, "SIMEditProcessor"

    const-string v1, "[editSIMContact]isSIMUpdateValuesInvalid is true,return."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :goto_0
    return-void

    .line 804
    :cond_0
    const-string v0, "USIM"

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 805
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->isUSIMUpdateValuesInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 806
    const-string v0, "SIMEditProcessor"

    const-string v1, "[editSIMContact]isUSIMUpdateValuesInvalid is true,return."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    const-string v0, "SIMEditProcessor"

    const-string v1, "[editSIMContact]setSaveFailToastText is true,return."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOnBackGoing:Z

    goto :goto_0

    .line 816
    :cond_2
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    const/4 v5, 0x1

    const-string v6, "ExtensionForSNE"

    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/contacts/ext/ContactAccountExtension;->isTextValid(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 819
    const-string v0, "SIMEditProcessor"

    const-string v1, "[editSIMContact]showSNESaveFailToast,return."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showSNESaveFailToast()V

    goto :goto_0

    .line 829
    :cond_3
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    const-string v5, "ExtensionForAAS"

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/contacts/ext/ContactAccountExtension;->getProjection(I[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, addressBookColumnName:[Ljava/lang/String;
    iget v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 836
    if-eqz v10, :cond_5

    .line 838
    :try_start_0
    iget v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v0}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v13, v1, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 840
    .local v12, result:I
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[editSIMContact]result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-direct {p0, v12}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->updateFailToastText(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 842
    const-string v0, "SIMEditProcessor"

    const-string v1, "[editSIMContact]updateFailToastText,return."

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOnBackGoing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 851
    .end local v12           #result:I
    :cond_5
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->updateNameToDB(Landroid/content/ContentResolver;)V

    .line 852
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->updatePhoneNumberToDB(Landroid/content/ContentResolver;)V

    .line 853
    const/4 v11, -0x1

    .line 854
    .local v11, errorType:I
    const-string v0, "USIM"

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 855
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->updateEmail(Landroid/content/ContentResolver;)V

    .line 856
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    sget-object v6, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldNickname:Ljava/lang/String;

    iget-wide v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    move-object v5, p1

    invoke-static/range {v3 .. v9}, Lcom/mediatek/contacts/extension/aassne/SneExt;->updateDataToDb(ILjava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)V

    .line 859
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->updateAdditionalNumberToDB(Landroid/content/ContentResolver;)V

    .line 860
    invoke-direct {p0, p1, v11}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->upateGroup(Landroid/content/ContentResolver;I)I

    move-result v11

    .line 862
    :cond_6
    invoke-direct {p0, v11}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showResultToastText(I)V

    .line 864
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[editSIMContact]errorType :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/4 v0, -0x1

    if-ne v11, v0, :cond_7

    .line 866
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallback()V

    goto/16 :goto_0

    .line 847
    .end local v11           #errorType:I
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 868
    .restart local v11       #errorType:I
    :cond_7
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    goto/16 :goto_0
.end method

.method private getRawContactDataFromIntent(I[Ljava/lang/String;[Ljava/lang/String;[J)V
    .locals 11
    .parameter "kindCount"
    .parameter "additionalNumberBuffer"
    .parameter "numberBuffer"
    .parameter "groupBuffer"

    .prologue
    .line 344
    const-string v8, "SIMEditProcessor"

    const-string v9, "[getRawContactDataFromIntent]..."

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, additionalNumberIndex:I
    const/4 v5, 0x0

    .line 348
    .local v5, groupIndex:I
    const/4 v7, 0x0

    .line 349
    .local v7, numberIndex:I
    const/4 v6, 0x0

    .line 350
    .local v6, mimeType:Ljava/lang/String;
    const/4 v4, 0x0

    .line 351
    .local v4, data:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, countIndex:I
    :goto_0
    if-ge v2, p1, :cond_9

    .line 352
    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v9, "mimetype"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 353
    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v9, "data1"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    const-string v8, "SIMEditProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getRawContactDataFromIntent]countIndex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",mimeType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 358
    sput-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    .line 351
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 359
    :cond_1
    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 361
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v8

    iget-object v9, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    const-string v10, "ExtensionForAAS"

    invoke-virtual {v8, v9, v10}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 363
    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 364
    .local v3, cv:Landroid/content/ContentValues;
    invoke-static {v3}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAdditionalNumber(Landroid/content/ContentValues;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 365
    new-instance v0, Lcom/android/contacts/ext/Anr;

    invoke-direct {v0}, Lcom/android/contacts/ext/Anr;-><init>()V

    .line 366
    .local v0, addPhone:Lcom/android/contacts/ext/Anr;
    const-string v8, "data1"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->replaceCharOnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/contacts/ext/Anr;->mAdditionNumber:Ljava/lang/String;

    .line 367
    const-string v8, "data3"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/contacts/ext/Anr;->mAasIndex:Ljava/lang/String;

    .line 368
    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAnrsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v8, 0x0

    const-string v9, "data1"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, p2, v8

    goto :goto_1

    .line 371
    .end local v0           #addPhone:Lcom/android/contacts/ext/Anr;
    :cond_2
    const-string v8, "data1"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, p3, v7

    .line 372
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 376
    .end local v3           #cv:Landroid/content/ContentValues;
    :cond_3
    const-string v9, "7"

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v10, "data2"

    invoke-virtual {v8, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 378
    aput-object v4, p2, v1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 381
    :cond_4
    aput-object v4, p3, v7

    .line 382
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 385
    :cond_5
    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 386
    sput-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    goto/16 :goto_1

    .line 387
    :cond_6
    const-string v8, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    array-length v8, p4

    if-le v8, v5, :cond_7

    .line 389
    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v8}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string v9, "data1"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, p4, v5

    .line 391
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 392
    :cond_7
    invoke-static {v6}, Lcom/mediatek/contacts/extension/aassne/SneExt;->isNickname(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 393
    sput-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    .line 394
    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, ""

    :goto_2
    sput-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    .line 395
    const-string v8, "SIMEditProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[getRawContactDataFromIntent]sNickname:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 394
    :cond_8
    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    goto :goto_2

    .line 398
    :cond_9
    return-void
.end method

.method private insertGroupToUSIMCard(JI)I
    .locals 11
    .parameter "indexFromUri"
    .parameter "errorType"

    .prologue
    .line 1181
    const/4 v7, -0x1

    .line 1182
    .local v7, ugrpId:I
    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1183
    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1184
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1185
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1186
    .local v2, grpId:J
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1188
    .local v4, grpName:Ljava/lang/String;
    :try_start_0
    iget v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v8, v4}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->syncUSIMGroupNewIfMissing(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 1198
    :goto_1
    if-lez v7, :cond_0

    .line 1199
    iget v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    long-to-int v9, p1

    invoke-static {v8, v9, v7}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->addUSIMGroupMember(III)Z

    move-result v6

    .line 1200
    .local v6, suFlag:Z
    const-string v8, "SIMEditProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertGroupToUSIMCard]addUSIMGroupMember suFlag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",ugrpId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1189
    .end local v6           #suFlag:Z
    :catch_0
    move-exception v0

    .line 1190
    .local v0, e:Landroid/os/RemoteException;
    const-string v8, "SIMEditProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertGroupToUSIMCard]RemoteException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v7, -0x1

    .line 1197
    goto :goto_1

    .line 1192
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1193
    .local v0, e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    invoke-virtual {v0}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->getErrorType()I

    move-result p3

    .line 1194
    const-string v8, "SIMEditProcessor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[insertGroupToUSIMCard]errorType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",USIMGroupException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    const/4 v7, -0x1

    goto :goto_1

    .line 1203
    .end local v0           #e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 1207
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v2           #grpId:J
    .end local v4           #grpName:Ljava/lang/String;
    :cond_1
    return p3
.end method

.method private insertSIMContact(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V
    .locals 21
    .parameter "resolver"
    .parameter "values"

    .prologue
    .line 737
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->isInsertValuesInvalid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 738
    const-string v2, "SIMEditProcessor"

    const-string v3, "[insertSIMContact]isInsertValuesInvalid is true,return."

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void

    .line 742
    :cond_0
    const-string v2, "SIMEditProcessor"

    const-string v3, "[insertSIMContact]insert to SIM card---"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v17

    .line 744
    .local v17, checkUri:Landroid/net/Uri;
    const-string v2, "SIMEditProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insertSIMContact]values is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",checkUri is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    const-string v2, "SIMEditProcessor"

    const-string v3, "[insertSIMContact]setSaveFailToastText is true,return."

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOnBackGoing:Z

    goto :goto_0

    .line 752
    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v12

    .line 753
    .local v12, indexFromUri:J
    const-string v2, "SIMEditProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[insertSIMContact]insert to db,mSimType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/16 v18, -0x1

    .line 757
    .local v18, errorType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    const-string v3, "USIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 758
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v12, v13, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->insertGroupToUSIMCard(JI)I

    move-result v18

    .line 769
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAnrsList:Ljava/util/ArrayList;

    sget-object v16, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    move-object/from16 v8, p1

    invoke-static/range {v2 .. v16}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->insertToDB(Ljava/lang/String;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 772
    .local v20, lookupUri:Landroid/net/Uri;
    if-nez v20, :cond_3

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccount:Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    sget-object v7, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    move-object/from16 v8, p1

    invoke-static/range {v3 .. v14}, Lcom/mediatek/contacts/SubContactsUtils;->insertToDB(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;JLjava/lang/String;JLjava/util/Set;)Landroid/net/Uri;

    move-result-object v20

    .line 779
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showResultToastText(I)V

    .line 780
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 781
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 782
    .local v19, intent:Landroid/content/Intent;
    const-string v2, "com.mediatek.contacts.simservice.EDIT_SIM"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 784
    const-string v2, "result"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 785
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnUiThread(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 787
    .end local v19           #intent:Landroid/content/Intent;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    goto/16 :goto_0
.end method

.method private isContactEditable()Z
    .locals 8

    .prologue
    .line 597
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    .line 598
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 599
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mLookupUri:Landroid/net/Uri;

    .line 600
    .local v3, uri:Landroid/net/Uri;
    invoke-direct {p0, v0, v2, v3}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->isRawContactIdInvalid(Landroid/content/Intent;Landroid/content/ContentResolver;Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 601
    const v4, 0x7f0c00fe

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    .line 603
    const-string v4, "SIMEditProcessor"

    const-string v5, "[isContactEditable]isRawContactIdInvalid is true,return false."

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v4, 0x0

    .line 616
    :goto_0
    return v4

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    invoke-static {v4, v5, v6}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v4

    iput v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    .line 608
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v1, oldbufferGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setOldRawContactData(Ljava/util/ArrayList;)V

    .line 610
    const-string v4, "SIMEditProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "the mIndicate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | the mSlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    const-string v5, "USIM Account"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 613
    invoke-direct {p0, v0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setOldGroupAddList(Landroid/content/Intent;Ljava/util/ArrayList;)V

    .line 616
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private isInsertValuesInvalid()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1211
    const-string v2, "USIM"

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1212
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    .line 1266
    :goto_0
    return v0

    .line 1219
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1226
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberIsNull:Z

    .line 1233
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1234
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1236
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mFixNumberInvalid:Z

    .line 1251
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1252
    const-string v2, "SIMEditProcessor"

    const-string v3, "[isInsertValuesInvalid]setSaveFailToastText,return true."

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iput-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOnBackGoing:Z

    goto :goto_0

    .line 1227
    :cond_4
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1228
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1230
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    goto :goto_1

    .line 1240
    :cond_5
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1241
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallback()V

    goto/16 :goto_0

    .line 1243
    :cond_6
    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1244
    const-string v2, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v3}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1246
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    goto :goto_2

    .line 1258
    :cond_7
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    sget-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    iget v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    const-string v5, "ExtensionForSNE"

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/android/contacts/ext/ContactAccountExtension;->isTextValid(Ljava/lang/String;IILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1261
    const-string v1, "SIMEditProcessor"

    const-string v2, "[isInsertValuesInvalid]SNE,showSNESaveFailToast,return true."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showSNESaveFailToast()V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    .line 1266
    goto/16 :goto_0
.end method

.method public static isNeedRegisterHandlerAgain(Landroid/os/Handler;)Z
    .locals 4
    .parameter "handler"

    .prologue
    const/4 v0, 0x1

    .line 169
    const-string v1, "SIMEditProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isNeedRegisterHandlerAgain] handler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    if-ne v1, p0, :cond_0

    .line 178
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneNumberInvaild()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 310
    const-string v1, "SIMEditProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isPhoneNumberInvaild]initial phone number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    sput-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterPhone:Ljava/lang/String;

    .line 312
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterPhone:Ljava/lang/String;

    .line 315
    const-string v1, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterPhone:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    const-string v1, "SIMEditProcessor"

    const-string v2, "[isPhoneNumberInvaild]setSaveFailToastText,return true."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return v0

    .line 325
    :cond_1
    const-string v1, "SIMEditProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[isPhoneNumberInvaild]initial sOtherPhone number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    sput-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterOtherPhone:Ljava/lang/String;

    .line 327
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 328
    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterOtherPhone:Ljava/lang/String;

    .line 329
    const-string v1, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterOtherPhone:Ljava/lang/String;

    invoke-static {v2}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 331
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    .line 333
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 334
    const-string v1, "SIMEditProcessor"

    const-string v2, "[isPhoneNumberInvaild]setSaveFailToastText,return true."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRawContactIdInvalid(Landroid/content/Intent;Landroid/content/ContentResolver;Landroid/net/Uri;)Z
    .locals 6
    .parameter "intent"
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 687
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {p1, p2}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, mimeType:Ljava/lang/String;
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 691
    const-string v2, "vnd.android.cursor.item/contact"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-static {p2, v2, v3}, Lcom/mediatek/contacts/SubContactsUtils;->queryForRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    .line 699
    :cond_0
    :goto_0
    const-string v2, "SIMEditProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[isRawContactIdInvalid]authority:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mimeType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mRawContactId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-wide v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 703
    const/4 v2, 0x1

    .line 706
    :goto_1
    return v2

    .line 694
    :cond_1
    const-string v2, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    goto :goto_0

    .line 706
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isSIMUpdateValuesInvalid()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 916
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 919
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v6}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 922
    .local v3, iccUriForSim:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, where:Ljava/lang/String;
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSIMUpdateValuesInvalid]where:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",iccUriForSim:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 925
    .local v1, deleteDone:I
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSIMUpdateValuesInvalid]deleteDone result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    if-ne v1, v5, :cond_0

    .line 927
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContactId:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 928
    .local v2, deleteUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 929
    .local v0, deleteDB:I
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isSIMUpdateValuesInvalid]deleteDB result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    .end local v0           #deleteDB:I
    .end local v2           #deleteUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    .line 942
    .end local v1           #deleteDone:I
    .end local v3           #iccUriForSim:Landroid/net/Uri;
    .end local v4           #where:Ljava/lang/String;
    :goto_0
    return v5

    .line 933
    :cond_1
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 934
    const-string v6, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 936
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    .line 940
    :cond_2
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[isSIMUpdateValuesInvalid]mNumberInvalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isUSIMUpdateValuesInvalid()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 947
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 953
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v6}, Lcom/mediatek/contacts/simcontact/SimCardUtils$SimUri;->getSimUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 955
    .local v3, iccUriForUsim:Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 956
    .local v4, where:Ljava/lang/String;
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isUSIMUpdateValuesInvalid]where :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",iccUriForUsim:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v3, v4, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 959
    .local v1, deleteDone:I
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isUSIMUpdateValuesInvalid]deleteDone result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    if-ne v1, v5, :cond_0

    .line 961
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContactId:I

    int-to-long v7, v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 962
    .local v2, deleteUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v2, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 963
    .local v0, deleteDB:I
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[isUSIMUpdateValuesInvalid]deleteDB result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    .end local v0           #deleteDB:I
    .end local v2           #deleteUri:Landroid/net/Uri;
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    .line 989
    .end local v1           #deleteDone:I
    .end local v3           #iccUriForUsim:Landroid/net/Uri;
    .end local v4           #where:Ljava/lang/String;
    :goto_0
    return v5

    .line 967
    :cond_1
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 973
    :cond_2
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberIsNull:Z

    .line 980
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 981
    const-string v6, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 983
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mFixNumberInvalid:Z

    .line 986
    :cond_4
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mNumberIsNull:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberIsNull:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mNumberInvalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mFixNumberInvalid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mFixNumberInvalid:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 974
    :cond_5
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 975
    const-string v6, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 977
    iput-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    goto :goto_1
.end method

.method public static registerListener(Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;Landroid/os/Handler;)V
    .locals 3
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 150
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only activities can be registered to receive callback from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/mediatek/contacts/simservice/SIMProcessorService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[registerListener]listener added to SIMInsertProcessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    instance-of v0, p0, Lcom/android/contacts/activities/ContactEditorActivity;

    if-eqz v0, :cond_1

    .line 156
    sput-object p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    .line 157
    sput-object p1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    .line 159
    :cond_1
    return-void
.end method

.method private replaceCharOnNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 426
    move-object v0, p1

    .line 427
    .local v0, trimNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    const-string v1, "SIMEditProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[replaceCharOnNumber]befor replaceall number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "SIMEditProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[replaceCharOnNumber]after replaceall number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    return-object v0
.end method

.method private saveSimContact(I)V
    .locals 7
    .parameter "mode"

    .prologue
    .line 710
    const-string v4, "SIMEditProcessor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[saveSimContact]mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, checkUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 713
    .local v2, result:I
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 714
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    .line 715
    sget-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterPhone:Ljava/lang/String;

    iput-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    .line 716
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->replaceCharOnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    .line 718
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 719
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "tag"

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v5, "number"

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    const-string v5, "USIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 723
    invoke-direct {p0, v3}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->updateUSIMSpecValues(Landroid/content/ContentValues;)V

    .line 726
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_4

    .line 727
    const-string v4, "SIMEditProcessor"

    const-string v5, "[saveSimContact]mode is MODE_INSERT"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-direct {p0, v1, v3}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->insertSIMContact(Landroid/content/ContentResolver;Landroid/content/ContentValues;)V

    .line 733
    :cond_1
    :goto_2
    return-void

    .line 719
    :cond_2
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    goto :goto_0

    .line 720
    :cond_3
    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    goto :goto_1

    .line 729
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_1

    .line 730
    const-string v4, "SIMEditProcessor"

    const-string v5, "[saveSimContact]mode is MODE_EDIT"

    invoke-static {v4, v5}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-direct {p0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->editSIMContact(Landroid/content/ContentResolver;)V

    goto :goto_2
.end method

.method private setContactId()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 873
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "contact_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 876
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 877
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContactId:I

    .line 879
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setContactId]contactId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContactId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 883
    :cond_1
    return-void
.end method

.method private setGroupFromIntent([J)V
    .locals 11
    .parameter "groupBuffer"

    .prologue
    .line 401
    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    new-array v6, v7, [Ljava/lang/String;

    .line 402
    .local v6, groupNames:[Ljava/lang/String;
    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    new-array v4, v7, [J

    .line 403
    .local v4, groupIds:[J
    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v8, "groupName"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 404
    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v8, "groupId"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    .line 405
    const-string v7, "SIMEditProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[setGroupFromIntent]groupBuffer len :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v1, 0x0

    .local v1, groupBufferIndex:I
    :goto_0
    array-length v7, p1

    if-ge v1, v7, :cond_2

    .line 408
    const/4 v0, 0x0

    .local v0, grNum:I
    :goto_1
    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    if-ge v0, v7, :cond_1

    .line 409
    aget-wide v7, p1, v1

    aget-wide v9, v4, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 410
    aget-object v5, v6, v0

    .line 411
    .local v5, groupName:Ljava/lang/String;
    aget-wide v2, p1, v1

    .line 412
    .local v2, groupId:J
    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .end local v2           #groupId:J
    .end local v5           #groupName:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    .end local v0           #grNum:I
    :cond_2
    return-void
.end method

.method private setOldGroupAddList(Landroid/content/Intent;Ljava/util/ArrayList;)V
    .locals 11
    .parameter "intent"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p2, oldbufferGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    new-array v3, v7, [Ljava/lang/String;

    .line 621
    .local v3, groupName:[Ljava/lang/String;
    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    new-array v1, v7, [J

    .line 622
    .local v1, groupId:[J
    const-string v7, "SIMEditProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[getOldGroupAddList]oldbufferGroup.size() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v7, "groupName"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 624
    const-string v7, "groupId"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v1

    .line 625
    const/4 v2, 0x0

    .local v2, groupIndex:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 626
    const/4 v0, 0x0

    .local v0, grNum:I
    :goto_1
    iget v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    if-ge v0, v7, :cond_1

    .line 627
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    aget-wide v9, v1, v0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 628
    aget-object v6, v3, v0

    .line 629
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 630
    .local v4, groupid:J
    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    .end local v4           #groupid:J
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 625
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 634
    .end local v0           #grNum:I
    :cond_2
    return-void
.end method

.method private setOldRawContactData(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, oldbufferGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v9, 0x0

    .line 637
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 638
    .local v4, oldCount:I
    const/4 v3, 0x0

    .line 639
    .local v3, mimeType:Ljava/lang/String;
    const/4 v2, 0x0

    .line 641
    .local v2, data:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, oldIndex:I
    :goto_0
    if-ge v5, v4, :cond_8

    .line 642
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "mimetype"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "data1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 644
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setOldRawContactData]Data.MIMETYPE: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",data:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 647
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "data1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    .line 641
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 648
    :cond_1
    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 650
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    const-string v8, "ExtensionForAAS"

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 652
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 653
    .local v1, cv:Landroid/content/ContentValues;
    invoke-static {v1}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAdditionalNumber(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 654
    new-instance v0, Lcom/android/contacts/ext/Anr;

    invoke-direct {v0}, Lcom/android/contacts/ext/Anr;-><init>()V

    .line 655
    .local v0, addPhone:Lcom/android/contacts/ext/Anr;
    const-string v6, "data1"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->replaceCharOnNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/contacts/ext/Anr;->mAdditionNumber:Ljava/lang/String;

    .line 656
    const-string v6, "data3"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/contacts/ext/Anr;->mAasIndex:Ljava/lang/String;

    .line 657
    const-string v6, "_id"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/android/contacts/ext/Anr;->mId:J

    .line 658
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldAnrsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 660
    .end local v0           #addPhone:Lcom/android/contacts/ext/Anr;
    :cond_2
    const-string v6, "data1"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    goto :goto_1

    .line 663
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_3
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "data2"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "7"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 665
    iput-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    goto/16 :goto_1

    .line 667
    :cond_4
    iput-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    goto/16 :goto_1

    .line 670
    :cond_5
    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 671
    iput-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    goto/16 :goto_1

    .line 672
    :cond_6
    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 673
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setOldRawContactData] oldIndex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "data1"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 676
    :cond_7
    invoke-static {v3}, Lcom/mediatek/contacts/extension/aassne/SneExt;->isNickname(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 677
    iput-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldNickname:Ljava/lang/String;

    .line 678
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setOldRawContactData]mOldNickname="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldNickname:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 682
    :cond_8
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setOldRawContactData]The mOldName is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mOldOtherPhone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mOldPhone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,mOldEmail: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    return-void
.end method

.method private setSaveFailToastText()Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 437
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->checkPhoneStatus()V

    .line 438
    iput v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 439
    iget-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mPhbReady:Z

    if-nez v3, :cond_1

    .line 440
    const v3, 0x7f0c00fe

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 441
    iput-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    .line 467
    :cond_0
    :goto_0
    const-string v3, "SIMEditProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[setSaveFailToastText]mSaveFailToastStrId is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",mPhbReady:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mPhbReady:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    if-ltz v3, :cond_6

    .line 470
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    const v4, 0x7f0c00f9

    if-ne v3, v4, :cond_5

    .line 471
    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 473
    .local v0, specialErrorText:Ljava/lang/String;
    invoke-direct {p0, v7, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 477
    .end local v0           #specialErrorText:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->backToFragment()V

    .line 481
    :goto_2
    return v1

    .line 454
    :cond_1
    iget-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberIsNull:Z

    if-eqz v3, :cond_2

    .line 455
    const v3, 0x7f0c0042

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 456
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberIsNull:Z

    goto :goto_0

    .line 457
    :cond_2
    iget-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    if-eqz v3, :cond_3

    .line 458
    const v3, 0x7f0c0045

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 459
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mNumberInvalid:Z

    goto :goto_0

    .line 460
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mFixNumberInvalid:Z

    if-eqz v3, :cond_4

    .line 461
    const v3, 0x7f0c0048

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 462
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mFixNumberInvalid:Z

    goto :goto_0

    .line 463
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mDoublePhoneNumber:Z

    if-eqz v3, :cond_0

    .line 464
    const v3, 0x7f0c003f

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 465
    iput-boolean v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mDoublePhoneNumber:Z

    goto :goto_0

    .line 475
    :cond_5
    iget v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    goto :goto_1

    :cond_6
    move v1, v2

    .line 481
    goto :goto_2
.end method

.method private setSaveFailToastText(Landroid/net/Uri;)Z
    .locals 8
    .parameter "checkUri"

    .prologue
    const v6, 0x7f0c00f9

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 485
    if-eqz p1, :cond_c

    const-string v3, "error"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 486
    iput v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 487
    const-string v3, "-1"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 488
    const v3, 0x7f0c004e

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 509
    :cond_0
    :goto_0
    const-string v3, "SIMEditProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setSaveFailToastText uri,mSaveFailToastStrId is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    if-ltz v3, :cond_b

    .line 512
    iget v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    if-ne v3, v6, :cond_a

    .line 513
    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, specialErrorText:Ljava/lang/String;
    invoke-direct {p0, v7, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 519
    .end local v0           #specialErrorText:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->backToFragment()V

    .line 525
    :cond_1
    :goto_2
    return v1

    .line 489
    :cond_2
    const-string v3, "-2"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 490
    const v3, 0x7f0c004c

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto :goto_0

    .line 491
    :cond_3
    const-string v3, "-3"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 492
    const v3, 0x7f0c004d

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 493
    iput-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    goto :goto_0

    .line 494
    :cond_4
    const-string v3, "-6"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 495
    const v3, 0x7f0c004b

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto :goto_0

    .line 496
    :cond_5
    const-string v3, "-10"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    const v3, 0x7f0c004f

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 498
    iput-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    goto/16 :goto_0

    .line 499
    :cond_6
    const-string v3, "-11"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 500
    iput v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 501
    iput-boolean v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    goto/16 :goto_0

    .line 502
    :cond_7
    const-string v3, "-12"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 503
    const v3, 0x7f0c00ab

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto/16 :goto_0

    .line 504
    :cond_8
    const-string v3, "-13"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 505
    const v3, 0x7f0c0050

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto/16 :goto_0

    .line 506
    :cond_9
    const-string v3, "0"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    const v3, 0x7f0c01cc

    iput v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto/16 :goto_0

    .line 517
    :cond_a
    iget v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v1, v2

    .line 522
    goto/16 :goto_2

    .line 525
    :cond_c
    if-eqz p1, :cond_1

    move v1, v2

    goto/16 :goto_2
.end method

.method private setUpdateValues(Landroid/content/ContentValues;)V
    .locals 7
    .parameter "updatevalues"

    .prologue
    .line 886
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterOtherPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setUpdateValues] befor replaceall mUpdateAdditionalNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 892
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 893
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setUpdateValues] after replaceall mUpdateAdditionalNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :cond_0
    const-string v1, "newTag"

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v1, "newNumber"

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v1, "newAnr"

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAnrsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    const/4 v5, 0x2

    const-string v6, "ExtensionForAAS"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    .line 906
    const-string v1, "newEmails"

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/mediatek/contacts/extension/aassne/SneExt;->buildNicknameValueForInsert(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    .line 911
    const-string v0, "index"

    iget-wide v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 912
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setUpdateValues]updatevalues: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    goto :goto_0

    .line 898
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    goto :goto_1

    .line 899
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    goto :goto_2

    .line 906
    :cond_4
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    goto :goto_3
.end method

.method private showResultToastText(I)V
    .locals 5
    .parameter "errorType"

    .prologue
    const/4 v4, -0x1

    .line 564
    const-string v1, "SIMEditProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[showResultToastText]errorType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v0, 0x0

    .line 567
    .local v0, toastMsg:Ljava/lang/String;
    if-ne p1, v4, :cond_0

    .line 568
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0161

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 573
    :goto_0
    if-ne p1, v4, :cond_1

    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->compareData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    const-string v1, "SIMEditProcessor"

    const-string v2, "[showResultToastText]saved ,return."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_1
    return-void

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->getErrorToastId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 576
    :cond_1
    if-ne p1, v4, :cond_2

    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->compareData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 577
    const-string v1, "SIMEditProcessor"

    const-string v2, "[showResultToastText]showToastMessage default."

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, v4, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    goto :goto_1

    .line 580
    :cond_2
    invoke-direct {p0, v4, v0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 581
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->backToFragment()V

    goto :goto_1
.end method

.method private showSNESaveFailToast()V
    .locals 2

    .prologue
    .line 559
    const v0, 0x7f0c00be

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 560
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->backToFragment()V

    .line 561
    return-void
.end method

.method private showToastMessage(ILjava/lang/String;)V
    .locals 3
    .parameter "resourceId"
    .parameter "content"

    .prologue
    .line 1397
    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1398
    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1399
    .local v1, msg:Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 1400
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1401
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "content"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1403
    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1405
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static unregisterListener(Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 162
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[unregisterListener]listener removed from SIMInsertProcessor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mListener:Lcom/mediatek/contacts/simservice/SIMEditProcessor$Listener;

    .line 164
    sput-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    .line 165
    return-void
.end method

.method private upateGroup(Landroid/content/ContentResolver;I)I
    .locals 16
    .parameter "resolver"
    .parameter "errorType"

    .prologue
    .line 1123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 1124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1125
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1126
    .local v5, grpId:J
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1127
    .local v7, grpName:Ljava/lang/String;
    const/4 v11, -0x1

    .line 1129
    .local v11, ugrpId:I
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v12, v7}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->hasExistGroup(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1133
    :goto_1
    if-lez v11, :cond_0

    .line 1134
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    long-to-int v13, v13

    invoke-static {v12, v13, v11}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->deleteUSIMGroupMember(III)Z

    .line 1136
    :cond_0
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contact_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " AND "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "data1"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1141
    .local v1, delCount:I
    const-string v12, "SIMEditProcessor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[upateGroup]DB deleteCount:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    .end local v1           #delCount:I
    :catch_0
    move-exception v2

    .line 1131
    .local v2, e:Landroid/os/RemoteException;
    const/4 v11, -0x1

    goto :goto_1

    .line 1145
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5           #grpId:J
    .end local v7           #grpName:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #ugrpId:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 1146
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1147
    .local v9, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1148
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1149
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 1150
    .restart local v5       #grpId:J
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1151
    .restart local v7       #grpName:Ljava/lang/String;
    const/4 v11, -0x1

    .line 1153
    .restart local v11       #ugrpId:I
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v12, v7}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->syncUSIMGroupNewIfMissing(ILjava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v11

    .line 1163
    :goto_3
    if-lez v11, :cond_2

    .line 1164
    move-object/from16 v0, p0

    iget v12, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    long-to-int v13, v13

    invoke-static {v12, v13, v11}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroup;->addUSIMGroupMember(III)Z

    move-result v10

    .line 1165
    .local v10, suFlag:Z
    const-string v12, "SIMEditProcessor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[upateGroup]addUSIMGroupMember suFlag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",ugrpId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1169
    .local v4, groupValues:Landroid/content/ContentValues;
    const-string v12, "mimetype"

    const-string v13, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    const-string v12, "data1"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1171
    const-string v12, "raw_contact_id"

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1172
    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 1154
    .end local v4           #groupValues:Landroid/content/ContentValues;
    .end local v10           #suFlag:Z
    :catch_1
    move-exception v2

    .line 1155
    .restart local v2       #e:Landroid/os/RemoteException;
    const-string v12, "SIMEditProcessor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[upateGroup]RemoteException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    const/4 v11, -0x1

    .line 1162
    goto :goto_3

    .line 1157
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 1158
    .local v2, e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    invoke-virtual {v2}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->getErrorType()I

    move-result p2

    .line 1159
    const/4 v11, -0x1

    .line 1160
    const-string v12, "SIMEditProcessor"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[upateGroup]errorType:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",USIMGroupException:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1177
    .end local v2           #e:Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v5           #grpId:J
    .end local v7           #grpName:Ljava/lang/String;
    .end local v9           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;>;"
    .end local v11           #ugrpId:I
    :cond_3
    return p2
.end method

.method private updateAdditionalNumberToDB(Landroid/content/ContentResolver;)V
    .locals 14
    .parameter "resolver"

    .prologue
    .line 1062
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1064
    .local v9, additionalvalues:Landroid/content/ContentValues;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAnrsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldAnrsList:Ljava/util/ArrayList;

    iget-wide v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    const/4 v7, 0x1

    const-string v8, "ExtensionForAAS"

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/ext/ContactAccountExtension;->updateDataToDb(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/util/ArrayList;Ljava/util/ArrayList;JILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_contact_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is_additional_number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1071
    .local v13, whereadditional:Ljava/lang/String;
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAdditionalNumberToDB]whereadditional:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldOtherPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1075
    const-string v0, "data1"

    sget-object v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v9, v13, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 1078
    .local v12, upRet:I
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAdditionalNumberToDB]update ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    .end local v12           #upRet:I
    .end local v13           #whereadditional:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1080
    .restart local v13       #whereadditional:Ljava/lang/String;
    :cond_1
    const-string v0, "raw_contact_id"

    iget-wide v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1081
    const-string v0, "mimetype"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string v0, "data1"

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const-string v0, "is_additional_number"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1084
    const-string v0, "data2"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1085
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v11

    .line 1086
    .local v11, insertRetUri:Landroid/net/Uri;
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAdditionalNumberToDB]url insert ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1089
    .end local v11           #insertRetUri:Landroid/net/Uri;
    :cond_2
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v13, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 1090
    .local v10, delRet:I
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateAdditionalNumberToDB]delete ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateEmail(Landroid/content/ContentResolver;)V
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 1097
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1098
    .local v1, emailvalues:Landroid/content/ContentValues;
    const-string v5, "data2"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mimetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1101
    .local v4, wheremail:Ljava/lang/String;
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateEmail]wheremail:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1104
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1105
    const-string v5, "data1"

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v1, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1107
    .local v3, upRet:I
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateEmail]update ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    .end local v3           #upRet:I
    :goto_0
    return-void

    .line 1109
    :cond_0
    const-string v5, "raw_contact_id"

    iget-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1110
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    const-string v5, "data1"

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1113
    .local v2, insertRetUri:Landroid/net/Uri;
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateEmail]Uri insert ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1117
    .end local v2           #insertRetUri:Landroid/net/Uri;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1118
    .local v0, delRet:I
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateEmail]delete ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateFailToastText(I)Z
    .locals 3
    .parameter "result"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 529
    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 530
    if-ne p1, v1, :cond_1

    .line 531
    const v1, 0x7f0c004e

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 550
    :cond_0
    :goto_0
    iget v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    if-ltz v1, :cond_8

    .line 551
    iget v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 552
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->backToFragment()V

    .line 555
    :goto_1
    return v0

    .line 532
    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 533
    const v1, 0x7f0c004c

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto :goto_0

    .line 534
    :cond_2
    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    .line 535
    const v1, 0x7f0c004d

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 536
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    goto :goto_0

    .line 537
    :cond_3
    const/4 v1, -0x6

    if-ne p1, v1, :cond_4

    .line 538
    const v1, 0x7f0c004b

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto :goto_0

    .line 539
    :cond_4
    const/16 v1, -0xa

    if-ne p1, v1, :cond_5

    .line 540
    const v1, 0x7f0c004f

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 541
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    goto :goto_0

    .line 542
    :cond_5
    const/16 v1, -0xb

    if-ne p1, v1, :cond_6

    .line 543
    const v1, 0x7f0c00f9

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    .line 544
    iput-boolean v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mQuitEdit:Z

    goto :goto_0

    .line 545
    :cond_6
    const/16 v1, -0xc

    if-ne p1, v1, :cond_7

    .line 546
    const v1, 0x7f0c00ab

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto :goto_0

    .line 547
    :cond_7
    const/16 v1, -0xd

    if-ne p1, v1, :cond_0

    .line 548
    const v1, 0x7f0c0050

    iput v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveFailToastStrId:I

    goto :goto_0

    .line 555
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNameToDB(Landroid/content/ContentResolver;)V
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 993
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 994
    .local v2, namevalues:Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mimetype"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 996
    .local v4, wherename:Ljava/lang/String;
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNameToDB]wherename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mUpdateName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1000
    iget-object v5, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1001
    const-string v5, "data1"

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string v5, "data2"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1004
    const-string v5, "data3"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1005
    const-string v5, "data4"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1006
    const-string v5, "data5"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1007
    const-string v5, "data6"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1009
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v2, v4, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1010
    .local v3, upRet:I
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNameToDB]update ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    .end local v3           #upRet:I
    :goto_0
    return-void

    .line 1012
    :cond_0
    const-string v5, "raw_contact_id"

    iget-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1013
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v5, "data1"

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1016
    .local v1, insertRetUri:Landroid/net/Uri;
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNameToDB]uri insert ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1020
    .end local v1           #insertRetUri:Landroid/net/Uri;
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v5, v4, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1021
    .local v0, delRet:I
    const-string v5, "SIMEditProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[updateNameToDB]delete ret:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePhoneNumberToDB(Landroid/content/ContentResolver;)V
    .locals 11
    .parameter "resolver"

    .prologue
    const/4 v1, 0x0

    .line 1027
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1028
    .local v2, phonevalues:Landroid/content/ContentValues;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "is_additional_number"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "= 0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1031
    .local v10, wherephone:Ljava/lang/String;
    const-string v0, "SIMEditProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updatePhoneNumberToDB]wherephone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mOldPhone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mUpdatephone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1035
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mOldPhone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    const-string v0, "data1"

    sget-object v3, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, v10, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    .line 1038
    .local v9, upRet:I
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePhoneNumberToDB]update ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    .end local v9           #upRet:I
    :goto_0
    return-void

    .line 1040
    :cond_0
    const-string v0, "raw_contact_id"

    iget-wide v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mRawContactId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1041
    const-string v0, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v0, "data1"

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatephone:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    const-string v0, "is_additional_number"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1044
    const-string v0, "data2"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1047
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const/4 v5, 0x3

    const-string v6, "ExtensionForAAS"

    move-object v3, v1

    move-object v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    .line 1051
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 1052
    .local v8, insertRet:Landroid/net/Uri;
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePhoneNumberToDB]Uri insert ret:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    .end local v8           #insertRet:Landroid/net/Uri;
    :cond_1
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v10, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1056
    .local v7, delRet:I
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updatePhoneNumberToDB]delete ret: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUSIMSpecValues(Landroid/content/ContentValues;)V
    .locals 8
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 1270
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    .line 1273
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sAfterOtherPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 1274
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAnrsList:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const-string v6, "ExtensionForAAS"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1277
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUSIMSpecValues]before replace, mUpdateAdditionalNumber is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 1281
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 1282
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUSIMSpecValues]after replace, mUpdateAdditionalNumber is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    :cond_0
    const-string v1, "anr"

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :cond_1
    const-string v1, "emails"

    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    sget-object v5, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ExtensionForSNE"

    move-object v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->updateContentValues(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/ArrayList;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1295
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateUSIMSpecValues]SNE,sNickname :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sNickname:Ljava/lang/String;

    sput-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sUpdateNickname:Ljava/lang/String;

    .line 1298
    :cond_2
    return-void

    .line 1285
    :cond_3
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdateAdditionalNumber:Ljava/lang/String;

    goto :goto_0

    .line 1289
    :cond_4
    iget-object v0, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mUpdatemail:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method deliverCallbackOnUiThread(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1373
    const-string v0, "SIMEditProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[deliverCallbackOnUiThread] mHandler:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1375
    sget-object v0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/contacts/simservice/SIMEditProcessor$1;-><init>(Lcom/mediatek/contacts/simservice/SIMEditProcessor;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1386
    :cond_0
    return-void
.end method

.method public doWork()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/mediatek/contacts/simservice/SIMProcessorBase;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 197
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]cancel remove work. Thread id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v7, "simData"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    .line 203
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v7, "simOldData"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimOldData:Ljava/util/ArrayList;

    .line 204
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    .line 206
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    const-string v7, "USIM Account"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 207
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v7, "groupNum"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    .line 208
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]groupNum : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_2
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_name"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountName:Ljava/lang/String;

    .line 213
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_name"

    invoke-virtual {v6, v7}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountName:Ljava/lang/String;

    .line 214
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountName:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 215
    new-instance v6, Landroid/accounts/Account;

    iget-object v7, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountName:Ljava/lang/String;

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccount:Landroid/accounts/Account;

    .line 222
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v7, "indicate_phone_or_sim_contact"

    const-wide/16 v8, -0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    .line 223
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v7, "simIndex"

    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    .line 225
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    const-string v7, "simSaveMode"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveMode:I

    .line 226
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mLookupUri:Landroid/net/Uri;

    .line 227
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]the mSlotId is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the mIndicate is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndicate:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the mSaveMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the accounttype is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the uri is  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " | mIndexInSim : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mIndexInSim:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v6}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 232
    const-string v6, "USIM"

    iput-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimType:Ljava/lang/String;

    .line 236
    :cond_3
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSimData:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual {v6}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 237
    .local v4, kindCount:I
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]kindCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-array v0, v12, [Ljava/lang/String;

    .line 240
    .local v0, additionalNumberBuffer:[Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    .line 241
    .local v5, numberBuffer:[Ljava/lang/String;
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mGroupNum:I

    new-array v2, v6, [J

    .line 243
    .local v2, groupBuffer:[J
    invoke-direct {p0, v4, v0, v5, v2}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->getRawContactDataFromIntent(I[Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 246
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    const-string v7, "USIM Account"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 247
    invoke-direct {p0, v2}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setGroupFromIntent([J)V

    .line 251
    :cond_4
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v6

    const-string v7, "ExtensionForAAS"

    invoke-virtual {v6, v0, v5, v7}, Lcom/android/contacts/ext/ContactDetailExtension;->isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 253
    iput-boolean v11, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mDoublePhoneNumber:Z

    .line 254
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText()Z

    move-result v6

    if-nez v6, :cond_0

    .line 270
    :cond_5
    :goto_1
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]the sName is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the sPhone is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the sOtherPhone is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "the email is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->isPhoneNumberInvaild()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 274
    const-string v6, "SIMEditProcessor"

    const-string v7, "[dowork]isPhoneNumberInvaild is true,return."

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    goto/16 :goto_0

    .line 217
    .end local v0           #additionalNumberBuffer:[Ljava/lang/String;
    .end local v2           #groupBuffer:[J
    .end local v4           #kindCount:I
    .end local v5           #numberBuffer:[Ljava/lang/String;
    :cond_6
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]accountType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "accountName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mAccountName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    goto/16 :goto_0

    .line 259
    .restart local v0       #additionalNumberBuffer:[Ljava/lang/String;
    .restart local v2       #groupBuffer:[J
    .restart local v4       #kindCount:I
    .restart local v5       #numberBuffer:[Ljava/lang/String;
    :cond_7
    aget-object v6, v0, v11

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    aget-object v6, v5, v11

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 261
    :cond_8
    iput-boolean v11, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mDoublePhoneNumber:Z

    .line 262
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->setSaveFailToastText()Z

    move-result v6

    if-eqz v6, :cond_5

    goto/16 :goto_0

    .line 266
    :cond_9
    aget-object v6, v0, v10

    sput-object v6, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    .line 267
    aget-object v6, v5, v10

    sput-object v6, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    goto/16 :goto_1

    .line 279
    :cond_a
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveMode:I

    if-ne v6, v12, :cond_c

    .line 280
    iput v12, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mMode:I

    .line 281
    iget-object v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mLookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_b

    .line 282
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->isContactEditable()Z

    move-result v1

    .line 283
    .local v1, editable:Z
    if-nez v1, :cond_c

    .line 284
    const-string v6, "SIMEditProcessor"

    const-string v7, "[dowork]isContactEditable is false ,return."

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 288
    .end local v1           #editable:Z
    :cond_b
    const-string v6, "SIMEditProcessor"

    const-string v7, "[dowork]mLookupUri is null,return."

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    goto/16 :goto_0

    .line 294
    :cond_c
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSlotId:I

    invoke-static {v6}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v3

    .line 296
    .local v3, hasImported:Z
    if-eqz v3, :cond_d

    .line 297
    const-string v6, "SIMEditProcessor"

    const-string v7, "[dowork]hasImported,return."

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const v6, 0x7f0c004a

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->showToastMessage(ILjava/lang/String;)V

    .line 299
    invoke-direct {p0}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->deliverCallbackOnError()V

    goto/16 :goto_0

    .line 303
    :cond_d
    iget v6, p0, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->mSaveMode:I

    invoke-direct {p0, v6}, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->saveSimContact(I)V

    .line 304
    const-string v6, "SIMEditProcessor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[dowork]the sName is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",the sPhone is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " the buffer[] is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",the sOtherPhone is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sOtherPhone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",the email is ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/mediatek/contacts/simservice/SIMEditProcessor;->sEmail:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x3

    return v0
.end method
