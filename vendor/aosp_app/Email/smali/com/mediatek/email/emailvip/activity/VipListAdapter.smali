.class public Lcom/mediatek/email/emailvip/activity/VipListAdapter;
.super Landroid/widget/CursorAdapter;
.source "VipListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;,
        Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;,
        Lcom/mediatek/email/emailvip/activity/VipListAdapter$VipContentLoader;,
        Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;
    }
.end annotation


# static fields
.field private static final COLUMN_DISPLAY_NAME:I = 0x1

.field private static final COLUMN_PHOTO_ID:I = 0x0

.field private static final NULL_PHOTO_ID:J = -0x1L

.field static final PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "VipListAdapter"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

.field private final mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLoadAvatarPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->PROJECTION_PHOTO_ID_PRESENCE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 82
    iput-boolean v1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mLoadAvatarPause:Z

    move-object v0, p1

    .line 94
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mActivity:Landroid/app/Activity;

    .line 95
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iput-object p2, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

    .line 97
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;-><init>(Lcom/mediatek/email/emailvip/activity/VipListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    .line 98
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->startLoading()V

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/activity/VipListAdapter;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

    return-object v0
.end method

.method static createVipContentLoader(Landroid/content/Context;J)Landroid/content/Loader;
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListAdapter$VipContentLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$VipContentLoader;-><init>(Landroid/content/Context;J)V

    return-object v0
.end method

.method private updateViewWithAvatarInfo(Lcom/mediatek/email/emailvip/activity/VipListItem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "item"
    .parameter "localName"
    .parameter "address"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-virtual {v2, p3}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->getAvatarInfo(Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    move-result-object v1

    .line 128
    .local v1, avatarInfo:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    if-eqz v1, :cond_3

    .line 129
    iget-object v2, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mLookUpUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mLookUpUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mediatek/email/emailvip/activity/VipListItem;->setQuickContactLookupUri(Landroid/net/Uri;)V

    .line 132
    :cond_0
    iget-wide v2, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mPhotoId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 133
    const v2, 0x7f0f009a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .local v0, avatar:Landroid/widget/ImageView;
    iget-wide v2, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mPhotoId:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/mediatek/email/emailvip/activity/VipListItem;->loadContactAvatar(Landroid/widget/ImageView;J)V

    .line 140
    .end local v0           #avatar:Landroid/widget/ImageView;
    :cond_1
    iget-object v2, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mLookUpUri:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 141
    const-string v2, "VipListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " local vip name has been changed, we need re-sync it with system contacts : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarCallback:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;

    invoke-interface {v2, v1}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;->onAvatarNameChanged(Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;)V

    .line 148
    :cond_2
    :goto_0
    return-void

    .line 144
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mLoadAvatarPause:Z

    if-nez v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-virtual {v2, p3}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->reloadAvatar(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 108
    move-object v1, p1

    check-cast v1, Lcom/mediatek/email/emailvip/activity/VipListItem;

    .line 109
    .local v1, item:Lcom/mediatek/email/emailvip/activity/VipListItem;
    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/activity/VipListItem;->resetViews()V

    .line 110
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Lcom/mediatek/email/emailvip/activity/VipListItem;->setTargetActivity(Landroid/app/Activity;)V

    .line 111
    const/4 v3, 0x3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, address:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/mediatek/email/emailvip/activity/VipListItem;->setVipId(J)V

    .line 114
    invoke-virtual {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListItem;->setVipName(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v1, v0}, Lcom/mediatek/email/emailvip/activity/VipListItem;->setVipEmailAddress(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0, v1, v2, v0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->updateViewWithAvatarInfo(Lcom/mediatek/email/emailvip/activity/VipListItem;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public getAvatarInfo(Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-virtual {v0, p1}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->getAvatarInfo(Ljava/lang/String;)Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;

    move-result-object v0

    return-object v0
.end method

.method getPosition(Ljava/lang/String;)I
    .locals 3
    .parameter "emailAddress"

    .prologue
    const/4 v1, -0x1

    .line 181
    if-nez p1, :cond_1

    .line 191
    :cond_0
    :goto_0
    return v1

    .line 184
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 185
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 186
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onViewDestroy()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->stopLoading()V

    .line 203
    return-void
.end method

.method public pauseAvatarLoading(Z)V
    .locals 1
    .parameter "pause"

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mLoadAvatarPause:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mLoadAvatarPause:Z

    if-eq p1, v0, :cond_0

    .line 196
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mLoadAvatarPause:Z

    .line 199
    return-void
.end method

.method public updateAvatar(Ljava/lang/String;)V
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->mAvatarLoader:Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;

    invoke-virtual {v0, p1}, Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoader;->reloadAvatar(Ljava/lang/String;)V

    .line 211
    return-void
.end method
