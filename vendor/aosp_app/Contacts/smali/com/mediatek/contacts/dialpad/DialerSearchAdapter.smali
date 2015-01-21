.class public Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;
.super Landroid/widget/CursorAdapter;
.source "DialerSearchAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;,
        Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;,
        Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;,
        Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;
    }
.end annotation


# static fields
.field public static final CALL_GEOCODED_LOCATION_INDEX:I = 0x5

.field public static final CALL_LOG_DATE_INDEX:I = 0x2

.field public static final CALL_LOG_ID_INDEX:I = 0x3

.field public static final CALL_TYPE_INDEX:I = 0x4

.field public static final CONTACT_ID_INDEX:I = 0x1

.field public static final CONTACT_NAME_LOOKUP_INDEX:I = 0xe

.field public static final CONTACT_STARRED_INDEX:I = 0x9

.field public static final DS_MATCHED_DATA_DIVIDER:I = 0x3

.field public static final DS_MATCHED_DATA_INIT_POS:I = 0x3

.field public static final DS_MATCHED_DATA_OFFSETS:I = 0x10

.field public static final DS_MATCHED_NAME_OFFSETS:I = 0x11

.field public static final INDICATE_PHONE_SIM_INDEX:I = 0x8

.field public static final IS_SDN_CONTACT:I = 0xf

.field public static final NAME_INDEX:I = 0xc

.field public static final NAME_LOOKUP_ID_INDEX:I = 0x0

.field public static final NUMBER_TYPE_EMERGENCY:I = 0x5

.field public static final NUMBER_TYPE_NORMAL:I = 0x0

.field public static final NUMBER_TYPE_PAYPHONE:I = 0x4

.field public static final NUMBER_TYPE_PRIVATE:I = 0x3

.field public static final NUMBER_TYPE_UNKNOWN:I = 0x1

.field public static final NUMBER_TYPE_VOICEMAIL:I = 0x2

.field public static final PHOTO_ID_INDEX:I = 0xa

.field public static final SEARCH_PHONE_NUMBER_INDEX:I = 0xd

.field public static final SEARCH_PHONE_TYPE_INDEX:I = 0xb

.field public static final SIM_ID_INDEX:I = 0x6

.field private static final TAG:Ljava/lang/String; = "DialerSearchAdapter"

.field public static final VIEW_TYPE_CALL_LOG:I = 0x1

.field public static final VIEW_TYPE_CONTACT:I = 0x0

.field public static final VIEW_TYPE_CONTACT_CALL_LOG:I = 0x2

.field public static final VIEW_TYPE_COUNT:I = 0x1

.field public static final VIEW_TYPE_UNKNOWN:I = -0x1

.field public static final VTCALL:I = 0x7


# instance fields
.field protected mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

.field mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

.field protected mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

.field private mCallView:Landroid/widget/ImageView;

.field protected mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field protected mContext:Landroid/content/Context;

.field protected mDialerSearchCursor:Landroid/database/Cursor;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mEmergency:Ljava/lang/String;

.field private mHitDownEvent:Z

.field mHyphonManager:Lcom/mediatek/phone/HyphonManager;

.field private mListener:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;

.field private mNeedClearDigits:Z

.field protected mNumberTypeMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mOperatorHorizontalPaddingLeft:I

.field protected mOperatorHorizontalPaddingRight:I

.field protected mOperatorVerticalPadding:I

.field protected mPayphoneNumber:Ljava/lang/String;

.field protected mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field protected mPrivateNumber:Ljava/lang/String;

.field private mQuickView:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

.field protected mSpanColorBg:I

.field protected mSpanColorFg:I

.field protected mSpecialNumberMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUnknownNumber:Ljava/lang/String;

.field protected mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

.field protected mVoiceMail:Ljava/lang/String;

.field protected mVoiceMailNumber:Ljava/lang/String;

.field protected mVoiceMailNumber2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;)V
    .locals 11
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 154
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v6}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 128
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 129
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 131
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mNumberTypeMaps:Ljava/util/HashMap;

    .line 143
    iput-boolean v6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    .line 155
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    .line 156
    iput-object p2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;

    .line 158
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mEmergency:Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0186

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMail:Ljava/lang/String;

    .line 160
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPrivateNumber:Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0189

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPayphoneNumber:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0187

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mUnknownNumber:Ljava/lang/String;

    .line 164
    const/4 v2, -0x1

    iput v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpanColorFg:I

    .line 165
    const-string v2, "#39caff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    .line 167
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v1

    .line 168
    .local v1, textColor:I
    if-eqz v1, :cond_0

    .line 169
    iput v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v7

    .line 177
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020063

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v8

    .line 179
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v9

    .line 182
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v10

    .line 184
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02005e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 187
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v7

    .line 189
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v8

    .line 191
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200e0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v9

    .line 194
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v10

    .line 196
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v2, v3

    .line 199
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    const-string v3, "-1"

    const-string v4, "-1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    const-string v3, "-2"

    const-string v4, "-2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpecialNumberMaps:Ljava/util/HashMap;

    const-string v3, "-3"

    const-string v4, "-3"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 204
    new-instance v2, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    .line 206
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    .local v0, r:Landroid/content/res/Resources;
    iput v6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    .line 208
    const v2, 0x7f090065

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingRight:I

    .line 210
    const v2, 0x7f090066

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingLeft:I

    .line 213
    invoke-static {}, Lcom/mediatek/phone/HyphonManager;->getInstance()Lcom/mediatek/phone/HyphonManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    .line 215
    new-instance v2, Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "callOptionHandler"

    .prologue
    .line 220
    invoke-direct {p0, p1, p2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;)V

    .line 221
    iput-object p3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    .line 222
    return-void
.end method

.method public static isQueryLocationEnabled(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 943
    const-string v6, "cfp"

    .line 944
    .local v6, TAG:Ljava/lang/String;
    const/4 v10, 0x0

    .line 945
    .local v10, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 946
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "LOCATION_DISPLAY_ENABLED"

    aput-object v1, v2, v11

    .line 947
    .local v2, ipNumberArray:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 950
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 953
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    const-string v1, "LOCATION_DISPLAY_ENABLED"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 956
    .local v9, enabled:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=LOCATION_DISPLAY_ENABLED,value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const-string v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    const/4 v10, 0x1

    .line 971
    .end local v9           #enabled:Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 973
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v10

    :goto_0
    return v1

    .line 964
    :catch_0
    move-exception v8

    .line 966
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    if-eqz v7, :cond_2

    .line 973
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v11

    goto :goto_0

    .line 971
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 973
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "origin"

    .prologue
    .line 927
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x202d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bindCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 32
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 624
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    .line 625
    .local v26, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 626
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 627
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 628
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 630
    const/16 v27, 0xd

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 631
    .local v18, number:Ljava/lang/String;
    const/16 v27, 0x4

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 632
    .local v24, type:I
    const/16 v27, 0x7

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 633
    .local v25, videoCall:I
    const/16 v27, 0x6

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 634
    .local v22, simId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberType(Ljava/lang/String;I)I

    move-result v19

    .line 635
    .local v19, numberType:I
    const/16 v27, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 636
    .local v8, date:J
    const/16 v27, 0x8

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 637
    .local v16, indicate:I
    const/16 v27, 0x5

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 639
    .local v14, geocode:Ljava/lang/String;
    const/16 v27, 0x3

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->callId:I

    .line 641
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "in bindCallLogView : type = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " videoCall = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " simId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " number = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " geocode = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 647
    .local v13, formatNumber:Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "formatNumber = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 649
    const/16 v27, 0x1

    move/from16 v0, v27

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v27, 0x3

    move/from16 v0, v27

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    const/16 v27, 0x4

    move/from16 v0, v27

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 651
    :cond_0
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :goto_0
    const/16 v27, 0xa

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 659
    .local v20, photoId:J
    if-lez v16, :cond_1

    .line 660
    const/16 v27, 0xf

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 661
    .local v17, isSdnContact:I
    invoke-static/range {v16 .. v17}, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->getSimType(II)J

    move-result-wide v20

    .line 664
    .end local v17           #isSdnContact:I
    :cond_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 665
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v28

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-wide/from16 v2, v20

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 668
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c02ec

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 672
    :cond_2
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->isSpecialNumber(I)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 676
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    const/16 v27, 0x5

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    .line 677
    :cond_3
    const/16 v27, 0x2

    move/from16 v0, v19

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 678
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMail:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    :goto_1
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    .line 684
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 685
    .local v15, highlight:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_7

    .line 686
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v13, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 687
    .local v23, style:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 711
    .end local v15           #highlight:Ljava/lang/String;
    .end local v23           #style:Landroid/text/SpannableStringBuilder;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    .line 712
    .local v10, dateFormat:Ljava/text/DateFormat;
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 713
    .local v11, dateString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v12

    .line 714
    .local v12, display:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    const/16 v27, 0x1

    move/from16 v0, v25

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 718
    .local v6, callTypeDrawables:[Landroid/graphics/drawable/Drawable;
    :goto_3
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    aget-object v28, v6, v24

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_d

    .line 721
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingLeft:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingRight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v31, v0

    invoke-virtual/range {v27 .. v31}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 726
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x10

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setGravity(I)V

    .line 731
    :goto_4
    new-instance v5, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;)V

    .line 732
    .local v5, callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    .line 733
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v0, v27

    iput-wide v0, v5, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->id:J

    .line 734
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 735
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/ExtensionManager;->getDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;->bindCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 738
    return-void

    .line 654
    .end local v5           #callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    .end local v6           #callTypeDrawables:[Landroid/graphics/drawable/Drawable;
    .end local v10           #dateFormat:Ljava/text/DateFormat;
    .end local v11           #dateString:Ljava/lang/String;
    .end local v12           #display:Ljava/lang/String;
    .end local v20           #photoId:J
    :cond_5
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 655
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 680
    .restart local v20       #photoId:J
    :cond_6
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mEmergency:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 689
    .restart local v15       #highlight:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 692
    .end local v15           #highlight:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->specialNumberToString(I)Ljava/lang/String;

    move-result-object v7

    .line 693
    .local v7, convert:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 694
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 696
    :cond_9
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 700
    .end local v7           #convert:Ljava/lang/String;
    :cond_a
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 701
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v15

    .line 702
    .restart local v15       #highlight:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_b

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v13, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v23

    .line 704
    .restart local v23       #style:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 706
    .end local v23           #style:Landroid/text/SpannableStringBuilder;
    :cond_b
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 716
    .end local v15           #highlight:Ljava/lang/String;
    .restart local v10       #dateFormat:Ljava/text/DateFormat;
    .restart local v11       #dateString:Ljava/lang/String;
    .restart local v12       #display:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 728
    .restart local v6       #callTypeDrawables:[Landroid/graphics/drawable/Drawable;
    :cond_d
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public bindContactCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 20
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    .line 742
    .local v14, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 745
    invoke-virtual/range {p0 .. p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 750
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 754
    const/4 v15, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 755
    .local v12, type:I
    const/4 v15, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 756
    .local v13, videoCall:I
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 757
    .local v11, simId:I
    const/16 v15, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 758
    .local v10, number:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 760
    .local v5, date:J
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    iput v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->callId:I

    .line 762
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bindContactCallLogView type = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " videoCall = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " simId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v7

    .line 772
    .local v7, dateFormat:Ljava/text/DateFormat;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 773
    .local v8, dateString:Ljava/lang/String;
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    invoke-virtual {v15, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 778
    const/4 v15, 0x1

    if-ne v13, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVideoCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    .line 780
    .local v4, callTypeDrawables:[Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    aget-object v16, v4, v12

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    invoke-virtual {v15, v11}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v9

    .line 784
    .local v9, display:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 785
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;->getSimColorDrawableById(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 788
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingLeft:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorHorizontalPaddingRight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mOperatorVerticalPadding:I

    move/from16 v19, v0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 790
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setGravity(I)V

    .line 795
    :goto_1
    new-instance v3, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;)V

    .line 796
    .local v3, callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    int-to-long v15, v11

    iput-wide v15, v3, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->id:J

    .line 797
    iput-object v10, v3, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    .line 798
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    invoke-virtual {v15, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 799
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 801
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v15

    invoke-virtual {v15}, Lcom/mediatek/contacts/ExtensionManager;->getDialerSearchAdapterExtension()Lcom/android/contacts/ext/DialerSearchAdapterExtension;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v15, v0, v1, v2}, Lcom/android/contacts/ext/DialerSearchAdapterExtension;->bindContactCallLogViewPost(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 803
    return-void

    .line 778
    .end local v3           #callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    .end local v4           #callTypeDrawables:[Landroid/graphics/drawable/Drawable;
    .end local v9           #display:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallTypeDrawables:[Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 792
    .restart local v4       #callTypeDrawables:[Landroid/graphics/drawable/Drawable;
    .restart local v9       #display:Ljava/lang/String;
    :cond_1
    iget-object v15, v14, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 24
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    .line 497
    .local v23, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 499
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 500
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 502
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 503
    .local v16, number:Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 504
    .local v4, labelType:I
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 505
    .local v12, indicate:I
    const/4 v2, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 506
    .local v20, simId:I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v21

    .line 507
    .local v21, slotID:I
    invoke-static/range {v21 .. v21}, Lcom/mediatek/contacts/simcontact/SlotUtils;->getVoiceMailNumberForSlot(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMailNumber:Ljava/lang/String;

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberType(Ljava/lang/String;)I

    move-result v17

    .line 510
    .local v17, numberType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mHyphonManager:Lcom/mediatek/phone/HyphonManager;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/mediatek/phone/HyphonManager;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->numberLeftToRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 511
    .local v10, formatNumber:Ljava/lang/String;
    const/16 v2, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 513
    .local v15, name:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v4, v3}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 517
    .local v14, label:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimSlotById(I)I

    move-result v6

    .line 518
    .local v6, slotId:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x0

    const-string v7, "ExtensionForAAS"

    invoke-virtual/range {v2 .. v7}, Lcom/android/contacts/ext/ContactAccountExtension;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " label = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 524
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v23

    iput-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->contactUri:Landroid/net/Uri;

    .line 526
    const/16 v2, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 527
    .local v18, photoId:J
    if-lez v12, :cond_0

    .line 528
    const/16 v2, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 529
    .local v13, isSdnContact:I
    invoke-static {v12, v13}, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->getSimType(II)J

    move-result-wide v18

    .line 531
    .end local v13           #isSdnContact:I
    :cond_0
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/4 v2, 0x3

    move/from16 v0, v17

    if-eq v2, v0, :cond_1

    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_5

    .line 533
    :cond_1
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :goto_0
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    .line 540
    :cond_2
    const-wide/16 v18, 0x0

    .line 541
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 542
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 548
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v5, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v2, v3, v0, v1, v5}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 550
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->isSpecialNumber(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 551
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    move/from16 v0, v17

    if-ne v0, v2, :cond_9

    .line 552
    :cond_3
    const/4 v2, 0x2

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    .line 553
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMail:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    :goto_2
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 559
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 560
    .local v11, highlight:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 561
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 562
    .local v22, style:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    .end local v11           #highlight:Ljava/lang/String;
    .end local v22           #style:Landroid/text/SpannableStringBuilder;
    :cond_4
    :goto_3
    new-instance v8, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;)V

    .line 617
    .local v8, callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    const-wide/16 v2, -0x5

    iput-wide v2, v8, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->id:J

    .line 618
    move-object/from16 v0, v16

    iput-object v0, v8, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    .line 619
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 620
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 621
    return-void

    .line 536
    .end local v8           #callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    :cond_5
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 544
    :cond_6
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 545
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->contactUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 555
    :cond_7
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mEmergency:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 564
    .restart local v11       #highlight:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 567
    .end local v11           #highlight:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->specialNumberToString(I)Ljava/lang/String;

    move-result-object v9

    .line 568
    .local v9, convert:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 569
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 571
    :cond_a
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 576
    .end local v9           #convert:Ljava/lang/String;
    :cond_b
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 578
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNameHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 579
    .restart local v11       #highlight:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 580
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->highlightString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 581
    .restart local v22       #style:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 587
    .end local v22           #style:Landroid/text/SpannableStringBuilder;
    :goto_4
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 588
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 589
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 590
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 592
    .restart local v22       #style:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v14, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_3

    .line 583
    .end local v22           #style:Landroid/text/SpannableStringBuilder;
    :cond_c
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 594
    :cond_d
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14, v10}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 598
    .end local v11           #highlight:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 601
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v11

    .line 603
    .restart local v11       #highlight:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v11, v10, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v22

    .line 606
    .restart local v22       #style:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 608
    .end local v22           #style:Landroid/text/SpannableStringBuilder;
    :cond_f
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 611
    .end local v11           #highlight:Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 256
    const-string v2, "+bindView"

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->getViewType(Landroid/database/Cursor;)I

    move-result v1

    .line 258
    .local v1, viewType:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    .line 260
    .local v0, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 276
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 278
    const-string v2, "-bindView"

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 279
    return-void

    .line 262
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->bindContactView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 263
    const/4 v2, 0x0

    iput v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->bindCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 267
    const/4 v2, 0x1

    iput v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->bindContactCallLogView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 271
    const/4 v2, 0x2

    iput v2, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected createViewHolder()Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;)V

    .line 361
    .local v0, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    return-object v0
.end method

.method protected getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .parameter "cursor"

    .prologue
    .line 490
    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, lookup:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 492
    .local v0, contactId:I
    int-to-long v2, v0

    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method protected getNameHighlight(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 370
    const-string v1, "matched_name_offsets"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 371
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getNumberHighlight(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 365
    const-string v1, "matched_data_offsets"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 366
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1045
    invoke-static {p1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->isQueryLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1046
    .local v0, isEnable:Z
    if-nez v0, :cond_1

    .line 1055
    :cond_0
    :goto_0
    return-object v2

    .line 1050
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->queryNumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;

    move-result-object v1

    .line 1051
    .local v1, nrInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;
    if-eqz v1, :cond_0

    .line 1055
    #getter for: Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->city:Ljava/lang/String;
    invoke-static {v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;->access$000(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected getNumberType(Ljava/lang/String;)I
    .locals 3
    .parameter "number"

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    .local v0, type:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    .line 430
    .end local v0           #type:I
    .local v1, type:I
    :goto_0
    return v1

    .line 409
    .end local v1           #type:I
    .restart local v0       #type:I
    :cond_0
    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const/4 v0, 0x1

    :cond_1
    :goto_1
    move v1, v0

    .line 430
    .end local v0           #type:I
    .restart local v1       #type:I
    goto :goto_0

    .line 411
    .end local v1           #type:I
    .restart local v0       #type:I
    :cond_2
    const-string v2, "-2"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    const/4 v0, 0x3

    goto :goto_1

    .line 413
    :cond_3
    const-string v2, "-3"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/4 v0, 0x4

    goto :goto_1

    .line 415
    :cond_4
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v2, p1}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isEmergencyNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 416
    const/4 v0, 0x5

    goto :goto_1

    .line 419
    :cond_5
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMailNumber:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMailNumber:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMailNumber2:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mVoiceMailNumber2:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    :cond_7
    const/4 v0, 0x2

    goto :goto_1
.end method

.method protected getNumberType(Ljava/lang/String;I)I
    .locals 2
    .parameter "number"
    .parameter "id"

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 382
    .local v0, type:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 400
    :goto_0
    return v1

    .line 386
    :cond_0
    const-string v1, "-1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 400
    goto :goto_0

    .line 388
    :cond_1
    const-string v1, "-2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    const/4 v0, 0x3

    goto :goto_1

    .line 390
    :cond_2
    const-string v1, "-3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 391
    const/4 v0, 0x4

    goto :goto_1

    .line 392
    :cond_3
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isEmergencyNumber(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    const/4 v0, 0x5

    goto :goto_1

    .line 395
    :cond_4
    invoke-static {p1, p2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSimVoiceMailNumber(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 396
    const/4 v1, 0x2

    goto :goto_0

    .line 398
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getView position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " convertView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    if-nez p2, :cond_1

    .line 247
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v2, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 251
    .local v0, v:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 252
    return-object v0

    .line 249
    .end local v0           #v:Landroid/view/View;
    :cond_1
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewType(Landroid/database/Cursor;)I
    .locals 4
    .parameter "cursor"

    .prologue
    .line 344
    const/4 v2, -0x1

    .line 345
    .local v2, retval:I
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 346
    .local v1, contactId:I
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 348
    .local v0, callLogId:I
    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 349
    const/4 v2, 0x2

    .line 356
    :cond_0
    :goto_0
    return v2

    .line 350
    :cond_1
    if-lez v1, :cond_2

    .line 351
    const/4 v2, 0x0

    goto :goto_0

    .line 352
    :cond_2
    if-lez v0, :cond_0

    .line 353
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method protected highlightHyphon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 6
    .parameter "highlight"
    .parameter "target"
    .parameter "origin"

    .prologue
    const/4 v5, 0x1

    .line 452
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 453
    .local v1, style:Landroid/text/SpannableStringBuilder;
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->adjustHighlitePositionForHyphen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 455
    .local v0, numberHighlightOffset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v5, :cond_0

    .line 456
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/16 v5, 0x21

    invoke-virtual {v1, v3, v4, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 461
    :cond_0
    return-object v1
.end method

.method protected highlightString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 7
    .parameter "highlight"
    .parameter "target"

    .prologue
    .line 438
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 439
    .local v2, style:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 440
    .local v1, length:I
    const/4 v0, 0x3

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 441
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-gt v3, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 448
    :cond_0
    return-object v2

    .line 445
    :cond_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mSpanColorBg:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 440
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isDigitsCleared()Z
    .locals 1

    .prologue
    .line 931
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    return v0
.end method

.method protected isSpecialNumber(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 434
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 237
    const-string v0, "DialerSearchAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void
.end method

.method protected newItemClickIntent(Landroid/view/View;)Landroid/content/Intent;
    .locals 6
    .parameter "view"

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    .line 467
    .local v2, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    iget v3, v2, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->viewType:I

    packed-switch v3, :pswitch_data_0

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 470
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/contacts/CallDetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    iget v4, v2, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->callId:I

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 477
    :pswitch_1
    iget-object v1, v2, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->contactUri:Landroid/net/Uri;

    .line 478
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 479
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 282
    const-string v2, "+newView"

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 283
    const v2, 0x7f04004f

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->createViewHolder()Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    move-result-object v1

    .line 286
    .local v1, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    const v2, 0x7f070090

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 287
    const v2, 0x7f07011a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->labelAndNumber:Landroid/widget/TextView;

    .line 288
    const v2, 0x7f07011b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->type:Landroid/widget/ImageView;

    .line 289
    const v2, 0x7f07011c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->operator:Landroid/widget/TextView;

    .line 290
    const v2, 0x7f07005a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->date:Landroid/widget/TextView;

    .line 291
    const v2, 0x7f07011d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    .line 292
    iget-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallView:Landroid/widget/ImageView;

    .line 293
    const v2, 0x7f07008f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    .line 295
    iget-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->photo:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    iput-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mQuickView:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    .line 296
    const v2, 0x7f070096

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 298
    const-string v2, "-newView"

    invoke-virtual {p0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 300
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 879
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 881
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;

    .line 882
    .local v0, callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    iget-object v7, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 884
    .local v2, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 885
    const-string v5, "com.android.phone.extra.original"

    iget-wide v6, v0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->id:J

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 886
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    if-eqz v5, :cond_1

    .line 887
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallOptionHandler:Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;

    invoke-virtual {v5, v2}, Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;->doCallOptionHandle(Landroid/content/Intent;)V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 895
    .end local v0           #callInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_1
    const-string v5, "onClick(), view id = dialer_search_item_view"

    invoke-virtual {p0, v5}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 897
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getDialtactsExtension()Lcom/android/contacts/ext/DialtactsExtension;

    move-result-object v5

    const-string v6, "ExtensionForOP01"

    invoke-virtual {v5, v6}, Lcom/android/contacts/ext/DialtactsExtension;->startActivity(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 899
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    .line 900
    invoke-virtual {p0, p1}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->newItemClickIntent(Landroid/view/View;)Landroid/content/Intent;

    move-result-object v3

    .line 901
    .local v3, intentForSearch:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 902
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 905
    .end local v3           #intentForSearch:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;

    .line 906
    .local v4, viewHolder:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;
    iget-object v5, v4, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$ViewHolder;->call:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;

    .line 907
    .local v1, callInfoForSearch:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;
    if-eqz v1, :cond_0

    .line 908
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;

    if-eqz v5, :cond_0

    .line 909
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callinfo number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->log(Ljava/lang/String;)V

    .line 910
    const-string v5, "-1"

    iget-object v6, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "-2"

    iget-object v6, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "-3"

    iget-object v6, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 913
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;

    iget-object v6, v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$CallInfo;->number:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;->onListViewItemClicked(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 879
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070119 -> :sswitch_1
        0x7f07011d -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 229
    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->updateVoiceMailNumber()V

    .line 231
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 234
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 820
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 825
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 304
    invoke-virtual {p2}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_6

    .line 305
    const/4 v1, -0x1

    .line 306
    .local v1, leftSide:I
    const/4 v2, -0x1

    .line 308
    .local v2, rightSide:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 310
    .local v0, ix:F
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallView:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 311
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mCallView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 314
    :cond_0
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mQuickView:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    if-eqz v5, :cond_1

    .line 315
    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mQuickView:Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v1

    .line 318
    :cond_1
    if-ltz v2, :cond_2

    if-eqz v2, :cond_2

    int-to-float v5, v2

    cmpg-float v5, v0, v5

    if-gez v5, :cond_5

    :cond_2
    if-ltz v1, :cond_3

    int-to-float v5, v1

    cmpl-float v5, v0, v5

    if-lez v5, :cond_5

    .line 321
    :cond_3
    iput-boolean v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mHitDownEvent:Z

    move v3, v4

    .line 329
    .end local v0           #ix:F
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :cond_4
    :goto_0
    return v3

    .line 324
    .restart local v0       #ix:F
    .restart local v1       #leftSide:I
    .restart local v2       #rightSide:I
    :cond_5
    iput-boolean v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mHitDownEvent:Z

    goto :goto_0

    .line 329
    .end local v0           #ix:F
    .end local v1           #leftSide:I
    .end local v2           #rightSide:I
    :cond_6
    iget-boolean v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mHitDownEvent:Z

    if-eqz v5, :cond_4

    move v3, v4

    goto :goto_0
.end method

.method public queryNumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;
    .locals 12
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v11, 0x0

    .line 1004
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1005
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 1009
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/location/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1012
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 1032
    :cond_0
    if-eqz v9, :cond_1

    .line 1034
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v1, v11

    :cond_2
    :goto_0
    return-object v1

    .line 1016
    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1018
    new-instance v2, Ljava/lang/String;

    const-string v3, "cardtype"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1019
    .local v8, cardType:Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "cityname"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v2, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1020
    .local v4, city:Ljava/lang/String;
    const-string v2, "areacode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1021
    .local v7, areaCode:Ljava/lang/String;
    new-instance v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;

    const-string v5, ""

    const-string v6, ""

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1032
    .local v1, nrInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;
    if-eqz v9, :cond_2

    .line 1034
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1024
    .end local v1           #nrInfo:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$NumberLocationInfo;
    .end local v4           #city:Ljava/lang/String;
    .end local v7           #areaCode:Ljava/lang/String;
    .end local v8           #cardType:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1026
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1032
    if-eqz v9, :cond_4

    .line 1034
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v1, v11

    goto :goto_0

    .line 1032
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 1034
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public resetDigitsState()V
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mNeedClearDigits:Z

    .line 936
    return-void
.end method

.method protected setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .parameter "view"
    .parameter "label"
    .parameter "number"

    .prologue
    .line 844
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 857
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 851
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 852
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 854
    :cond_2
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 855
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setLabelAndNumber(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "label"
    .parameter "number"

    .prologue
    .line 828
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 835
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 836
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 838
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setResultCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mDialerSearchCursor:Landroid/database/Cursor;

    .line 337
    return-void
.end method

.method specialNumberToString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 806
    packed-switch p1, :pswitch_data_0

    .line 816
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 808
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mUnknownNumber:Ljava/lang/String;

    goto :goto_0

    .line 810
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPrivateNumber:Ljava/lang/String;

    goto :goto_0

    .line 812
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->mPayphoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 806
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
