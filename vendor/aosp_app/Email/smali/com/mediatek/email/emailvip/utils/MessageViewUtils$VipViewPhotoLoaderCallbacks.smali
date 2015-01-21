.class public Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;
.super Ljava/lang/Object;
.source "MessageViewUtils.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/email/emailvip/utils/MessageViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VipViewPhotoLoaderCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/android/email/activity/ContactStatusLoader$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final BUNDLE_EMAIL_ADDRESS:Ljava/lang/String; = "email"


# instance fields
.field private final mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;


# direct methods
.method public constructor <init>(Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;)V
    .locals 0
    .parameter "vipOnClickListener"

    .prologue
    .line 733
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    .line 735
    return-void
.end method

.method public static createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "emailAddress"

    .prologue
    .line 738
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 739
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    return-object v0
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 3
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    new-instance v0, Lcom/android/email/activity/ContactStatusLoader;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContext:Landroid/content/Context;

    const-string v2, "email"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/email/activity/ContactStatusLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V
    .locals 3
    .parameter
    .parameter "result"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    const/4 v0, 0x1

    .line 751
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContactStatusState:I

    if-ne v1, v0, :cond_2

    .line 753
    .local v0, triggered:Z
    :goto_0
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    const/4 v2, 0x2

    iput v2, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mContactStatusState:I

    .line 754
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mLookupUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mQuickContactLookupUri:Landroid/net/Uri;

    .line 756
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 757
    iget-object v1, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 759
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 766
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 767
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    invoke-virtual {v1}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->onClickBadge()V

    .line 769
    :cond_1
    return-void

    .line 751
    .end local v0           #triggered:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 762
    .restart local v0       #triggered:Z
    :cond_3
    iget-object v1, p0, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->mVipViewOnClickListener:Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;

    iget-object v1, v1, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipOnClickListener;->mBadge:Landroid/widget/ImageView;

    const v2, 0x7f020026

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 728
    check-cast p2, Lcom/android/email/activity/ContactStatusLoader$Result;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/email/emailvip/utils/MessageViewUtils$VipViewPhotoLoaderCallbacks;->onLoadFinished(Landroid/content/Loader;Lcom/android/email/activity/ContactStatusLoader$Result;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/android/email/activity/ContactStatusLoader$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Lcom/android/email/activity/ContactStatusLoader$Result;>;"
    return-void
.end method
