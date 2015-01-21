.class public Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;
.super Lcom/android/contacts/ext/ContactDetailEnhancementExtension;
.source "OP09ContactDetailEnhancementExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;
    }
.end annotation


# static fields
.field private static final DETAIL_HISTORY_INDEX:I = 0x1

.field private static final FRAGMENT_CAROUSEL:I = 0x2

.field private static final TAB_INDEX_DETAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactDetailEnhancementExtension"

.field private static final TWO_COLUMN:I = 0x0

.field private static final TWO_COLUMN_FRAGMENT_CAROUSEL:I = 0x3

.field private static final VIEW_PAGER_AND_TAB_CAROUSEL:I = 0x1


# instance fields
.field private callViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;",
            ">;"
        }
    .end annotation
.end field

.field public mActionBar:Landroid/app/ActionBar;

.field public mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

.field private mHistoryFragment:Landroid/app/Fragment;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field public mLayoutMode:I

.field private mPluginContext:Landroid/content/Context;

.field private mTabListener:Landroid/app/ActionBar$TabListener;

.field public mVal:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->callViews:Ljava/util/List;

    .line 401
    new-instance v0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$5;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$5;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mTabListener:Landroid/app/ActionBar$TabListener;

    .line 70
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    .line 71
    return-void
.end method


# virtual methods
.method public addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V
    .locals 3
    .parameter "mFragmentManager"
    .parameter "transaction"
    .parameter "commond"

    .prologue
    .line 656
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->addHistoryTransaction(Landroid/app/FragmentManager;Landroid/app/FragmentTransaction;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 661
    :cond_0
    const v0, 0x7f0b002d

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    const-string v2, "view-pager-history-fragment"

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 663
    invoke-virtual {p2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 664
    invoke-virtual {p1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0
.end method

.method public bindDetailEnhancementView(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 9
    .parameter "activity"
    .parameter "number"
    .parameter "firstActionViewContainer"
    .parameter "firstActionButtonView"
    .parameter "vewVtCallDivider"
    .parameter "btnVtCallAction"
    .parameter "vtcallActionViewContainer"
    .parameter "visibility"
    .parameter "secondaryActionDescription"
    .parameter "mInsertedSimCount"
    .parameter "commond"

    .prologue
    .line 172
    const-string v7, "ExtensionForOP09"

    move-object/from16 v0, p11

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 173
    const/4 v7, 0x0

    .line 243
    :goto_0
    return v7

    .line 176
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 177
    .local v3, contentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 179
    .local v4, defaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v4, :cond_1

    .line 180
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 181
    const/16 v7, 0x8

    invoke-virtual {p5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 182
    move/from16 v0, p8

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    invoke-virtual/range {p7 .. p8}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v7, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020085

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    const/4 v7, 0x1

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v1

    .line 188
    .local v1, callDefault:I
    iget-object v7, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 189
    .local v5, firstActionIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    move-object/from16 v0, p9

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 193
    new-instance v7, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;

    invoke-direct {v7, p0, p2, v3, p1}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$3;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/app/Activity;)V

    invoke-virtual {p3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v6

    .line 209
    .local v6, notDefaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v6, :cond_2

    .line 210
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 212
    .local v2, callNotDefault:I
    iget-object v7, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    move/from16 v0, p8

    invoke-virtual {p5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 215
    move/from16 v0, p8

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    invoke-virtual/range {p7 .. p8}, Landroid/view/View;->setVisibility(I)V

    .line 217
    new-instance v7, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$4;

    invoke-direct {v7, p0, p2, v3, p1}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$4;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/app/Activity;)V

    move-object/from16 v0, p7

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    .end local v2           #callNotDefault:I
    :cond_2
    const/4 v7, 0x1

    move/from16 v0, p10

    if-ne v0, v7, :cond_3

    .line 234
    const/16 v7, 0x8

    invoke-virtual {p3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 235
    const/16 v7, 0x8

    invoke-virtual {p5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 236
    move/from16 v0, p8

    invoke-virtual {p6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    invoke-virtual/range {p7 .. p8}, Landroid/view/View;->setVisibility(I)V

    .line 238
    iget-object v7, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 243
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public bindDetailEnhancementViewForQuickContact(Landroid/app/Activity;Ljava/lang/String;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;ILjava/lang/String;)Z
    .locals 7
    .parameter "activity"
    .parameter "number"
    .parameter "firstActionViewButton"
    .parameter "firstDivider"
    .parameter "btnVtCallAction"
    .parameter "mInsertedSimCount"
    .parameter "commond"

    .prologue
    .line 100
    const-string v5, "ExtensionForOP09"

    invoke-virtual {v5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 101
    const/4 v5, 0x0

    .line 162
    :goto_0
    return v5

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 105
    .local v2, contentResolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 107
    .local v3, defaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v3, :cond_1

    .line 108
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 110
    const/4 v5, 0x0

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/4 v5, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v0

    .line 115
    .local v0, callDefault:I
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    new-instance v5, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$1;

    invoke-direct {v5, p0, p2, v2, p1}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$1;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/app/Activity;)V

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const/4 v5, 0x0

    invoke-virtual {p4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 133
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v4

    .line 134
    .local v4, notDefaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v4, :cond_2

    .line 135
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v1

    .line 136
    .local v1, callNotDefault:I
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    const/4 v5, 0x0

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    new-instance v5, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$2;

    invoke-direct {v5, p0, p2, v2, p1}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$2;-><init>(Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/app/Activity;)V

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    .end local v1           #callNotDefault:I
    :cond_2
    const/4 v5, 0x1

    if-ne p6, v5, :cond_3

    .line 156
    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    const/16 v5, 0x8

    invoke-virtual {p4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const/4 v5, 0x0

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v5, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p5, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_3
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public changeDualCallButton(Ljava/util/List;Landroid/app/Activity;)Z
    .locals 8
    .parameter
    .parameter "activity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;",
            ">;",
            "Landroid/app/Activity;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, callViews:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;>;"
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v6

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 289
    .local v2, defaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v0

    .line 291
    .local v0, callDefault:I
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v6

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    .line 293
    .local v5, notDefaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v1

    .line 295
    .local v1, callNotDefault:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 296
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;

    .line 298
    .local v3, item:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;
    invoke-virtual {v3}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;->getFirstCallButton()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 300
    invoke-virtual {v3}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;->getSecondCallButton()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 304
    .end local v3           #item:Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension$CallCorGView;
    :cond_0
    const/4 v6, 0x1

    return v6
.end method

.method public childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V
    .locals 2
    .parameter "mEnableSwipe"
    .parameter "child"
    .parameter "mMinFragmentWidth"
    .parameter "visibleFragmentViewCount"
    .parameter "screenHeight"
    .parameter "screenWidth"
    .parameter "commond"

    .prologue
    const/high16 v1, 0x4000

    .line 566
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-super/range {p0 .. p7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->childMeasureEx(ZLandroid/view/View;IIIILjava/lang/String;)V

    .line 580
    :goto_0
    return-void

    .line 576
    :cond_0
    mul-int v0, p6, p4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V
    .locals 3
    .parameter "bar"
    .parameter "commond"

    .prologue
    .line 356
    const-string v2, "ExtensionForOP09"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->configActionBarExt(Landroid/app/ActionBar;Ljava/lang/String;)V

    .line 365
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v1, 0x3

    .line 362
    .local v1, flag:I
    invoke-virtual {p1}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v2

    xor-int v0, v2, v1

    .line 363
    .local v0, change:I
    invoke-virtual {p1, v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 364
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0
.end method

.method public getCommond()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "ExtensionForOP09"

    return-object v0
.end method

.method public getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I
    .locals 2
    .parameter "mViewPager"
    .parameter "currentPage"
    .parameter "commond"

    .prologue
    const/4 v0, -0x1

    .line 621
    const-string v1, "ExtensionForOP09"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 622
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getCurrentPageIndexEx(Landroid/support/v4/view/ViewPager;ILjava/lang/String;)I

    move-result p2

    .line 632
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 626
    .restart local p2
    :cond_1
    if-eqz p1, :cond_2

    .line 627
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result p2

    goto :goto_0

    .line 628
    :cond_2
    if-ne p2, v0, :cond_0

    move p2, v0

    .line 632
    goto :goto_0
.end method

.method public getDesiredPageHistoryEx(IIILjava/lang/String;)I
    .locals 1
    .parameter "mLastScrollPosition"
    .parameter "mUpperThreshold"
    .parameter "updatePageIndex"
    .parameter "commond"

    .prologue
    .line 598
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageHistoryEx(IIILjava/lang/String;)I

    move-result v0

    .line 604
    :goto_0
    return v0

    :cond_0
    mul-int v0, p2, p3

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDesiredPageUpdatesEx(IIZLjava/lang/String;)I
    .locals 2
    .parameter "mLastScrollPosition"
    .parameter "mUpperThreshold"
    .parameter "enableSwipe"
    .parameter "commond"

    .prologue
    const/4 v0, 0x1

    .line 585
    const-string v1, "ExtensionForOP09"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 586
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDesiredPageUpdatesEx(IIZLjava/lang/String;)I

    move-result v0

    .line 590
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p1, p2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_0

    if-le p1, p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDetailUpdateIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "commond"

    .prologue
    .line 468
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDetailUpdateIndex(Ljava/lang/String;)I

    move-result v0

    .line 471
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "simInfo"
    .parameter "commond"

    .prologue
    .line 88
    const-string v1, "ExtensionForOP09"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 91
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v0

    .line 93
    .local v0, cOrGId:I
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnhancementAccountSimIndicator(IILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "i"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 248
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const/4 v0, 0x0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getEnhancementAccountSimIndicator(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnhancementPhotoId(IIILjava/lang/String;)J
    .locals 2
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 257
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-wide/16 v0, -0x1

    .line 260
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getEnhancementPhotoId(III)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getEnhancementPhotoUri(IIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "isSdnContact"
    .parameter "colorId"
    .parameter "slot"
    .parameter "commond"

    .prologue
    .line 266
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const-string v0, ""

    .line 269
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/mediatek/contacts/plugin/util/OP09ContactsDetailCallColor;->getEnhancementPhotoUri(III)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMaxFragmentViewCountEx(ILjava/lang/String;)I
    .locals 1
    .parameter "maxFragmentViewCount"
    .parameter "commond"

    .prologue
    .line 501
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getMaxFragmentViewCountEx(ILjava/lang/String;)I

    move-result v0

    .line 505
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;
    .locals 3
    .parameter "mViewPager"
    .parameter "commond"

    .prologue
    .line 610
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getViewPagerViewEx(Landroid/support/v4/view/ViewPager;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 613
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getVisibleFragmentViewCountEx(ZLjava/lang/String;)I
    .locals 1
    .parameter "enableSwipe"
    .parameter "commond"

    .prologue
    .line 510
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getVisibleFragmentViewCountEx(ZLjava/lang/String;)I

    move-result v0

    .line 514
    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V
    .locals 6
    .parameter "bar"
    .parameter "withUpdatePage"
    .parameter "commond"

    .prologue
    .line 369
    const-string v3, "ContactDetailEnhancementExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==sDetailUIController : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v3, "ExtensionForOP09"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 371
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initActionBarExt(Landroid/app/ActionBar;ZLjava/lang/String;)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mActionBar:Landroid/app/ActionBar;

    .line 375
    invoke-virtual {p1}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    .line 376
    .local v2, tabCount:I
    if-eqz p2, :cond_3

    const/4 v0, 0x2

    .line 377
    .local v0, expectTabCount:I
    :goto_1
    if-eq v2, v0, :cond_0

    .line 380
    if-lez v2, :cond_2

    .line 381
    invoke-virtual {p1}, Landroid/app/ActionBar;->removeAllTabs()V

    .line 383
    :cond_2
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 384
    .local v1, tab:Landroid/app/ActionBar$Tab;
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 385
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 386
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 388
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 389
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 390
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 391
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 393
    if-eqz p2, :cond_0

    .line 394
    invoke-virtual {p1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    .line 395
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090108

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroid/app/ActionBar$Tab;

    .line 396
    iget-object v3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mTabListener:Landroid/app/ActionBar$TabListener;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 397
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    .line 376
    .end local v0           #expectTabCount:I
    .end local v1           #tab:Landroid/app/ActionBar$Tab;
    :cond_3
    const/4 v0, 0x3

    goto :goto_1
.end method

.method public initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 3
    .parameter "mFragmentManager"
    .parameter "commond"

    .prologue
    .line 637
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 638
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->initContactDetailHistoryFragment(Landroid/app/FragmentManager;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 650
    :goto_0
    return-object v0

    .line 641
    :cond_0
    const-string v0, "view-pager-history-fragment"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    .line 643
    const-string v0, "ContactDetailEnhancementExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initContactDetailHistoryFragment == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v0, "ContactDetailEnhancementExtension"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPluginContext == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    if-nez v0, :cond_1

    .line 646
    new-instance v0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    goto :goto_0
.end method

.method public isUseOperation(Ljava/lang/String;)Z
    .locals 1
    .parameter "commond"

    .prologue
    .line 80
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFragmentPageChange(ILjava/lang/String;)V
    .locals 2
    .parameter "index"
    .parameter "commond"

    .prologue
    .line 425
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onFragmentPageChange(ILjava/lang/String;)V

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mActionBar:Landroid/app/ActionBar;

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->onFragmentPageChange(Landroid/app/ActionBar;I)V

    goto :goto_0
.end method

.method public onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    .locals 4
    .parameter "screenWidth"
    .parameter "heightMeasureSpec"
    .parameter "fragmentViewCount"
    .parameter "fragmentWidthScreenWidthFraction"
    .parameter "commond"

    .prologue
    .line 539
    const-string v1, "ExtensionForOP09"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onMeasureEx(IIIFLjava/lang/String;)Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    move-result-object v0

    .line 559
    :goto_0
    return-object v0

    .line 544
    :cond_0
    new-instance v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;

    invoke-direct {v0, p0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;-><init>(Lcom/android/contacts/ext/ContactDetailEnhancementExtension;)V

    .line 545
    .local v0, measureInfo:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;
    int-to-float v1, p1

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    .line 546
    iget v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    mul-int/2addr v1, p3

    iget v2, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    mul-int/2addr v2, p3

    div-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    .line 549
    iget v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    sub-int v1, p1, v1

    div-int/2addr v1, p3

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    .line 551
    iget v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    iget v2, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mUpperThreshold:I

    .line 554
    const-string v1, "ContactDetailEnhancementExtension"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMinFragmentWidth:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mMinFragmentWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|mAllowedHorizontalScrollLength:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mAllowedHorizontalScrollLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|mLowerThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mLowerThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|mUpperThreshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$MeasureInfo;->mUpperThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onScrollChangedEx(Ljava/lang/String;)Z
    .locals 1
    .parameter "commond"

    .prologue
    .line 529
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onScrollChangedEx(Ljava/lang/String;)Z

    move-result v0

    .line 533
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEx(Ljava/lang/String;)Z
    .locals 1
    .parameter "commond"

    .prologue
    .line 520
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    invoke-super {p0, p1}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->onTouchEx(Ljava/lang/String;)Z

    move-result v0

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;
    .locals 2
    .parameter "activity"
    .parameter "broadcastReceiver"
    .parameter "commond"

    .prologue
    .line 276
    const-string v1, "ExtensionForOP09"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const/4 p2, 0x0

    .line 282
    .end local p2
    :goto_0
    return-object p2

    .line 279
    .restart local p2
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public registerDetailUIController(Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V
    .locals 2
    .parameter "detailUIController"
    .parameter "val"
    .parameter "mLayoutMode"
    .parameter "commond"

    .prologue
    .line 477
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->registerDetailUIController(Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;IILjava/lang/String;)V

    .line 486
    :goto_0
    return-void

    .line 481
    :cond_0
    const-string v0, "ContactDetailEnhancementExtension"

    const-string v1, "--registerDetailUIController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iput-object p1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    .line 483
    iput p2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mVal:I

    .line 484
    iput p3, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mLayoutMode:I

    .line 485
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mPluginContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mLayoutInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V
    .locals 1
    .parameter "mContactUri"
    .parameter
    .parameter "contactId"
    .parameter "commond"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, mPhoneNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 671
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->setPhoneNumbersToFragmentEx(Landroid/net/Uri;Ljava/util/List;JLjava/lang/String;)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mHistoryFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/mediatek/contacts/plugin/ContactDetailHistoryFragment;->setData(Landroid/net/Uri;JLjava/util/List;)V

    goto :goto_0
.end method

.method public setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V
    .locals 1
    .parameter "viewPager"
    .parameter "mCurrentPageIndex"
    .parameter "smoothScroll"
    .parameter "commond"

    .prologue
    .line 491
    const-string v0, "ExtensionForOP09"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->setViewPagerCurrentItemEx(Landroid/support/v4/view/ViewPager;IZLjava/lang/String;)V

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method

.method protected switchTab(I)V
    .locals 5
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 434
    const-string v1, "ExtensionForOP09"

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->getDetailUpdateIndex(Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, updateIndex:I
    iget v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mLayoutMode:I

    packed-switch v1, :pswitch_data_0

    .line 464
    :goto_0
    return-void

    .line 438
    :pswitch_0
    if-nez p1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v3, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestScrollTab(II)V

    .line 440
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestSwitchViewPager(I)V

    goto :goto_0

    .line 441
    :cond_0
    if-ne p1, v0, :cond_1

    .line 442
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    iget v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mVal:I

    mul-int/2addr v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestScrollTab(II)V

    .line 443
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestSwitchViewPager(I)V

    goto :goto_0

    .line 445
    :cond_1
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    iget v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mVal:I

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestScrollTab(II)V

    .line 446
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestSwitchViewPager(I)V

    goto :goto_0

    .line 451
    :pswitch_1
    if-nez p1, :cond_2

    .line 452
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v3, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestScrollFragment(II)V

    .line 453
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestSwitchFragment(I)V

    goto :goto_0

    .line 454
    :cond_2
    if-ne p1, v0, :cond_3

    .line 455
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    iget v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mVal:I

    mul-int/2addr v2, v0

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestScrollFragment(II)V

    .line 456
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v0}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestSwitchFragment(I)V

    goto :goto_0

    .line 458
    :cond_3
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    iget v2, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mVal:I

    mul-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestScrollFragment(II)V

    .line 459
    iget-object v1, p0, Lcom/mediatek/contacts/plugin/OP09ContactDetailEnhancementExtension;->mDetailUIController:Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;

    invoke-interface {v1, v4}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension$DetailUIController;->requestSwitchFragment(I)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
