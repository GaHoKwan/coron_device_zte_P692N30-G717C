.class public Lcom/android/contacts/calllog/CallLogAdapter;
.super Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;,
        Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
    }
.end annotation


# static fields
.field private static final CONTACT_INFO_CACHE_SIZE:I = 0x64

.field private static final REDRAW:I = 0x1

.field private static final START_PROCESSING_REQUESTS_DELAY_MILLIS:I = 0x3e8

.field private static final START_THREAD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CallLogAdapter"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

.field private final mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

.field private final mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

.field private final mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

.field private mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/util/ExpirableCache",
            "<",
            "Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/android/contacts/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private mContactInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mIsUpdateWhenContentChange:Z

.field private mLoading:Z

.field protected final mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/contacts/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mUpperCaseQueryString:[C

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;)V
    .locals 6
    .parameter "context"
    .parameter "callFetcher"
    .parameter "contactInfoHelper"

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-direct {p0, p1}, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;-><init>(Landroid/content/Context;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    .line 200
    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 236
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogAdapter$1;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 1248
    iput-boolean v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsUpdateWhenContentChange:Z

    .line 309
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    .line 310
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mAudioManager:Landroid/media/AudioManager;

    .line 311
    iput-object p2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    .line 312
    iput-object p3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 314
    const/16 v0, 0x64

    invoke-static {v0}, Lcom/android/contacts/util/ExpirableCache;->create(I)Lcom/android/contacts/util/ExpirableCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    .line 315
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    .line 317
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 318
    .local v1, resources:Landroid/content/res/Resources;
    new-instance v2, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-direct {v2, v1}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    .line 320
    .local v2, callTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 321
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 330
    new-instance v0, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    invoke-direct {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    .line 331
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogSimInfoHelper:Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;

    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 333
    new-instance v0, Lcom/android/contacts/calllog/CallLogListItemHelper;

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-direct {v0, v3, v4, v1}, Lcom/android/contacts/calllog/CallLogListItemHelper;-><init>(Lcom/android/contacts/PhoneCallDetailsHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/contacts/calllog/CallLogListItemHelper;

    .line 336
    new-instance v0, Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogGroupBuilder;-><init>(Lcom/android/contacts/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    .line 338
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    .line 344
    :goto_0
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/calllog/CallLogAdapter;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private configureCallSecondaryAction(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;)V
    .locals 2
    .parameter "views"
    .parameter "details"

    .prologue
    .line 1209
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->getCallActionDescription(Lcom/android/contacts/PhoneCallDetails;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1210
    return-void
.end method

.method private getCallActionDescription(Lcom/android/contacts/PhoneCallDetails;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "details"

    .prologue
    .line 1215
    iget-object v1, p1, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1216
    iget-object v0, p1, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 1221
    .local v0, recipient:Ljava/lang/CharSequence;
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02e6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1218
    .end local v0           #recipient:Ljava/lang/CharSequence;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v2, p1, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0       #recipient:Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public static isQueryLocationEnabled(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    const/4 v11, 0x0

    .line 1275
    const-string v6, "cfp"

    .line 1276
    .local v6, TAG:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1277
    .local v10, ret:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1278
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "LOCATION_DISPLAY_ENABLED"

    aput-object v1, v2, v11

    .line 1279
    .local v2, ipNumberArray:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1282
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

    .line 1285
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1287
    const-string v1, "LOCATION_DISPLAY_ENABLED"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1288
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

    .line 1289
    const-string v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1291
    const/4 v10, 0x1

    .line 1303
    .end local v9           #enabled:Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 1305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v10

    :goto_0
    return v1

    .line 1296
    :catch_0
    move-exception v8

    .line 1298
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1303
    if-eqz v7, :cond_2

    .line 1305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v11

    goto :goto_0

    .line 1303
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 1305
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 1268
    const-string v0, "CallLogAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    return-void
.end method

.method private setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Lcom/android/contacts/calllog/IntentProvider;)V
    .locals 2
    .parameter "itemView"
    .parameter "contactInfo"
    .parameter "c"
    .parameter "callDetailIntentProvider"

    .prologue
    .line 1240
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v1}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/ext/CallLogAdapterExtension;->setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    :goto_0
    return-void

    .line 1244
    :cond_0
    invoke-virtual {p1, p4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .parameter "cursorPosition"
    .parameter "size"
    .parameter "expanded"

    .prologue
    .line 919
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    .line 920
    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/contacts/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/contacts/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    .line 561
    return-void
.end method

.method protected bindCallButtonView(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;)V
    .locals 6
    .parameter "itemView"
    .parameter "details"

    .prologue
    const/4 v5, 0x0

    .line 1179
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1180
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1182
    iget-object v1, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v2

    iget-object v1, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/PhoneCallDetails;->simId:I

    int-to-long v3, v3

    invoke-static {v1, v3, v4}, Lcom/android/contacts/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;J)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1192
    :goto_0
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v2, p2, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1194
    .local v0, canCall:Z
    if-eqz v0, :cond_1

    .line 1196
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->configureCallSecondaryAction(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;)V

    .line 1197
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1204
    :goto_1
    return-void

    .line 1190
    .end local v0           #canCall:Z
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 1202
    .restart local v0       #canCall:Z
    :cond_1
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 600
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 601
    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"
    .parameter "groupSize"
    .parameter "expanded"

    .prologue
    .line 622
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 623
    return-void
.end method

.method protected bindPlayButtonView(Lcom/mediatek/contacts/calllog/CallLogListItemView;)V
    .locals 2
    .parameter "itemView"

    .prologue
    .line 1173
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200c2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1174
    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1175
    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 580
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    .line 581
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 35
    .parameter "view"
    .parameter "c"
    .parameter "count"

    .prologue
    .line 984
    move-object/from16 v0, p1

    instance-of v6, v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    if-nez v6, :cond_0

    .line 985
    const-string v6, "Error!!! - bindView(): view is not CallLogListItemView!"

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 1103
    :goto_0
    return-void

    :cond_0
    move-object/from16 v27, p1

    .line 988
    check-cast v27, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 990
    .local v27, itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mUpperCaseQueryString:[C

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setHighlightedText([C)V

    .line 991
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->getContactInfo(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v25

    .line 994
    .local v25, contactInfo:Lcom/android/contacts/calllog/ContactInfo;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogAdapterExtension()Lcom/android/contacts/ext/CallLogAdapterExtension;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/contacts/ext/CallLogAdapterExtension;->bindViewPre(Landroid/view/View;Landroid/database/Cursor;ILcom/android/contacts/calllog/ContactInfo;)V

    .line 996
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->isDateGroupHeader(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 997
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/android/contacts/calllog/ContactInfo;->date:J

    invoke-static {v6, v7, v8}, Lcom/mediatek/contacts/calllog/CallLogDateFormatHelper;->getFormatedDateText(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setSectionDate(Ljava/lang/String;)V

    .line 1005
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-static {v0, v6, v7, v8, v1}, Lcom/android/contacts/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/contacts/calllog/CallLogAdapter;IJI)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v24

    .line 1007
    .local v24, callDetailIntentProvider:Lcom/android/contacts/calllog/IntentProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    move-object/from16 v3, p2

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/contacts/calllog/CallLogAdapter;->setListItemViewTag(Landroid/view/View;Lcom/android/contacts/calllog/ContactInfo;Landroid/database/Cursor;Lcom/android/contacts/calllog/IntentProvider;)V

    .line 1010
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1011
    new-instance v5, Lcom/android/contacts/PhoneCallDetails;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->geocode:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v10, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move-object/from16 v0, v25

    iget-wide v11, v0, Lcom/android/contacts/calllog/ContactInfo;->date:J

    move-object/from16 v0, v25

    iget-wide v13, v0, Lcom/android/contacts/calllog/ContactInfo;->duration:J

    move-object/from16 v0, v25

    iget v15, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->vtCall:I

    move/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->ipPrefix:Ljava/lang/String;

    move-object/from16 v18, v0

    move/from16 v17, p3

    invoke-direct/range {v5 .. v18}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJIIILjava/lang/String;)V

    .line 1028
    .local v5, details:Lcom/android/contacts/PhoneCallDetails;
    :goto_2
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/contacts/calllog/ContactInfo;->isRead:I

    if-nez v6, :cond_6

    const/4 v9, 0x1

    .line 1029
    .local v9, isHighlighted:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v7, v5, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v8, v5, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isEmergencyNumber(Ljava/lang/CharSequence;I)Z

    move-result v10

    .line 1030
    .local v10, isEmergencyNumber:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v7, v5, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v8, v5, Lcom/android/contacts/PhoneCallDetails;->simId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v11

    .line 1032
    .local v11, isVoiceMailNumber:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v7, v5, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v17

    .line 1033
    .local v17, isSipCallNumber:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    move-object/from16 v7, v27

    move-object v8, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/contacts/PhoneCallDetailsHelper;->setPhoneCallDetails(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;ZZZ)V

    .line 1037
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v5, Lcom/android/contacts/PhoneCallDetails;->callType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 1039
    const-string v6, "voicemail_uri"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1040
    .local v34, voicemailUri:Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1041
    .local v30, rowId:J
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->bindPlayButtonView(Lcom/mediatek/contacts/calllog/CallLogListItemView;)V

    .line 1042
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getCallButton()Landroid/widget/ImageView;

    move-result-object v6

    move-wide/from16 v0, v30

    move-object/from16 v2, v34

    invoke-static {v0, v1, v2}, Lcom/android/contacts/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/contacts/calllog/IntentProvider;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1051
    .end local v30           #rowId:J
    .end local v34           #voicemailUri:Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getBackgroundView()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1055
    if-nez v10, :cond_1

    if-eqz v11, :cond_8

    .line 1056
    :cond_1
    const-wide/16 v6, 0x0

    move-object/from16 v0, v25

    iput-wide v6, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 1057
    const/4 v6, 0x0

    move-object/from16 v0, v25

    iput-object v6, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 1077
    :cond_2
    :goto_5
    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_b

    .line 1078
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getQuickContact()Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-result-object v6

    move-object/from16 v0, v25

    iget-wide v7, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    move-object/from16 v0, v25

    iget-object v12, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8, v12}, Lcom/android/contacts/calllog/CallLogAdapter;->setPhoto(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;JLandroid/net/Uri;)V

    .line 1086
    :goto_6
    const/16 v28, 0x0

    .line 1087
    .local v28, number:Ljava/lang/String;
    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    .line 1088
    iget-object v6, v5, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    .line 1091
    :cond_3
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v6

    const-string v7, "ExtenstionForRCS"

    move-object/from16 v0, v28

    invoke-virtual {v6, v0, v7}, Lcom/android/contacts/ext/CallListExtension;->setExtentionIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v29

    .line 1092
    .local v29, reslut:Z
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->removeExtentionIconView()V

    .line 1093
    move-object/from16 v0, v27

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setExtentionIcon(Z)V

    goto/16 :goto_0

    .line 999
    .end local v5           #details:Lcom/android/contacts/PhoneCallDetails;
    .end local v9           #isHighlighted:Z
    .end local v10           #isEmergencyNumber:Z
    .end local v11           #isVoiceMailNumber:Z
    .end local v17           #isSipCallNumber:Z
    .end local v24           #callDetailIntentProvider:Lcom/android/contacts/calllog/IntentProvider;
    .end local v28           #number:Ljava/lang/String;
    .end local v29           #reslut:Z
    :cond_4
    const/4 v6, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setSectionDate(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1019
    .restart local v24       #callDetailIntentProvider:Lcom/android/contacts/calllog/IntentProvider;
    :cond_5
    new-instance v5, Lcom/android/contacts/PhoneCallDetails;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/contacts/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/contacts/calllog/ContactInfo;->geocode:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v10, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move-object/from16 v0, v25

    iget-wide v11, v0, Lcom/android/contacts/calllog/ContactInfo;->date:J

    move-object/from16 v0, v25

    iget-wide v13, v0, Lcom/android/contacts/calllog/ContactInfo;->duration:J

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    move/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    move/from16 v20, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->vtCall:I

    move/from16 v21, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->ipPrefix:Ljava/lang/String;

    move-object/from16 v23, v0

    move/from16 v22, p3

    invoke-direct/range {v5 .. v23}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V

    .restart local v5       #details:Lcom/android/contacts/PhoneCallDetails;
    goto/16 :goto_2

    .line 1028
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1045
    .restart local v9       #isHighlighted:Z
    .restart local v10       #isEmergencyNumber:Z
    .restart local v11       #isVoiceMailNumber:Z
    .restart local v17       #isSipCallNumber:Z
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lcom/android/contacts/calllog/CallLogAdapter;->bindCallButtonView(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/android/contacts/PhoneCallDetails;)V

    goto/16 :goto_4

    .line 1058
    :cond_8
    move-object/from16 v0, v25

    iget v6, v0, Lcom/android/contacts/calllog/ContactInfo;->contactSimId:I

    if-lez v6, :cond_2

    .line 1059
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/contacts/calllog/ContactInfo;->contactSimId:I

    invoke-virtual {v6, v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v33

    .line 1060
    .local v33, slotId:I
    const/16 v26, -0x1

    .line 1061
    .local v26, i:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v6, :cond_9

    .line 1062
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 1065
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/calllog/CallLogAdapter;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    move/from16 v0, v33

    invoke-virtual {v6, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v32

    .line 1066
    .local v32, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v32, :cond_a

    .line 1067
    move-object/from16 v0, v32

    iget v0, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    move/from16 v26, v0

    .line 1070
    :cond_a
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v6

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/contacts/calllog/ContactInfo;->isSdnContact:I

    const-string v8, "ExtensionForOP09"

    move/from16 v0, v26

    move/from16 v1, v33

    invoke-virtual {v6, v7, v0, v1, v8}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getEnhancementPhotoId(IIILjava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, v25

    iput-wide v6, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    .line 1072
    move-object/from16 v0, v25

    iget-wide v6, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-nez v6, :cond_2

    .line 1073
    new-instance v6, Lcom/mediatek/contacts/util/SimContactPhotoUtils;

    invoke-direct {v6}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;-><init>()V

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/contacts/calllog/ContactInfo;->isSdnContact:I

    move/from16 v0, v26

    invoke-virtual {v6, v7, v0}, Lcom/mediatek/contacts/util/SimContactPhotoUtils;->getPhotoId(II)J

    move-result-wide v6

    move-object/from16 v0, v25

    iput-wide v6, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    goto/16 :goto_5

    .line 1081
    .end local v26           #i:I
    .end local v32           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v33           #slotId:I
    :cond_b
    invoke-virtual/range {v27 .. v27}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getQuickContact()Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;

    move-result-object v13

    move-object/from16 v0, v25

    iget-wide v14, v0, Lcom/android/contacts/calllog/ContactInfo;->photoId:J

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Lcom/android/contacts/calllog/CallLogAdapter;->setPhoto(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;JLjava/lang/String;Z)V

    goto/16 :goto_6
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeCursor(), cursor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCursor:Landroid/database/Cursor;

    if-eq v0, p1, :cond_0

    .line 1232
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCursor:Landroid/database/Cursor;

    .line 1233
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1235
    :cond_0
    invoke-super {p0, p1}, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->changeCursor(Landroid/database/Cursor;)V

    .line 1236
    return-void
.end method

.method public clearCachedContactInfo()V
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1159
    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 908
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    .line 909
    return-void
.end method

.method protected getContactInfo(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 4
    .parameter "c"

    .prologue
    .line 1107
    const/4 v1, 0x0

    .line 1108
    .local v1, info:Lcom/android/contacts/calllog/ContactInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, hashKey:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Lcom/android/contacts/calllog/ContactInfo;
    check-cast v1, Lcom/android/contacts/calllog/ContactInfo;

    .line 1111
    .restart local v1       #info:Lcom/android/contacts/calllog/ContactInfo;
    if-nez v1, :cond_0

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v1

    .line 1113
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_0
    return-object v1
.end method

.method protected getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;
    .locals 1
    .parameter "c"

    .prologue
    .line 1121
    invoke-static {p1}, Lcom/android/contacts/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v0

    .line 1122
    .local v0, info:Lcom/android/contacts/calllog/ContactInfo;
    return-object v0
.end method

.method public getNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 1377
    invoke-static {p1}, Lcom/android/contacts/calllog/CallLogAdapter;->isQueryLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 1378
    .local v0, isEnable:Z
    if-nez v0, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-object v2

    .line 1382
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->queryNumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;

    move-result-object v1

    .line 1383
    .local v1, nrInfo:Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;
    if-eqz v1, :cond_0

    .line 1387
    #getter for: Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->city:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;->access$200(Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/calllog/ContactInfo;)V
    .locals 2
    .parameter "number"
    .parameter "countryIso"
    .parameter "contactInfo"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 913
    new-instance v0, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    .local v0, numberCountryIso:Lcom/android/contacts/calllog/CallLogAdapter$NumberWithCountryIso;
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/contacts/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/contacts/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 915
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x0

    .line 369
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 1162
    new-instance v0, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1163
    .local v0, view:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->setOnCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 1164
    return-object v0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 594
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 614
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 574
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/calllog/CallLogAdapter;->newCallLogItemView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 352
    const-string v0, "onContentChanged()"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogAdapter;->log(Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsUpdateWhenContentChange:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    .line 356
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1144
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1149
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    .line 1155
    :goto_0
    return-void

    .line 1153
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    goto :goto_0
.end method

.method public queryNumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;
    .locals 12
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v11, 0x0

    .line 1336
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1337
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 1341
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

    .line 1344
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_3

    .line 1364
    :cond_0
    if-eqz v9, :cond_1

    .line 1366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v1, v11

    :cond_2
    :goto_0
    return-object v1

    .line 1348
    :cond_3
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 1350
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

    .line 1351
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

    .line 1352
    .local v4, city:Ljava/lang/String;
    const-string v2, "areacode"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1353
    .local v7, areaCode:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;

    const-string v5, ""

    const-string v6, ""

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;-><init>(Lcom/android/contacts/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1364
    .local v1, nrInfo:Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;
    if-eqz v9, :cond_2

    .line 1366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1356
    .end local v1           #nrInfo:Lcom/android/contacts/calllog/CallLogAdapter$NumberLocationInfo;
    .end local v4           #city:Ljava/lang/String;
    .end local v7           #areaCode:Ljava/lang/String;
    .end local v8           #cardType:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1358
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1364
    if-eqz v9, :cond_4

    .line 1366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v1, v11

    goto :goto_0

    .line 1364
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_5

    .line 1366
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public setGroupHeaderPosition(I)V
    .locals 0
    .parameter "cursorPosition"

    .prologue
    .line 1226
    invoke-super {p0, p1}, Lcom/mediatek/contacts/widget/GroupingListAdapterWithHeader;->setGroupHeaderPosition(I)V

    .line 1227
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 360
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mLoading:Z

    .line 361
    return-void
.end method

.method protected setPhoto(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;JLandroid/net/Uri;)V
    .locals 2
    .parameter "view"
    .parameter "photoId"
    .parameter "contactUri"

    .prologue
    .line 1126
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1127
    invoke-virtual {p1, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1128
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 1129
    return-void
.end method

.method protected setPhoto(Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;JLjava/lang/String;Z)V
    .locals 2
    .parameter "view"
    .parameter "photoId"
    .parameter "number"
    .parameter "isSipCallNumber"

    .prologue
    .line 1133
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 1134
    invoke-virtual {p1, p4, p5}, Lcom/mediatek/contacts/widget/QuickContactBadgeWithPhoneNumber;->assignPhoneNumber(Ljava/lang/String;Z)V

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZ)V

    .line 1136
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .parameter "queryString"

    .prologue
    .line 1254
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mUpperCaseQueryString:[C

    .line 1259
    :goto_0
    return-void

    .line 1257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setUpdateFlagForContentChange(Z)V
    .locals 0
    .parameter "isUpdateWhenContentChange"

    .prologue
    .line 1262
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogAdapter;->mIsUpdateWhenContentChange:Z

    .line 1263
    return-void
.end method
