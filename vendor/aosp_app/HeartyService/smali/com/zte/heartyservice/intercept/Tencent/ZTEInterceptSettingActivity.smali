.class public Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;
.super Landroid/app/Activity;
.source "ZTEInterceptSettingActivity.java"


# static fields
.field public static BACLKLISTTYPE:I

.field public static LISTTYPE:Ljava/lang/String;

.field public static WHILTLISTTYPE:I


# instance fields
.field private mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mBlackListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

.field private mContext:Landroid/content/Context;

.field private mFilterMode:I

.field private mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

.field private mInterceptModeListView:Landroid/widget/ListView;

.field private mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

.field private mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

.field private mKeywordNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mWhiteListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->BACLKLISTTYPE:I

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->WHILTLISTTYPE:I

    .line 45
    const-string v0, "list_type"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->LISTTYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mFilterMode:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordNameList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static checkWhiteList(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const/4 v3, 0x2

    .line 353
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->isVipModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 355
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->quitVipmodeAlert(Landroid/content/Context;)V

    .line 356
    invoke-static {p0}, Lcom/zte/heartyservice/intercept/Common/VipModeUtils;->turnOffVipMode(Landroid/content/Context;)V

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    if-ne p1, v3, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 359
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a020b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a052d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a052f

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$6;

    invoke-direct {v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$6;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a052e

    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$5;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$5;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 384
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 385
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 386
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0
.end method

.method private static quitVipmodeAlert(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 391
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a038c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a038e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0173

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$7;

    invoke-direct {v3}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 401
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 402
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 403
    return-void
.end method

.method private refreshData()V
    .locals 7

    .prologue
    .line 183
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getCount()I

    move-result v0

    .line 184
    .local v0, blacknum:I
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0213

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setText(Ljava/lang/String;)V

    .line 186
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getCount()I

    move-result v2

    .line 187
    .local v2, whitenum:I
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0212

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setText(Ljava/lang/String;)V

    .line 189
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v3}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 190
    .local v1, keywordnum:I
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0215

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0214

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setText(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->refreshModeList()V

    .line 196
    return-void
.end method

.method private refreshModeList()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 199
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 200
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getFilterMod()I

    move-result v5

    iput v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mFilterMode:I

    .line 202
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    .line 203
    .local v3, standardAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    .line 204
    .local v0, blackListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    .line 206
    .local v4, whiteListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    .line 207
    .local v1, contactOnlyAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    .line 209
    .local v2, disableAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 210
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 211
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 213
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 214
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 216
    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mFilterMode:I

    packed-switch v5, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    invoke-virtual {v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;->notifyDataSetChanged()V

    .line 242
    .end local v0           #blackListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .end local v1           #contactOnlyAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .end local v2           #disableAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .end local v3           #standardAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .end local v4           #whiteListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    :cond_0
    return-void

    .line 218
    .restart local v0       #blackListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .restart local v1       #contactOnlyAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .restart local v2       #disableAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .restart local v3       #standardAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    .restart local v4       #whiteListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 222
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 226
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 229
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 232
    :pswitch_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setListData()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 255
    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-direct {v3}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;-><init>()V

    .line 256
    .local v3, standardAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0209

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setTitle(Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a020e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setSummary(Ljava/lang/String;)V

    .line 258
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 259
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsOnlyTitle(Ljava/lang/Boolean;)V

    .line 260
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsClickable(Ljava/lang/Boolean;)V

    .line 261
    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setInterceptModeType(I)V

    .line 262
    invoke-virtual {v3, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setShowDivider(Z)V

    .line 263
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;-><init>()V

    .line 266
    .local v0, blackListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a020a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setTitle(Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a020f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setSummary(Ljava/lang/String;)V

    .line 268
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 269
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsOnlyTitle(Ljava/lang/Boolean;)V

    .line 270
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsClickable(Ljava/lang/Boolean;)V

    .line 271
    invoke-virtual {v0, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setShowDivider(Z)V

    .line 272
    invoke-virtual {v0, v8}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setInterceptModeType(I)V

    .line 273
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-direct {v4}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;-><init>()V

    .line 276
    .local v4, whiteListAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a020b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setTitle(Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0210

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setSummary(Ljava/lang/String;)V

    .line 278
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 279
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsOnlyTitle(Ljava/lang/Boolean;)V

    .line 280
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsClickable(Ljava/lang/Boolean;)V

    .line 281
    invoke-virtual {v4, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setShowDivider(Z)V

    .line 282
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setInterceptModeType(I)V

    .line 283
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-direct {v1}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;-><init>()V

    .line 286
    .local v1, contactOnlyAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    const v5, 0x7f0a041c

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setTitle(Ljava/lang/String;)V

    .line 287
    const v5, 0x7f0a041e

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setSummary(Ljava/lang/String;)V

    .line 288
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 289
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsOnlyTitle(Ljava/lang/Boolean;)V

    .line 290
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsClickable(Ljava/lang/Boolean;)V

    .line 291
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setInterceptModeType(I)V

    .line 292
    invoke-virtual {v1, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setShowDivider(Z)V

    .line 293
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-direct {v2}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;-><init>()V

    .line 296
    .local v2, disableAdapterEntity:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a041d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setTitle(Ljava/lang/String;)V

    .line 297
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v6, 0x7f0a041f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setSummary(Ljava/lang/String;)V

    .line 298
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    .line 299
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsOnlyTitle(Ljava/lang/Boolean;)V

    .line 300
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsClickable(Ljava/lang/Boolean;)V

    .line 301
    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setInterceptModeType(I)V

    .line 302
    invoke-virtual {v2, v7}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setShowDivider(Z)V

    .line 303
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getFilterMod()I

    move-result v5

    iput v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mFilterMode:I

    .line 323
    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mFilterMode:I

    packed-switch v5, :pswitch_data_0

    .line 350
    :goto_0
    :pswitch_0
    return-void

    .line 325
    :pswitch_1
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 329
    :pswitch_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 341
    :pswitch_4
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 344
    :pswitch_5
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setRadioBtnIsSelected(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v4, 0x7f03006a

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->setContentView(I)V

    .line 59
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->setListData()V

    .line 61
    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    .line 62
    const v4, 0x7f0e0138

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeListView:Landroid/widget/ListView;

    .line 63
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeAdapter:Lcom/zte/heartyservice/intercept/Tencent/InterceptModeAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/zte/heartyservice/intercept/Tencent/KeyWordDao;->getInstance(Landroid/content/Context;)Ltmsdk/common/module/aresengine/IKeyWordDao;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    .line 66
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 67
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 69
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 70
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mListData:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/InterceptModeListDataEntity;->setIsClickable(Ljava/lang/Boolean;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mInterceptModeListView:Landroid/widget/ListView;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 113
    const v4, 0x7f0e0136

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    .line 115
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020031

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getCount()I

    move-result v0

    .line 117
    .local v0, blacknum:I
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0213

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setText(Ljava/lang/String;)V

    .line 119
    const v4, 0x7f0e0135

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    .line 121
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202e5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    invoke-virtual {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getCount()I

    move-result v3

    .line 123
    .local v3, whitenum:I
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0212

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setText(Ljava/lang/String;)V

    .line 125
    const v4, 0x7f0e0137

    invoke-virtual {p0, v4}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    .line 127
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeyWordDao:Ltmsdk/common/module/aresengine/IKeyWordDao;

    invoke-interface {v4}, Ltmsdk/common/module/aresengine/IKeyWordDao;->getAll()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 129
    .local v2, keywordnum:I
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0215

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0214

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setText(Ljava/lang/String;)V

    .line 131
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    iget-object v4, v4, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 136
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mBlackListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$2;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)V

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mWhiteListBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$3;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)V

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->mKeywordBtn:Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;

    new-instance v5, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$4;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity$4;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;)V

    invoke-virtual {v4, v5}, Lcom/zte/heartyservice/intercept/Common/TextToggleButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 179
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->refreshData()V

    .line 180
    return-void
.end method
