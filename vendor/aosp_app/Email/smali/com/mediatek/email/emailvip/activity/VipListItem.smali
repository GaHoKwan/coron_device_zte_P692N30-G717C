.class public Lcom/mediatek/email/emailvip/activity/VipListItem;
.super Landroid/widget/LinearLayout;
.source "VipListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mQuickContactLookupUri:Landroid/net/Uri;

.field private mRemoveButton:Landroid/widget/ImageView;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mVipEmailAddress:Landroid/widget/TextView;

.field private mVipId:J

.field private mVipName:Landroid/widget/TextView;

.field private mVipPhoto:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/activity/VipListItem;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/email/emailvip/activity/VipListItem;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipId:J

    return-wide v0
.end method

.method private onClickPhoto()V
    .locals 5

    .prologue
    .line 138
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipEmailAddress:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, vipEmail:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mQuickContactLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3, v4, v0}, Lcom/android/email/activity/UiUtilities;->showContacts(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;Lcom/android/emailcommon/mail/Address;)V

    goto :goto_0
.end method

.method private onRemoveVip()V
    .locals 6

    .prologue
    .line 160
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 161
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipEmailAddress:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    .local v0, address:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, message:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 166
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v4, "VipRemoveDialog"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 167
    new-instance v4, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/mediatek/email/emailvip/activity/VipListItem$RemoveVipTask;-><init>(Lcom/mediatek/email/emailvip/activity/VipListItem;Landroid/content/Context;)V

    invoke-static {v4, v2}, Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;->newInstance(Lcom/android/emailcommon/utility/EmailAsyncTask;Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipRemoveDialog;

    move-result-object v4

    const-string v5, "VipRemoveDialog"

    invoke-virtual {v4, v1, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 172
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #fm:Landroid/app/FragmentManager;
    .end local v2           #message:Ljava/lang/String;
    .end local v3           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public loadContactAvatar(Landroid/widget/ImageView;J)V
    .locals 2
    .parameter "view"
    .parameter "photoId"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/VipListItem;->onClickPhoto()V

    goto :goto_0

    .line 154
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/VipListItem;->onRemoveVip()V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x7f0f009a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 123
    const v0, 0x7f0f009a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 125
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mRemoveButton:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 128
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v0, 0x7f0f0099

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipName:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0f0066

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipEmailAddress:Landroid/widget/TextView;

    .line 131
    return-void
.end method

.method public resetViews()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 113
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 115
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->removePhoto(Landroid/widget/ImageView;)V

    .line 116
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020026

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mRemoveButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 119
    return-void
.end method

.method public setQuickContactLookupUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 110
    return-void
.end method

.method public setTargetActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mActivity:Landroid/app/Activity;

    .line 94
    return-void
.end method

.method public setVipEmailAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "vipEmailAddress"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipEmailAddress:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public setVipId(J)V
    .locals 0
    .parameter "id"

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipId:J

    .line 98
    return-void
.end method

.method public setVipName(Ljava/lang/String;)V
    .locals 1
    .parameter "vipName"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListItem;->mVipName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method
