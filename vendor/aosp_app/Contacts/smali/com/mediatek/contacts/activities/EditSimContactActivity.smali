.class public Lcom/mediatek/contacts/activities/EditSimContactActivity;
.super Landroid/app/Activity;
.source "EditSimContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;
    }
.end annotation


# static fields
.field private static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final EDIT_SIM_CONTACT:Ljava/lang/String; = "com.android.contacts.action.EDIT_SIM_CONTACT"

.field private static final LISTEN_PHONE_NONE_STATES:I = 0x2

.field private static final LISTEN_PHONE_STATES:I = 0x1

.field static final MODE_DEFAULT:I = 0x0

.field static final MODE_EDIT:I = 0x2

.field static final MODE_INSERT:I = 0x1

.field private static final SIM_DATA:Ljava/lang/String; = "simData"

.field private static final SIM_NUM_PATTERN:Ljava/lang/String; = "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

.field private static final SIM_OLD_DATA:Ljava/lang/String; = "simOldData"

.field private static final TAG:Ljava/lang/String; = "EditSimContactActivity"

.field private static final USIM_EMAIL_PATTERN:Ljava/lang/String; = "[[0-9][a-z][A-Z][_]][[0-9][a-z][A-Z][-_.]]*@[[0-9][a-z][A-Z][-_.]]+"

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

.field private mAirPlaneModeOn:Z

.field private mAirPlaneModeOnNotEdit:Z

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

.field mContactId:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDoublePhoneNumber:Z

.field private mEmail2GInvalid:Z

.field private mEmailInvalid:Z

.field private mFDNEnabled:Z

.field private mFixNumberInvalid:Z

.field private mFixNumberLong:Z

.field private mGeneralFailure:Z

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

.field mGroupNum:I

.field final mITel:Lcom/android/internal/telephony/ITelephony;

.field private mIndexInSim:J

.field mIndicate:J

.field private mLookupUri:Landroid/net/Uri;

.field mMode:I

.field private mNameLong:Z

.field private mNumberInvalid:Z

.field private mNumberIsNull:Z

.field private mNumberLong:Z

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

.field mPhbReady:Z

.field private mPhoneTypeSuffix:Ljava/lang/String;

.field private mQuitEdit:Z

.field mRawContactId:J

.field private mSIMInvalid:Z

.field private mSaveContactHandler:Landroid/os/Handler;

.field private mSaveDialog:Landroid/app/ProgressDialog;

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

.field private mStorageFull:Z

.field private mUpdateAdditionalNumber:Ljava/lang/String;

.field private mUpdateName:Ljava/lang/String;

.field private mUpdatemail:Ljava/lang/String;

.field private mUpdatephone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    .line 78
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    .line 79
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    .line 81
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    .line 85
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    .line 109
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

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 1550
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    .line 1551
    const-string v0, ""

    sput-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sUpdateNickname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    .line 97
    const-string v0, "SIM"

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountName:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    .line 116
    iput-wide v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J

    .line 118
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z

    .line 120
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOnNotEdit:Z

    .line 122
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFDNEnabled:Z

    .line 124
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSIMInvalid:Z

    .line 126
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberIsNull:Z

    .line 128
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z

    .line 130
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z

    .line 132
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberLong:Z

    .line 134
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNameLong:Z

    .line 136
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberLong:Z

    .line 138
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mStorageFull:Z

    .line 140
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    .line 142
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 144
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z

    .line 146
    iput-object v4, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;

    .line 148
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mEmailInvalid:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mEmail2GInvalid:Z

    .line 152
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mDoublePhoneNumber:Z

    .line 153
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    .line 156
    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveMode:I

    .line 166
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mITel:Lcom/android/internal/telephony/ITelephony;

    .line 175
    iput-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhbReady:Z

    .line 177
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    .line 179
    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mMode:I

    .line 181
    iput-wide v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    .line 183
    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mContactId:I

    .line 185
    iput v3, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    .line 191
    iput-object v4, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveContactHandler:Landroid/os/Handler;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldAnrsList:Ljava/util/ArrayList;

    .line 1552
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldNickname:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sUpdateNickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sUpdateNickname:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    return v0
.end method

.method static synthetic access$1402(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberIsNull:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->showSaveFailToast()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/contacts/activities/EditSimContactActivity;Landroid/net/Uri;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText2(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatephone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$2300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/contacts/activities/EditSimContactActivity;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->showResultToastText(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhoneTypeSuffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J

    return-wide v0
.end method

.method static synthetic access$2800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/mediatek/contacts/activities/EditSimContactActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->updateFailToastText(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldNickname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldAnrsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFDNEnabled:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSIMInvalid:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/mediatek/contacts/activities/EditSimContactActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdatemail:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mUpdateAdditionalNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/contacts/activities/EditSimContactActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method private doSaveAction(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1442
    const-string v1, "EditSimContactActivity"

    const-string v2, "In doSaveAction "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    if-ne p1, v3, :cond_1

    .line 1445
    const-string v1, "huibin"

    const-string v2, "doSaveAction mode == MODE_INSERT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const-string v1, "EditSimContactActivity"

    const-string v2, "mode == MODE_INSERT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->getsaveContactHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1449
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1450
    new-instance v1, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1459
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    if-ne p1, v4, :cond_0

    .line 1453
    const-string v1, "huibin"

    const-string v2, "doSaveAction mode == MODE_EDIT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    invoke-direct {p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->getsaveContactHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1455
    .restart local v0       #handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1456
    new-instance v1, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;

    invoke-direct {v1, p0, v4}, Lcom/mediatek/contacts/activities/EditSimContactActivity$InsertSimContactRunnable;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getsaveContactHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveContactHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 195
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "saveContacts"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, controllerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveContactHandler:Landroid/os/Handler;

    .line 199
    .end local v0           #controllerThread:Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveContactHandler:Landroid/os/Handler;

    return-object v1
.end method

.method private setSaveFailToastText()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1256
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1257
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSaveFailToastText mPhbReady is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhbReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhbReady:Z

    if-nez v2, :cond_1

    .line 1259
    const v2, 0x7f0c00fe

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1260
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    .line 1297
    :cond_0
    :goto_0
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSaveFailToastStrId IS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    if-ltz v2, :cond_b

    .line 1299
    new-instance v1, Lcom/mediatek/contacts/activities/EditSimContactActivity$1;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$1;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1312
    :goto_1
    return v0

    .line 1261
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z

    if-eqz v2, :cond_2

    .line 1262
    const v2, 0x7f0c0043

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1263
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOn:Z

    .line 1264
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1265
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFDNEnabled:Z

    if-eqz v2, :cond_3

    .line 1266
    const v2, 0x7f0c0044

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1267
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFDNEnabled:Z

    .line 1268
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1269
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSIMInvalid:Z

    if-eqz v2, :cond_4

    .line 1270
    const v2, 0x7f0c0041

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1271
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSIMInvalid:Z

    .line 1272
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1273
    :cond_4
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberIsNull:Z

    if-eqz v2, :cond_5

    .line 1274
    const v2, 0x7f0c0042

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1275
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberIsNull:Z

    goto :goto_0

    .line 1276
    :cond_5
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z

    if-eqz v2, :cond_6

    .line 1277
    const v2, 0x7f0c0045

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1278
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z

    goto :goto_0

    .line 1279
    :cond_6
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mEmailInvalid:Z

    if-eqz v2, :cond_7

    .line 1280
    const v2, 0x7f0c0046

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1281
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mEmailInvalid:Z

    goto :goto_0

    .line 1282
    :cond_7
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mEmail2GInvalid:Z

    if-eqz v2, :cond_8

    .line 1283
    const v2, 0x7f0c0047

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1284
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mEmail2GInvalid:Z

    goto :goto_0

    .line 1285
    :cond_8
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z

    if-eqz v2, :cond_9

    .line 1286
    const v2, 0x7f0c0048

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1287
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberInvalid:Z

    goto/16 :goto_0

    .line 1288
    :cond_9
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOnNotEdit:Z

    if-eqz v2, :cond_a

    .line 1289
    const v2, 0x7f0c0049

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1290
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAirPlaneModeOnNotEdit:Z

    .line 1291
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto/16 :goto_0

    .line 1292
    :cond_a
    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mDoublePhoneNumber:Z

    if-eqz v2, :cond_0

    .line 1293
    const v2, 0x7f0c003f

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1294
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mDoublePhoneNumber:Z

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 1312
    goto/16 :goto_1
.end method

.method private setSaveFailToastText2(Landroid/net/Uri;)Z
    .locals 5
    .parameter "checkUri"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1316
    if-eqz p1, :cond_b

    const-string v2, "error"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1317
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1318
    const-string v2, "-1"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1319
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberLong:Z

    .line 1320
    const v2, 0x7f0c004e

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1321
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberLong:Z

    .line 1354
    :cond_0
    :goto_0
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSaveFailToastText2 mSaveFailToastStrId IS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    if-ltz v2, :cond_a

    .line 1356
    new-instance v1, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$2;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1371
    :cond_1
    :goto_1
    return v0

    .line 1322
    :cond_2
    const-string v2, "-2"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1323
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNameLong:Z

    .line 1324
    const v2, 0x7f0c004c

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1325
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNameLong:Z

    goto :goto_0

    .line 1326
    :cond_3
    const-string v2, "-3"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1327
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mStorageFull:Z

    .line 1328
    const v2, 0x7f0c004d

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1329
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mStorageFull:Z

    .line 1330
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1331
    :cond_4
    const-string v2, "-6"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1332
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberLong:Z

    .line 1333
    const v2, 0x7f0c004b

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1334
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mFixNumberLong:Z

    goto :goto_0

    .line 1335
    :cond_5
    const-string v2, "-10"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1336
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    .line 1337
    const v2, 0x7f0c004f

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1338
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    .line 1339
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto/16 :goto_0

    .line 1340
    :cond_6
    const-string v2, "-11"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1341
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    .line 1342
    const v2, 0x7f0c00f9

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1343
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    .line 1344
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto/16 :goto_0

    .line 1345
    :cond_7
    const-string v2, "-12"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1346
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    .line 1347
    const v2, 0x7f0c00ab

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1348
    iput-boolean v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGeneralFailure:Z

    goto/16 :goto_0

    .line 1349
    :cond_8
    const-string v2, "-13"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1350
    const v2, 0x7f0c0050

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    goto/16 :goto_0

    .line 1351
    :cond_9
    const-string v2, "0"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1352
    const v2, 0x7f0c01cc

    iput v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 1369
    goto/16 :goto_1

    .line 1371
    :cond_b
    if-eqz p1, :cond_1

    move v0, v1

    goto/16 :goto_1
.end method

.method private showResultToastText(ILjava/lang/String;)V
    .locals 7
    .parameter "errorType"
    .parameter "param1"

    .prologue
    const/4 v6, -0x1

    .line 1413
    const/4 v1, 0x0

    .line 1414
    .local v1, toastMsg:Ljava/lang/String;
    if-ne p1, v6, :cond_0

    .line 1415
    const v2, 0x7f0c0161

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1417
    const-string v2, "EditSimContactActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[mtk performance result]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :goto_0
    move-object v0, v1

    .line 1422
    .local v0, msg:Ljava/lang/String;
    if-ne p1, v6, :cond_1

    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->compleDate()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1439
    :goto_1
    return-void

    .line 1419
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/mediatek/contacts/util/ContactsGroupUtils$USIMGroupException;->getErrorToastId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1425
    .restart local v0       #msg:Ljava/lang/String;
    :cond_1
    if-ne p1, v6, :cond_2

    invoke-virtual {p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->compleDate()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1426
    new-instance v2, Lcom/mediatek/contacts/activities/EditSimContactActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$4;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1432
    :cond_2
    new-instance v2, Lcom/mediatek/contacts/activities/EditSimContactActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$5;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private showSaveFailToast()V
    .locals 1

    .prologue
    .line 1555
    new-instance v0, Lcom/mediatek/contacts/activities/EditSimContactActivity$6;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$6;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1562
    return-void
.end method

.method private trimAnr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"

    .prologue
    .line 1539
    move-object v0, p1

    .line 1540
    .local v0, trimNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1541
    const-string v1, "EditSimContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[run] befor replaceall additional_number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1544
    const-string v1, "EditSimContactActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[run] after replaceall additional_number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_0
    return-object v0
.end method

.method private updateFailToastText(I)Z
    .locals 2
    .parameter "result"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x1

    .line 1377
    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1378
    if-ne p1, v1, :cond_1

    .line 1379
    const v1, 0x7f0c004e

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1398
    :cond_0
    :goto_0
    iget v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    if-ltz v1, :cond_8

    .line 1399
    new-instance v1, Lcom/mediatek/contacts/activities/EditSimContactActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity$3;-><init>(Lcom/mediatek/contacts/activities/EditSimContactActivity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1409
    :goto_1
    return v0

    .line 1380
    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    .line 1381
    const v1, 0x7f0c004c

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    goto :goto_0

    .line 1382
    :cond_2
    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    .line 1383
    const v1, 0x7f0c004d

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1384
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1385
    :cond_3
    const/4 v1, -0x6

    if-ne p1, v1, :cond_4

    .line 1386
    const v1, 0x7f0c004b

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    goto :goto_0

    .line 1387
    :cond_4
    const/16 v1, -0xa

    if-ne p1, v1, :cond_5

    .line 1388
    const v1, 0x7f0c004f

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1389
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1390
    :cond_5
    const/16 v1, -0xb

    if-ne p1, v1, :cond_6

    .line 1391
    const v1, 0x7f0c00f9

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    .line 1392
    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    goto :goto_0

    .line 1393
    :cond_6
    const/16 v1, -0xc

    if-ne p1, v1, :cond_7

    .line 1394
    const v1, 0x7f0c00ab

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    goto :goto_0

    .line 1395
    :cond_7
    const/16 v1, -0xd

    if-ne p1, v1, :cond_0

    .line 1396
    const v1, 0x7f0c0050

    iput v1, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveFailToastStrId:I

    goto :goto_0

    .line 1409
    :cond_8
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public backToFragment()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1470
    const-string v1, "EditSimContactActivity"

    const-string v2, "[backToFragment]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1472
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "simData1"

    iget-object v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1473
    const-string v1, "mQuitEdit"

    iget-boolean v2, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1474
    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1475
    iput-boolean v3, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mQuitEdit:Z

    .line 1476
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1477
    return-void
.end method

.method public compleDate()Z
    .locals 8

    .prologue
    .line 1481
    const/4 v2, 0x0

    .line 1482
    .local v2, compleName:Z
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1483
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1484
    const/4 v2, 0x1

    .line 1490
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 1491
    .local v4, complePhone:Z
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1492
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1493
    const/4 v4, 0x1

    .line 1499
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 1500
    .local v0, compleEmail:Z
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1501
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1502
    const/4 v0, 0x1

    .line 1508
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 1509
    .local v3, compleOther:Z
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1510
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1511
    const/4 v3, 0x1

    .line 1517
    :cond_3
    :goto_3
    const/4 v1, 0x0

    .line 1518
    .local v1, compleGroup:Z
    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    if-eqz v5, :cond_9

    .line 1519
    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1520
    const/4 v1, 0x1

    .line 1525
    :cond_4
    :goto_4
    const-string v5, "EditSimContactActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[showResultToastText]compleName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | complePhone : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | compleOther : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | compleEmail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | compleGroup : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    const-string v5, "EditSimContactActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[showResultToastText] sName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | sEmail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mOldEmail : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    if-eqz v3, :cond_a

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    const/4 v5, 0x1

    :goto_5
    return v5

    .line 1486
    .end local v0           #compleEmail:Z
    .end local v1           #compleGroup:Z
    .end local v3           #compleOther:Z
    .end local v4           #complePhone:Z
    :cond_5
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1487
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1495
    .restart local v4       #complePhone:Z
    :cond_6
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1496
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1504
    .restart local v0       #compleEmail:Z
    :cond_7
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1505
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 1513
    .restart local v3       #compleOther:Z
    :cond_8
    sget-object v5, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1514
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1522
    .restart local v1       #compleGroup:Z
    :cond_9
    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    if-nez v5, :cond_4

    .line 1523
    const/4 v1, 0x1

    goto/16 :goto_4

    .line 1530
    :cond_a
    const/4 v5, 0x0

    goto :goto_5
.end method

.method public fixIntent()Z
    .locals 27

    .prologue
    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    .line 475
    .local v15, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 476
    .local v20, resolver:Landroid/content/ContentResolver;
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "the fixintent resolver = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    .line 478
    .local v22, uri:Landroid/net/Uri;
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "uri is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, authority:Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v16

    .line 482
    .local v16, mimeType:Ljava/lang/String;
    const-string v23, "com.android.contacts"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 483
    const-string v23, "vnd.android.cursor.item/contact"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 485
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 486
    .local v6, contactId:J
    move-object/from16 v0, v20

    invoke-static {v0, v6, v7}, Lcom/mediatek/contacts/SubContactsUtils;->queryForRawContactId(Landroid/content/ContentResolver;J)J

    move-result-wide v23

    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    .line 495
    .end local v6           #contactId:J
    :cond_0
    :goto_0
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mRawContactId IS "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mRawContactId:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x1

    cmp-long v23, v23, v25

    if-gez v23, :cond_2

    .line 497
    const-string v23, "EditSimContactActivity"

    const-string v24, "the mRawContactId is wrong"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const v23, 0x7f0c00fe

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 499
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 500
    const/16 v23, 0x0

    .line 588
    :goto_1
    return v23

    .line 487
    :cond_1
    const-string v23, "vnd.android.cursor.item/raw_contact"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_0

    .line 488
    invoke-static/range {v22 .. v22}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    goto :goto_0

    .line 506
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    move-wide/from16 v23, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 510
    .local v19, oldcount:I
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[fixIntent] oldcount:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",mGroupNum:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",mSlotId:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",uri:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 515
    .local v17, oldbuffer:[Ljava/lang/String;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 516
    .local v18, oldbufferGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_b

    .line 517
    const-string v24, "EditSimContactActivity"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mSimOldData.get(0).getContentValues().get(i).getAsString(Data.MIMETYPE)   "

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v26, "mimetype"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const-string v24, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v25, "mimetype"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    .line 516
    :cond_3
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 522
    :cond_4
    const-string v24, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v25, "mimetype"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 526
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string v25, "ExtensionForAAS"

    invoke-virtual/range {v23 .. v25}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 529
    .local v8, cv:Landroid/content/ContentValues;
    invoke-static {v8}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAdditionalNumber(Landroid/content/ContentValues;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 530
    new-instance v3, Lcom/android/contacts/ext/Anr;

    invoke-direct {v3}, Lcom/android/contacts/ext/Anr;-><init>()V

    .line 531
    .local v3, addPhone:Lcom/android/contacts/ext/Anr;
    const-string v23, "data1"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->trimAnr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/android/contacts/ext/Anr;->mAdditionNumber:Ljava/lang/String;

    .line 532
    const-string v23, "data3"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v3, Lcom/android/contacts/ext/Anr;->mAasIndex:Ljava/lang/String;

    .line 533
    const-string v23, "_id"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    iput-wide v0, v3, Lcom/android/contacts/ext/Anr;->mId:J

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldAnrsList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 536
    .end local v3           #addPhone:Lcom/android/contacts/ext/Anr;
    :cond_5
    const-string v23, "data1"

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    goto/16 :goto_3

    .line 540
    .end local v8           #cv:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data2"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string v24, "7"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    goto/16 :goto_3

    .line 545
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    goto/16 :goto_3

    .line 550
    :cond_8
    const-string v24, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v25, "mimetype"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    goto/16 :goto_3

    .line 553
    :cond_9
    const-string v24, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v25, "mimetype"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 555
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "fixIntent(),GroupMembership.CONTENT_ITEM_TYPE,i="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 558
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "mimetype"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/mediatek/contacts/extension/aassne/SneExt;->isNickname(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v23 .. v23}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/ContentValues;

    const-string v24, "data1"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldNickname:Ljava/lang/String;

    .line 561
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "mOldNickname="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldNickname:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 565
    :cond_b
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "the mOldName is : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "   mOldOtherPhone : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldOtherPhone:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  mOldPhone:  "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldPhone:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mOldEmail : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldEmail:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[fixIntent] the mIndicate : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    move-wide/from16 v25, v0

    invoke-virtual/range {v24 .. v26}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " | the mSlotId : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "USIM Account"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_e

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v11, v0, [Ljava/lang/String;

    .line 572
    .local v11, groupName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v10, v0, [J

    .line 573
    .local v10, groupId:[J
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 574
    .local v5, bufferGroupNum:I
    const-string v23, "EditSimContactActivity"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "bufferGroupNum : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v23, "groupName"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 576
    const-string v23, "groupId"

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v10

    .line 577
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v5, :cond_e

    .line 578
    const/4 v9, 0x0

    .local v9, grnum:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v9, v0, :cond_d

    .line 579
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    aget-wide v25, v10, v9

    cmp-long v23, v23, v25

    if-nez v23, :cond_c

    .line 580
    aget-object v21, v11, v9

    .line 581
    .local v21, title:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Long;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 582
    .local v12, groupid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOldGroupAddList:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v12           #groupid:J
    .end local v21           #title:Ljava/lang/String;
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 577
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 588
    .end local v5           #bufferGroupNum:I
    .end local v9           #grnum:I
    .end local v10           #groupId:[J
    .end local v11           #groupName:[Ljava/lang/String;
    :cond_e
    const/16 v23, 0x1

    goto/16 :goto_1
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mOnBackGoing:Z

    .line 595
    const-string v0, "EditSimContactActivity"

    const-string v1, "[onBackPressed]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 598
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 31
    .parameter "savedState"

    .prologue
    .line 214
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    .line 218
    .local v18, intent:Landroid/content/Intent;
    const-string v27, "simData"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    .line 219
    const-string v27, "simOldData"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimOldData:Ljava/util/ArrayList;

    .line 221
    const-string v27, "slotId"

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getNonSlotId()I

    move-result v28

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    .line 222
    const-string v27, "indicate_phone_or_sim_contact"

    const-wide/16 v28, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    .line 223
    const-string v27, "simIndex"

    const/16 v28, -0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J

    .line 225
    const-string v27, "simSaveMode"

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveMode:I

    .line 226
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v27

    const-string v28, "account_type"

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "USIM Account"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    .line 229
    const-string v27, "groupNum"

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    .line 230
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "groupNum : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v27

    const-string v28, "account_name"

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountName:Ljava/lang/String;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    .line 234
    new-instance v27, Landroid/accounts/Account;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountName:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-direct/range {v27 .. v29}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccount:Landroid/accounts/Account;

    .line 240
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "the mSlotId is ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the mIndicate is ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndicate:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the mSaveMode = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveMode:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the accounttype is = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the uri is  = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " | mIndexInSim : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mIndexInSim:J

    move-wide/from16 v29, v0

    invoke-virtual/range {v28 .. v30}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isPhoneBookReady(I)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mPhbReady:Z

    .line 247
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v5, v0, [Ljava/lang/String;

    .line 248
    .local v5, buffer:[Ljava/lang/String;
    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v8, v0, [Ljava/lang/String;

    .line 250
    .local v8, bufferName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v6, v0, [J

    .line 254
    .local v6, bufferGroup:[J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 255
    .local v9, count:I
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "onCreate count:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/16 v20, 0x0

    .line 259
    .local v20, j:I
    const/16 v21, 0x0

    .line 260
    .local v21, k:I
    const/16 v22, 0x0

    .line 261
    .local v22, m:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v9, :cond_c

    .line 262
    const-string v28, "vnd.android.cursor.item/name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v29, "mimetype"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "data1"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    .line 261
    :cond_1
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 236
    .end local v5           #buffer:[Ljava/lang/String;
    .end local v6           #bufferGroup:[J
    .end local v8           #bufferName:[Ljava/lang/String;
    .end local v9           #count:I
    .end local v17           #i:I
    .end local v20           #j:I
    .end local v21           #k:I
    .end local v22           #m:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 462
    :cond_3
    :goto_2
    return-void

    .line 265
    .restart local v5       #buffer:[Ljava/lang/String;
    .restart local v6       #bufferGroup:[J
    .restart local v8       #bufferName:[Ljava/lang/String;
    .restart local v9       #count:I
    .restart local v17       #i:I
    .restart local v20       #j:I
    .restart local v21       #k:I
    .restart local v22       #m:I
    :cond_4
    const-string v28, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v29, "mimetype"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_8

    .line 269
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v28, v0

    const-string v29, "ExtensionForAAS"

    invoke-virtual/range {v27 .. v29}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 272
    .local v10, cv:Landroid/content/ContentValues;
    invoke-static {v10}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAdditionalNumber(Landroid/content/ContentValues;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 273
    new-instance v4, Lcom/android/contacts/ext/Anr;

    invoke-direct {v4}, Lcom/android/contacts/ext/Anr;-><init>()V

    .line 274
    .local v4, addPhone:Lcom/android/contacts/ext/Anr;
    const-string v27, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->trimAnr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v4, Lcom/android/contacts/ext/Anr;->mAdditionNumber:Ljava/lang/String;

    .line 275
    const-string v27, "data3"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    iput-object v0, v4, Lcom/android/contacts/ext/Anr;->mAasIndex:Ljava/lang/String;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAnrsList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/16 v27, 0x0

    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v5, v27

    goto/16 :goto_1

    .line 280
    .end local v4           #addPhone:Lcom/android/contacts/ext/Anr;
    :cond_5
    const-string v27, "data1"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v8, v22

    .line 281
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 291
    .end local v10           #cv:Landroid/content/ContentValues;
    :cond_6
    const-string v28, "7"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v29, "data2"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "data1"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v5, v20

    .line 297
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 299
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "data1"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v8, v22

    .line 301
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 305
    :cond_8
    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v29, "mimetype"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "data1"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    goto/16 :goto_1

    .line 308
    :cond_9
    const-string v28, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v29, "mimetype"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    array-length v0, v6

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "data1"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    aput-wide v27, v6, v21

    .line 312
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 314
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "mimetype"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/extension/aassne/SneExt;->isNickname(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimData:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/contacts/model/RawContactDelta;

    invoke-virtual/range {v27 .. v27}, Lcom/android/contacts/model/RawContactDelta;->getContentValues()Ljava/util/ArrayList;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/ContentValues;

    const-string v28, "data1"

    invoke-virtual/range {v27 .. v28}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    .line 317
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_b

    const-string v27, ""

    :goto_3
    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    .line 318
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "sNickname:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 317
    :cond_b
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sNickname:Ljava/lang/String;

    goto :goto_3

    .line 324
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mAccountType:Ljava/lang/String;

    move-object/from16 v27, v0

    const-string v28, "USIM Account"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_f

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v13, v0, [Ljava/lang/String;

    .line 326
    .local v13, groupName:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v27, v0

    move/from16 v0, v27

    new-array v12, v0, [J

    .line 327
    .local v12, groupId:[J
    array-length v7, v6

    .line 328
    .local v7, bufferGroupNum:I
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "bufferGroupNum : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v27, "groupName"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 330
    const-string v27, "groupId"

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 331
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v0, v7, :cond_f

    .line 332
    const/4 v11, 0x0

    .local v11, grnum:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupNum:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v11, v0, :cond_e

    .line 333
    aget-wide v27, v6, v17

    aget-wide v29, v12, v11

    cmp-long v27, v27, v29

    if-nez v27, :cond_d

    .line 334
    aget-object v25, v13, v11

    .line 335
    .local v25, title:Ljava/lang/String;
    aget-wide v14, v6, v17

    .line 336
    .local v14, groupid:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mGroupAddList:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v14           #groupid:J
    .end local v25           #title:Ljava/lang/String;
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 331
    :cond_e
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 344
    .end local v7           #bufferGroupNum:I
    .end local v11           #grnum:I
    .end local v12           #groupId:[J
    .end local v13           #groupName:[Ljava/lang/String;
    :cond_f
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v27

    const-string v28, "ExtensionForAAS"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v8, v1}, Lcom/android/contacts/ext/ContactDetailExtension;->isDoublePhoneNumber([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    .line 346
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mDoublePhoneNumber:Z

    .line 348
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z

    move-result v27

    if-nez v27, :cond_3

    .line 366
    :cond_10
    :goto_6
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "the sName is = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the sPhone is ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the buffer[] is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v5, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the sOtherPhone is = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "the email is ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v27

    if-eqz v27, :cond_11

    .line 369
    const-string v27, "USIM"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSimType:Ljava/lang/String;

    .line 371
    :cond_11
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initial phone number "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    .line 373
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_16

    .line 374
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    .line 380
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "*********** after split phone number "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",check valid:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v27, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    sget-object v28, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterPhone:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_12

    .line 384
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z

    .line 386
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z

    move-result v27

    if-eqz v27, :cond_16

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 354
    :cond_13
    const/16 v27, 0x1

    aget-object v27, v5, v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_14

    const/16 v27, 0x1

    aget-object v27, v8, v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_15

    .line 355
    :cond_14
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mDoublePhoneNumber:Z

    .line 357
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z

    move-result v27

    if-eqz v27, :cond_10

    goto/16 :goto_2

    .line 362
    :cond_15
    const/16 v27, 0x0

    aget-object v27, v5, v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    .line 363
    const/16 v27, 0x0

    aget-object v27, v8, v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    goto/16 :goto_6

    .line 392
    :cond_16
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initial sOtherPhone number "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    .line 394
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_18

    .line 399
    sget-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-static/range {v27 .. v27}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    .line 400
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "*********** after split sOtherPhone number "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",check valid:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    invoke-static/range {v29 .. v29}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v27, "[+]?[[0-9][*#pw,;]]+[[0-9][*#pw,;]]*"

    sget-object v28, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sAfterOtherPhone:Ljava/lang/String;

    invoke-static/range {v28 .. v28}, Lcom/mediatek/telephony/PhoneNumberUtilsEx;->extractCLIRPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_17

    .line 404
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mNumberInvalid:Z

    .line 406
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->setSaveFailToastText()Z

    move-result v27

    if-eqz v27, :cond_18

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 412
    :cond_18
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "initial name is  "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveMode:I

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    .line 419
    const/16 v27, 0x2

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mMode:I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mLookupUri:Landroid/net/Uri;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->fixIntent()Z

    move-result v19

    .line 422
    .local v19, isGoing:Z
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "isGoing : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    if-eqz v19, :cond_3

    .line 435
    .end local v19           #isGoing:Z
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v16

    .line 436
    .local v16, hasImported:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSlotId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->getServiceState(I)I

    move-result v24

    .line 437
    .local v24, serviceSate:I
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "[onCreate] serviceState : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " | hasImported : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    if-eqz v16, :cond_1c

    .line 441
    const v23, 0x7f0c004a

    .line 442
    .local v23, msgLoadingSimContactsToast:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v27

    const-string v28, "ExtensionForOP09"

    invoke-virtual/range {v27 .. v28}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_1a

    .line 444
    const v23, 0x7f0c00d6

    .line 447
    :cond_1a
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 448
    .local v26, toastMsg:Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/widget/Toast;->show()V

    .line 449
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 427
    .end local v16           #hasImported:Z
    .end local v23           #msgLoadingSimContactsToast:I
    .end local v24           #serviceSate:I
    .end local v26           #toastMsg:Ljava/lang/String;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    .line 453
    .restart local v16       #hasImported:Z
    .restart local v24       #serviceSate:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveMode:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/activities/EditSimContactActivity;->doSaveAction(I)V

    .line 455
    const-string v27, "EditSimContactActivity"

    const-string v28, "StructuredName.CONTENT_ITEM_TYPE = vnd.android.cursor.item/name"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v27, "EditSimContactActivity"

    const-string v28, "Phone.CONTENT_ITEM_TYPE = vnd.android.cursor.item/phone_v2"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v27, "EditSimContactActivity"

    const-string v28, "Email.CONTENT_ITEM_TYPE = vnd.android.cursor.item/email_v2"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v27, "EditSimContactActivity"

    const-string v28, "GroupMembership.CONTENT_ITEM_TYPE = vnd.android.cursor.item/group_membership"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v27, "EditSimContactActivity"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "the sName is = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sName:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the sPhone is ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the buffer[] is "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v29, v5, v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " the sOtherPhone is = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sOtherPhone:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "the email is ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/mediatek/contacts/activities/EditSimContactActivity;->sEmail:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveContactHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/mediatek/contacts/activities/EditSimContactActivity;->mSaveContactHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 469
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 470
    return-void
.end method

.method public startViewActivity(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1462
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1463
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1464
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1465
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1466
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1467
    return-void
.end method
