.class public Lcom/android/contacts/quickcontact/QuickContactListFragment;
.super Landroid/app/Fragment;
.source "QuickContactListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QuickContactListFragment"


# instance fields
.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragmentContainer:Landroid/widget/RelativeLayout;

.field private mInsertedSimCount:I

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private final mOutsideClickListener:Landroid/view/View$OnClickListener;

.field protected final mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

.field protected final mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

.field protected final mVTCallActionClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    .line 273
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mInsertedSimCount:I

    .line 297
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mPrimaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 306
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mSecondaryActionClickListener:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    .line 440
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mVTCallActionClickListener:Landroid/view/View$OnClickListener;

    .line 89
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactListFragment;Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->bindCTView(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private bindCTView(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 8
    .parameter "resultView"
    .parameter "number"

    .prologue
    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v2, p2

    .line 277
    check-cast v2, Ljava/lang/String;

    .line 279
    .local v2, phoneNumber:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f0700d2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0701a1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0700d5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget v6, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mInsertedSimCount:I

    const-string v7, "ExtensionForOP09"

    invoke-virtual/range {v0 .. v7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z

    .line 290
    .end local v2           #phoneNumber:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private configureAdapter()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;

    invoke-direct {v1, p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 104
    const v2, 0x7f0400ab

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/RelativeLayout;

    .line 108
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v0

    .line 109
    .local v0, textColor:I
    if-eqz v0, :cond_0

    .line 110
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f07019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 111
    .local v1, viewBottomLine:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 117
    .end local v1           #viewBottomLine:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/RelativeLayout;

    const v3, 0x7f070147

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    .line 118
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mOutsideClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 122
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mFragmentContainer:Landroid/widget/RelativeLayout;

    return-object v2
.end method

.method public setActions(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, actions:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/Action;

    .line 128
    .local v0, act:Lcom/android/contacts/quickcontact/Action;
    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mActions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v0           #act:Lcom/android/contacts/quickcontact/Action;
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->configureAdapter()V

    .line 131
    return-void
.end method

.method public setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 135
    return-void
.end method

.method public showNewAddWidget(Lcom/android/contacts/quickcontact/Action;Landroid/view/View;Z)Z
    .locals 15
    .parameter "action"
    .parameter "resultView"
    .parameter "hasAlternateAction"

    .prologue
    .line 332
    if-eqz p1, :cond_c

    const-string v12, "vnd.android.cursor.item/phone_v2"

    invoke-interface/range {p1 .. p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 334
    const v12, 0x7f0700cd

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 336
    .local v2, imgAssociationSimFlag:Landroid/widget/ImageView;
    const v12, 0x7f0700ce

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 339
    .local v9, txtAssociationSimName:Landroid/widget/TextView;
    const/4 v6, -0x1

    .line 340
    .local v6, simId:I
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/mediatek/contacts/quickcontact/QuickDataAction;

    .line 341
    .local v3, isQuickDataAction:Z
    if-eqz v3, :cond_0

    .line 342
    check-cast p1, Lcom/mediatek/contacts/quickcontact/QuickDataAction;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/mediatek/contacts/quickcontact/QuickDataAction;->getSimId()I

    move-result v6

    .line 344
    :cond_0
    const/4 v12, -0x1

    if-le v6, v12, :cond_9

    .line 345
    if-eqz v2, :cond_1

    .line 346
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020055

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 348
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    :cond_1
    if-eqz v9, :cond_2

    .line 352
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    int-to-long v13, v6

    invoke-static {v12, v13, v14}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v7

    .line 353
    .local v7, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v7, :cond_8

    .line 354
    const-string v12, "QuickContactListFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "simInfo.mDisplayName is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v12, "QuickContactListFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "simInfo.mColor is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v12, v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v12, p0, Lcom/android/contacts/quickcontact/QuickContactListFragment;->mContext:Landroid/content/Context;

    int-to-long v13, v6

    invoke-static {v12, v13, v14}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v8

    .line 358
    .local v8, slotId:I
    const-string v12, "QuickContactListFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "slotId = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    if-ltz v8, :cond_7

    .line 360
    const-string v12, "QuickContactListFragment"

    const-string v13, "slotId >= 0 "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    sget-object v12, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    iget v13, v7, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v12, v12, v13

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    .line 369
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090066

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 371
    .local v4, paddingLeft:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090065

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 373
    .local v5, paddingRight:I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v4, v12, v5, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 379
    .end local v4           #paddingLeft:I
    .end local v5           #paddingRight:I
    .end local v8           #slotId:I
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .end local v7           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    :goto_2
    const v12, 0x7f0700d3

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 391
    .local v10, vewVtCallDivider:Landroid/view/View;
    const v12, 0x7f0700d5

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 393
    .local v1, btnVtCallAction:Landroid/widget/ImageView;
    const v12, 0x7f0700d6

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 394
    .local v11, viewActionDivider:Landroid/view/View;
    if-eqz v3, :cond_3

    .line 410
    :cond_3
    if-eqz v10, :cond_4

    .line 411
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    .line 413
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setClickable(Z)V

    .line 416
    :cond_4
    if-eqz v11, :cond_5

    .line 417
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 418
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setClickable(Z)V

    .line 420
    :cond_5
    if-eqz v1, :cond_6

    .line 421
    const/16 v12, 0x8

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroid/view/View;->setClickable(Z)V

    .line 427
    :cond_6
    const/4 v12, -0x1

    if-le v6, v12, :cond_b

    const/4 v12, 0x1

    .line 429
    .end local v1           #btnVtCallAction:Landroid/widget/ImageView;
    .end local v2           #imgAssociationSimFlag:Landroid/widget/ImageView;
    .end local v3           #isQuickDataAction:Z
    .end local v6           #simId:I
    .end local v9           #txtAssociationSimName:Landroid/widget/TextView;
    .end local v10           #vewVtCallDivider:Landroid/view/View;
    .end local v11           #viewActionDivider:Landroid/view/View;
    :goto_3
    return v12

    .line 364
    .restart local v2       #imgAssociationSimFlag:Landroid/widget/ImageView;
    .restart local v3       #isQuickDataAction:Z
    .restart local v6       #simId:I
    .restart local v7       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v8       #slotId:I
    .restart local v9       #txtAssociationSimName:Landroid/widget/TextView;
    :cond_7
    const-string v12, "QuickContactListFragment"

    const-string v13, "slotId < 0 "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const v12, 0x20200ee

    invoke-virtual {v9, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 376
    .end local v8           #slotId:I
    :cond_8
    const-string v12, "QuickContactListFragment"

    const-string v13, "not find siminfo"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 382
    .end local v7           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_9
    if-eqz v2, :cond_a

    .line 383
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :cond_a
    if-eqz v9, :cond_2

    .line 386
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 427
    .restart local v1       #btnVtCallAction:Landroid/widget/ImageView;
    .restart local v10       #vewVtCallDivider:Landroid/view/View;
    .restart local v11       #viewActionDivider:Landroid/view/View;
    :cond_b
    const/4 v12, 0x0

    goto :goto_3

    .line 429
    .end local v1           #btnVtCallAction:Landroid/widget/ImageView;
    .end local v2           #imgAssociationSimFlag:Landroid/widget/ImageView;
    .end local v3           #isQuickDataAction:Z
    .end local v6           #simId:I
    .end local v9           #txtAssociationSimName:Landroid/widget/TextView;
    .end local v10           #vewVtCallDivider:Landroid/view/View;
    .end local v11           #viewActionDivider:Landroid/view/View;
    .restart local p1
    :cond_c
    const/4 v12, 0x0

    goto :goto_3
.end method
