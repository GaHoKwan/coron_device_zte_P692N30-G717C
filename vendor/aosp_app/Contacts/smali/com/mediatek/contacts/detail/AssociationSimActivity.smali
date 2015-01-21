.class public Lcom/mediatek/contacts/detail/AssociationSimActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AssociationSimActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;,
        Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;,
        Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;,
        Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoAdapter;,
        Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;
    }
.end annotation


# static fields
.field public static final INTENT_DATA_KEY_CONTACT_DETAIL_INFO:Ljava/lang/String; = "contact_detail_info"

.field public static final INTENT_DATA_KEY_RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final INTENT_DATA_KEY_SEL_DATA_ID:Ljava/lang/String; = "sel_data_id"

.field public static final INTENT_DATA_KEY_SEL_SIM_ID:Ljava/lang/String; = "sel_sim_id"

.field private static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field private static final TAG:Ljava/lang/String; = "AssociationSimActivity"

.field private static mRealRawContactId:J


# instance fields
.field private final LOADER_DETAIL:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapterChildSize:I

.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnSave:Landroid/widget/Button;

.field private mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

.field private mContactPhoto:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mInitDataId:J

.field private mInitSimId:I

.field private mListView:Landroid/widget/ListView;

.field mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

.field private mOnListViewItemClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSelectDialog:Landroid/app/AlertDialog;

.field private mSelectDialogType:I

.field private mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mRealRawContactId:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->LOADER_DETAIL:I

    .line 66
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mActionBar:Landroid/app/ActionBar;

    .line 67
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactPhoto:Landroid/widget/ImageView;

    .line 68
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mListView:Landroid/widget/ListView;

    .line 69
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnSave:Landroid/widget/Button;

    .line 70
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnCancel:Landroid/widget/Button;

    .line 71
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 72
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    .line 73
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitDataId:J

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitSimId:I

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mAdapterChildSize:I

    .line 78
    iput-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialogType:I

    .line 219
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$1;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mOnListViewItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 694
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$2;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;)V

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/detail/AssociationSimActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialogType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/contacts/detail/AssociationSimActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mAdapterChildSize:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/contacts/detail/AssociationSimActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialogType:I

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/contacts/detail/AssociationSimActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitDataId:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$502(Lcom/mediatek/contacts/detail/AssociationSimActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitSimId:I

    return p1
.end method

.method static synthetic access$600(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->isSimInfoChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnSave:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/contacts/detail/AssociationSimActivity;)Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    return-object v0
.end method

.method private isSimInfoChanged()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 177
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    iget-object v1, v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->mNumberInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    iget-object v1, v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->mSimInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    invoke-virtual {v1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getShowingNumberSimId()I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    invoke-virtual {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->getShowingSimId()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 180
    :cond_0
    return v0
.end method

.method private returnToContactDetail(Z)V
    .locals 3
    .parameter "isNewIntent"

    .prologue
    .line 209
    const-string v0, "AssociationSimActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnToContactDetail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 217
    return-void
.end method


# virtual methods
.method public closeSelectDialog()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSelectDialog:Landroid/app/AlertDialog;

    .line 188
    :cond_0
    return-void
.end method

.method public initView()V
    .locals 3

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mActionBar:Landroid/app/ActionBar;

    .line 110
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 114
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iget-object v1, v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplayTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplaySubtitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iget-object v0, v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplaySubtitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iget-object v1, v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->mDisplaySubtitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactPhoto:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;->setPhoto(Landroid/widget/ImageView;)V

    .line 133
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 136
    :cond_1
    const v0, 0x7f07003c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mListView:Landroid/widget/ListView;

    .line 137
    const v0, 0x7f07003e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnSave:Landroid/widget/Button;

    .line 138
    const v0, 0x7f07003d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnCancel:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 327
    :goto_0
    return-void

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->saveAssociationSimInfo()V

    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->returnToContactDetail(Z)V

    goto :goto_0

    .line 321
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->returnToContactDetail(Z)V

    goto :goto_0

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x7f07003d
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedState"

    .prologue
    const-wide/16 v3, -0x1

    .line 85
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 88
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sel_data_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitDataId:J

    .line 89
    const-string v1, "sel_sim_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitSimId:I

    .line 90
    const-string v1, "contact_detail_info"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iput-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    .line 93
    const-string v1, "raw_contact_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    sput-wide v1, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mRealRawContactId:J

    .line 94
    iput-object p0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContext:Landroid/content/Context;

    .line 96
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mContactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    if-nez v1, :cond_0

    .line 97
    const-string v1, "AssociationSimActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onCreate]intent did not carry ContactDetailInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A ContactDetailInfo object should be put in the intent to launch this Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    const v1, 0x7f040007

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->initView()V

    .line 104
    new-instance v1, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 105
    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v1, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->setUpdateListener(Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;)V

    .line 106
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 168
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sel_data_id"

    iget-wide v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitDataId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const-string v1, "sel_sim_id"

    iget v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitSimId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 171
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 301
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 310
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 303
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->returnToContactDetail(Z)V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 331
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onResume()V

    .line 148
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    invoke-virtual {v0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->initNumberInfo()Z

    .line 149
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->initSimInfo(Landroid/content/Context;)Z

    .line 150
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    iget-wide v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitDataId:J

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->setShowingNumberNameByDataId(J)Z

    .line 151
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    iget v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mInitSimId:I

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->setShowingIndexBySimId(I)Z

    .line 153
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;

    invoke-direct {v1, p0, p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ListViewAdapter;-><init>(Lcom/mediatek/contacts/detail/AssociationSimActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 154
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mOnListViewItemClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mBtnSave:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/mediatek/contacts/detail/AssociationSimActivity;->isSimInfoChanged()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 157
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 721
    invoke-super {p0}, Lcom/android/contacts/activities/TransactionSafeActivity;->onStart()V

    .line 723
    sget-wide v1, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mRealRawContactId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 724
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 725
    .local v0, arg1:Landroid/os/Bundle;
    const-string v1, "raw_contact_id"

    sget-wide v2, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mRealRawContactId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 726
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 729
    .end local v0           #arg1:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 686
    if-nez p1, :cond_0

    .line 687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.associate_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 689
    :cond_0
    return-void
.end method

.method public saveAssociationSimInfo()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 191
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 192
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "sim_id"

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mSimInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;

    invoke-virtual {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$SimInfoMgr;->getShowingSimId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    iget-object v0, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "_id=? "

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/contacts/detail/AssociationSimActivity;->mNumberInfoMgr:Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;

    invoke-virtual {v2}, Lcom/mediatek/contacts/detail/AssociationSimActivity$NumberInfoMgr;->getShowingNumberDataId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/AsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setListViewChildText(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "text1"
    .parameter "text2"

    .prologue
    .line 200
    const v2, 0x7f070040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 201
    .local v1, txtTitle:Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const v2, 0x7f070041

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    .local v0, txtData:Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method
