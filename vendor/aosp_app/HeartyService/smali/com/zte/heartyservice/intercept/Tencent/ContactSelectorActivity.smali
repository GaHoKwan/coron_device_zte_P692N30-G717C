.class public Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;
.super Landroid/app/Activity;
.source "ContactSelectorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    }
.end annotation


# static fields
.field public static final MSG_FINISH_LOAD_DATA:I = 0x1

.field public static final MSG_LOAD_DATA:I = 0x0

.field public static final MSG_REFRESH:I = 0x2

.field protected static final STATE_ADVANCED_VIEW:I = 0x1

.field protected static final STATE_DEFAULT_VIEW:I


# instance fields
.field private final CUSTOMVIEW_DEFAULT:I

.field private final CUSTOMVIEW_UPDATE:I

.field private final MENUITEM_BACKUP_ID:I

.field private final MENUITEM_MOVE_ID:I

.field private final MENUITEM_NULL_GROUPID:I

.field private final MENUITEM_USED_GROUPID:I

.field private mContactSelectorAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;

.field private mContext:Landroid/content/Context;

.field private mCustomViewGroupNull:Landroid/view/View;

.field private mCustomViewGroupUsed:Landroid/view/View;

.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;",
            ">;"
        }
    .end annotation
.end field

.field mEntries:[Ljava/lang/String;

.field private mFrom:I

.field private mGroupNumber:I

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLocationManager:Ltmsdk/bg/module/location/LocationManager;

.field private mMenuData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mRawDataList:Ljava/util/List;

.field private mResultData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectAllBtn:Landroid/view/View;

.field mSelected:[Z

.field protected mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

.field private mState:I

.field private mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

.field private mType:I

.field private mVisibleGroup:I

.field private noRecordView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;

    .line 61
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->MENUITEM_NULL_GROUPID:I

    .line 62
    iput v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->MENUITEM_USED_GROUPID:I

    .line 63
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->MENUITEM_MOVE_ID:I

    .line 64
    iput v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->MENUITEM_BACKUP_ID:I

    .line 69
    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupNull:Landroid/view/View;

    .line 70
    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 71
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->CUSTOMVIEW_DEFAULT:I

    .line 72
    iput v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->CUSTOMVIEW_UPDATE:I

    .line 73
    new-array v0, v5, [Lcom/zte/heartyservice/apksmanager/AppSelected;

    sget-object v1, Lcom/zte/heartyservice/apksmanager/AppSelected;->SELECTED:Lcom/zte/heartyservice/apksmanager/AppSelected;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zte/heartyservice/apksmanager/AppSelected;->UNSELECTED:Lcom/zte/heartyservice/apksmanager/AppSelected;

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    .line 77
    new-array v0, v5, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelected:[Z

    .line 79
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    .line 84
    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    .line 87
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mHandler:Landroid/os/Handler;

    .line 761
    return-void

    .line 77
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->loadDataList()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->noRecordView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->triggerByListItem()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    return v0
.end method

.method private changeMenuItem(I)V
    .locals 3
    .parameter "visibleGroup"

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, bUpdate:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mGroupNumber:I

    if-ge v1, v2, :cond_0

    .line 237
    if-ne v1, p1, :cond_2

    .line 238
    const/4 v0, 0x1

    .line 243
    :cond_0
    if-eqz v0, :cond_1

    .line 244
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mVisibleGroup:I

    .line 246
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->invalidateOptionsMenu()V

    .line 248
    :cond_1
    return-void

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private filterCallList(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/CallLogEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 718
    .local v5, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    add-int/lit8 v6, v5, -0x1

    if-ge v0, v6, :cond_2

    .line 719
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, j:I
    :goto_1
    if-le v1, v0, :cond_1

    .line 720
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdk/common/module/aresengine/CallLogEntity;

    iget-object v7, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdk/common/module/aresengine/CallLogEntity;

    iget-object v6, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 721
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 719
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 718
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    .end local v1           #j:I
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v3

    .line 727
    .local v3, mBlackDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v4

    .line 728
    .local v4, mWhiteDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, j1:I
    :goto_2
    if-ltz v2, :cond_5

    .line 729
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdk/common/module/aresengine/CallLogEntity;

    iget-object v6, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltmsdk/common/module/aresengine/CallLogEntity;

    iget-object v6, v6, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 730
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 728
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 734
    :cond_5
    return-object p1
.end method

.method private filterContact(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ltmsdk/common/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v1

    .line 701
    .local v1, mBlackDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    .line 702
    .local v2, mWhiteDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 703
    .local v3, size:I
    add-int/lit8 v0, v3, -0x1

    .local v0, j1:I
    :goto_0
    if-ltz v0, :cond_2

    .line 704
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/aresengine/ContactEntity;

    iget-object v4, v4, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltmsdk/common/module/aresengine/ContactEntity;

    iget-object v4, v4, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 703
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 708
    :cond_2
    return-object p1
.end method

.method private filtersmsList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 744
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v3, result:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 747
    .local v5, tmplist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v1

    .line 748
    .local v1, mBlackDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    .line 750
    .local v2, mWhiteDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 751
    .local v4, sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    iget-object v6, v4, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v4, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 753
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v6, v4, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 758
    .end local v4           #sms:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_1
    return-object v3
.end method

.method private getNumberLocalText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "number"
    .parameter "name"

    .prologue
    .line 683
    move-object v1, p2

    .local v1, title:Ljava/lang/String;
    if-nez p2, :cond_0

    .line 684
    move-object v1, p1

    .line 686
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    invoke-virtual {v2, p1}, Ltmsdk/bg/module/location/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, location:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 690
    :cond_1
    return-object v1
.end method

.method private getSelectedData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    iget v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 528
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v4, r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 530
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    .line 531
    .local v6, selectorItem:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 532
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mName:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$900(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mInfoText:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$1000(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    #getter for: Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->mNumber:Ljava/lang/String;
    invoke-static {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->access$1100(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 538
    .end local v0           #i:I
    .end local v4           #r:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #selectorItem:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 539
    .local v7, tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 540
    iget-object v8, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    .line 541
    .restart local v6       #selectorItem:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getDate()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getName()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    const-string v8, ""

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getDate()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ";"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getInfoText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    :cond_3
    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->getName()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 548
    .end local v6           #selectorItem:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 549
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 550
    .local v2, item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 551
    .local v3, keys:[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v2           #item:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #keys:[Ljava/lang/String;
    :cond_5
    move-object v4, v5

    .line 553
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #tempMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    return-object v4
.end method

.method private getSelectedNumber()I
    .locals 4

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 558
    .local v2, tempint:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 559
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    .line 560
    .local v1, selectorItem:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    invoke-virtual {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 561
    add-int/lit8 v2, v2, 0x1

    .line 558
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .end local v1           #selectorItem:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_1
    return v2
.end method

.method private initActionBar()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 412
    new-array v2, v4, [I

    fill-array-data v2, :array_0

    .line 413
    .local v2, menuItemAdd:[I
    new-array v3, v4, [I

    fill-array-data v3, :array_1

    .line 415
    .local v3, menuItemBackup:[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->setGroupMenuItemData(Ljava/util/ArrayList;II)V

    .line 421
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 422
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 424
    const v4, 0x7f020104

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setIcon(I)V

    .line 426
    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->changeCustomView(I)V

    .line 427
    return-void

    .line 412
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x2t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 413
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1et 0x2t 0xat 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private loadDataList()V
    .locals 21

    .prologue
    .line 569
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    packed-switch v2, :pswitch_data_0

    .line 602
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 604
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    packed-switch v2, :pswitch_data_1

    .line 653
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 655
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$7;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 669
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    return-void

    .line 571
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getAllContact()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->filterContact(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    goto :goto_0

    .line 577
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getAllGroups()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    goto :goto_0

    .line 587
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getAllCallLog()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->filterCallList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    goto :goto_0

    .line 592
    :pswitch_3
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getSysContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v19

    .line 593
    .local v19, sysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getAllSMS()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->filtersmsList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .local v16, log:Ljava/lang/Object;
    move-object/from16 v18, v16

    .line 596
    check-cast v18, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 597
    .local v18, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-virtual/range {v18 .. v18}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    goto :goto_1

    .line 607
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #log:Ljava/lang/Object;
    .end local v18           #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .end local v19           #sysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    :pswitch_4
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltmsdk/common/module/aresengine/CallLogEntity;

    .line 609
    .local v11, callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    iget-object v2, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iget-object v3, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getNumberLocalText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iget-wide v4, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    invoke-static {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->getRelativeTimeSpanString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->name:Ljava/lang/String;

    iget-object v6, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    iget-wide v7, v11, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v10, v0, :cond_4

    const/4 v10, 0x1

    :goto_3
    invoke-direct/range {v1 .. v10}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    .line 613
    .local v1, item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 609
    .end local v1           #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 619
    .end local v11           #callLog:Ltmsdk/common/module/aresengine/CallLogEntity;
    .end local v14           #i:I
    :pswitch_5
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 620
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltmsdk/common/module/aresengine/ContactEntity;

    .line 621
    .local v12, contact:Ltmsdk/common/module/aresengine/ContactEntity;
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    iget-object v2, v12, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iget-object v3, v12, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getNumberLocalText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, v12, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    iget-object v6, v12, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v10, v0, :cond_5

    const/4 v10, 0x1

    :goto_5
    invoke-direct/range {v1 .. v10}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    .line 624
    .restart local v1       #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 621
    .end local v1           #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_5
    const/4 v10, 0x0

    goto :goto_5

    .line 629
    .end local v12           #contact:Ltmsdk/common/module/aresengine/ContactEntity;
    .end local v14           #i:I
    :pswitch_6
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 630
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 631
    .local v17, smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getNumberLocalText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    invoke-static {v4, v5}, Lcom/zte/heartyservice/intercept/Tencent/DateUtil;->getRelativeTimeSpanString(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getAddress()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    iget-wide v7, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v10, v0, :cond_6

    const/4 v10, 0x1

    :goto_7
    invoke-direct/range {v1 .. v10}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    .line 635
    .restart local v1       #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 631
    .end local v1           #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_6
    const/4 v10, 0x0

    goto :goto_7

    .line 641
    .end local v14           #i:I
    .end local v17           #smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :pswitch_7
    const/4 v14, 0x0

    .restart local v14       #i:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_1

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mRawDataList:Ljava/util/List;

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;

    .line 643
    .local v13, group:Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    iget-object v2, v13, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->groupName:Ljava/lang/String;

    invoke-virtual {v13}, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->getInfoText()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    iget-object v5, v13, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->groupName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v13, Lcom/zte/heartyservice/intercept/Tencent/GroupEntity;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v10, v0, :cond_7

    const/4 v10, 0x1

    :goto_9
    invoke-direct/range {v1 .. v10}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZ)V

    .line 645
    .restart local v1       #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 643
    .end local v1           #item:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;
    :cond_7
    const/4 v10, 0x0

    goto :goto_9

    .line 569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 604
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 376
    :goto_0
    return v3

    .line 344
    :pswitch_0
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->showModeSettingDialog()V

    .line 367
    :goto_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedData()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 350
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    const-string v1, "selecteddata"

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mResultData:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 352
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->LISTTYPE:Ljava/lang/String;

    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 353
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    if-nez v1, :cond_2

    .line 354
    const-string v1, "block_ring"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 355
    const-string v1, "block_message"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 361
    :goto_2
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 362
    const-string v1, "group_flag"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 365
    :cond_1
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 357
    :cond_2
    const-string v1, "block_ring"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 358
    const-string v1, "block_message"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 341
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showModeSettingDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0222

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mEntries:[Ljava/lang/String;

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mEntries:[Ljava/lang/String;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    new-array v2, v5, [Z

    fill-array-data v2, :array_0

    new-instance v3, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$4;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$4;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a021e

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$3;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0174

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 407
    return-void

    .line 380
    nop

    :array_0
    .array-data 0x1
        0x1t
        0x1t
    .end array-data
.end method

.method private triggerByListItem()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 197
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 198
    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedNumber()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_4

    .line 202
    :cond_2
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setActivated(Z)V

    .line 204
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->updateAllBtnView(Ljava/lang/String;)V

    .line 214
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 215
    .local v0, bUpdate:Z
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedNumber()I

    move-result v3

    if-nez v3, :cond_6

    .line 216
    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    if-nez v3, :cond_5

    move v0, v1

    .line 217
    :goto_1
    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    .line 222
    :goto_2
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->updateActionBarAll(Z)V

    .line 223
    return-void

    .line 205
    .end local v0           #bUpdate:Z
    :cond_4
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedNumber()I

    move-result v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 207
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 208
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setActivated(Z)V

    .line 209
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->updateAllBtnView(Ljava/lang/String;)V

    goto :goto_0

    .restart local v0       #bUpdate:Z
    :cond_5
    move v0, v2

    .line 216
    goto :goto_1

    .line 219
    :cond_6
    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    if-ne v2, v3, :cond_7

    move v0, v1

    .line 220
    :goto_3
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    goto :goto_2

    :cond_7
    move v0, v2

    .line 219
    goto :goto_3
.end method

.method private updateActionBarAll(Z)V
    .locals 1
    .parameter "bUpdate"

    .prologue
    .line 226
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 227
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getMenuItemGroupByState(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->changeMenuItem(I)V

    .line 228
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getCustomViewGroupByState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->changeCustomView(I)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getCustomViewGroupByState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->UpdateCustomView(I)V

    goto :goto_0
.end method


# virtual methods
.method protected UpdateCustomView(I)V
    .locals 6
    .parameter "group"

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 253
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v3, 0x1

    if-ne v3, p1, :cond_0

    .line 254
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    const v4, 0x7f0e002e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 255
    .local v1, customText:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedNumber()I

    move-result v2

    .line 256
    .local v2, nSelected:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a011b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 259
    .end local v1           #customText:Landroid/widget/TextView;
    .end local v2           #nSelected:I
    :cond_0
    return-void
.end method

.method protected changeCustomView(I)V
    .locals 12
    .parameter "group"

    .prologue
    const v11, 0x7f0e002e

    const v10, 0x7f0a011b

    const/16 v9, 0x10

    .line 431
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 432
    .local v0, actionBar:Landroid/app/ActionBar;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 452
    .local v5, layoutInflater:Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    if-nez v7, :cond_0

    .line 454
    const v7, 0x7f03000d

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 456
    .local v4, layout:Landroid/view/View;
    const v7, 0x7f0e0030

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 457
    .local v1, allButton:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->setSelectAllBtn(Landroid/view/View;)V

    .line 458
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/view/View;->setActivated(Z)V

    .line 461
    new-instance v7, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$5;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$5;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    const v7, 0x7f0e002c

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 470
    .local v2, backButton:Landroid/view/View;
    new-instance v7, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$6;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$6;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 477
    .local v3, customText:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedNumber()I

    move-result v6

    .line 479
    .local v6, nSelected:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    invoke-virtual {v0, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 483
    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    .line 484
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 495
    .end local v1           #allButton:Landroid/view/View;
    .end local v2           #backButton:Landroid/view/View;
    .end local v4           #layout:Landroid/view/View;
    :goto_0
    return-void

    .line 487
    .end local v3           #customText:Landroid/widget/TextView;
    .end local v6           #nSelected:I
    :cond_0
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 488
    .restart local v3       #customText:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getSelectedNumber()I

    move-result v6

    .line 489
    .restart local v6       #nSelected:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mCustomViewGroupUsed:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected getCustomViewGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 262
    if-nez p1, :cond_0

    .line 263
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected getMenuItemGroupByState(I)I
    .locals 1
    .parameter "state"

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSelectAllBtn()Landroid/view/View;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->setContentView(I)V

    .line 129
    const v1, 0x7f0e0084

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->noRecordView:Landroid/view/View;

    .line 130
    iput-object p0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    .line 132
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mEntries:[Ljava/lang/String;

    .line 134
    const-class v1, Ltmsdk/bg/module/location/LocationManager;

    invoke-static {v1}, Ltmsdk/bg/creator/ManagerCreatorB;->getManager(Ljava/lang/Class;)Ltmsdk/bg/creator/BaseManagerB;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/location/LocationManager;

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mLocationManager:Ltmsdk/bg/module/location/LocationManager;

    .line 136
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    .line 138
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "manner"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mFrom:I

    .line 140
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/ZTEInterceptSettingActivity;->LISTTYPE:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mType:I

    .line 141
    const v1, 0x7f0e0083

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    .line 144
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->initActionBar()V

    .line 147
    new-instance v1, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContactSelectorAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;

    .line 148
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 150
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 152
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;

    invoke-direct {v2, p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$2;-><init>(Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 169
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 508
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 510
    .local v0, dialog:Landroid/app/ProgressDialog;
    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 512
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0205

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 514
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 516
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 517
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    .line 300
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 302
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x0

    aget v4, v3, v4

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v5, 0x1

    aget v5, v3, v5

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v6, 0x2

    aget v6, v3, v6

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v7, 0x3

    aget v3, v3, v7

    invoke-interface {p1, v4, v5, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 304
    .local v2, item:Landroid/view/MenuItem;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 306
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v2           #item:Landroid/view/MenuItem;
    :cond_0
    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mVisibleGroup:I

    const/4 v4, 0x1

    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 121
    return-void
.end method

.method public refreshListData()V
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContactSelectorAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 677
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContactSelectorAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->setData(Ljava/util/ArrayList;)V

    .line 678
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mContactSelectorAdapter:Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorAdapter;->notifyDataSetChanged()V

    .line 679
    return-void
.end method

.method protected setAllListCheckStates(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 319
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 333
    :cond_0
    return-void

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 326
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 328
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity$ContactSelectorItem;->setmSelected(Z)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected setGroupMenuItemData(Ljava/util/ArrayList;II)V
    .locals 0
    .parameter
    .parameter "groupNumber"
    .parameter "visibleGroup"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[I>;II)V"
        }
    .end annotation

    .prologue
    .line 499
    .local p1, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mMenuData:Ljava/util/ArrayList;

    .line 500
    iput p2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mGroupNumber:I

    .line 501
    iput p3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mVisibleGroup:I

    .line 502
    return-void
.end method

.method public setSelectAllBtn(Landroid/view/View;)V
    .locals 0
    .parameter "selectAllBtn"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    .line 295
    return-void
.end method

.method protected triggerByAllBtn(Ljava/lang/String;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 172
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setActivated(Z)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->setAllListCheckStates(Z)V

    .line 177
    iput v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    .line 190
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->updateAllBtnView(Ljava/lang/String;)V

    .line 193
    :cond_0
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->updateActionBarAll(Z)V

    .line 194
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 181
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->setAllListCheckStates(Z)V

    .line 182
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelectAllBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 187
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->setAllListCheckStates(Z)V

    .line 188
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mState:I

    goto :goto_0
.end method

.method protected updateAllBtnView(Ljava/lang/String;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactSelectorActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :cond_0
    return-void
.end method
