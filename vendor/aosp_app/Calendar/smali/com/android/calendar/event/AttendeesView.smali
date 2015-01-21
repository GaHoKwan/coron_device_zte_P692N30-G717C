.class public Lcom/android/calendar/event/AttendeesView;
.super Landroid/widget/LinearLayout;
.source "AttendeesView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMAIL_PROJECTION_CONTACT_ID_INDEX:I = 0x0

.field private static final EMAIL_PROJECTION_CONTACT_LOOKUP_INDEX:I = 0x1

.field private static final EMAIL_PROJECTION_PHOTO_ID_INDEX:I = 0x2

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "AttendeesView"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultBadge:Landroid/graphics/drawable/Drawable;

.field private final mDefaultPhotoAlpha:I

.field private final mDividerForMaybe:Landroid/view/View;

.field private final mDividerForNo:Landroid/view/View;

.field private final mDividerForNoResponse:Landroid/view/View;

.field private final mDividerForYes:Landroid/view/View;

.field private final mEntries:[Ljava/lang/CharSequence;

.field private final mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMaybe:I

.field private mNo:I

.field private mNoResponse:I

.field private final mNoResponsePhotoAlpha:I

.field private final mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

.field mRecycledPhotos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mValidator:Lcom/android/common/Rfc822Validator;

.field private mYes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/event/AttendeesView;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    .line 105
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    .line 106
    new-instance v2, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;-><init>(Lcom/android/calendar/event/AttendeesView;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 109
    .local v1, resources:Landroid/content/res/Resources;
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    .line 110
    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponsePhotoAlpha:I

    .line 112
    const v2, 0x7f0b0004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultPhotoAlpha:I

    .line 115
    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    .line 116
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    .line 117
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    .line 118
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    .line 119
    iget-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    .line 122
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 123
    .local v0, matrix:Landroid/graphics/ColorMatrix;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 124
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v2, p0, Lcom/android/calendar/event/AttendeesView;->mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/AttendeesView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/event/AttendeesView;Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/event/AttendeesView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V
    .locals 16
    .parameter "attendee"

    .prologue
    .line 281
    invoke-virtual/range {p0 .. p1}, Lcom/android/calendar/event/AttendeesView;->contains(Lcom/android/calendar/CalendarEventModel$Attendee;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 367
    :goto_0
    return-void

    .line 284
    :cond_0
    new-instance v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDefaultBadge:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v1}, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;-><init>(Lcom/android/calendar/CalendarEventModel$Attendee;Landroid/graphics/drawable/Drawable;)V

    .line 285
    .local v3, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    .line 287
    .local v14, status:I
    const/4 v10, 0x0

    .line 288
    .local v10, firstAttendeeInCategory:Z
    packed-switch v14, :pswitch_data_0

    .line 323
    :pswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_9

    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_2
    add-int/2addr v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    :goto_3
    add-int v13, v2, v1

    .line 325
    .local v13, startIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 326
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    if-nez v1, :cond_1

    .line 327
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNoResponse:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 328
    const/4 v10, 0x1

    .line 330
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    .line 331
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    add-int v11, v13, v1

    .line 336
    .local v11, index:I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/calendar/event/AttendeesView;->constructAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v15

    .line 337
    .local v15, view:Landroid/view/View;
    invoke-virtual {v15, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 338
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 340
    if-nez v10, :cond_2

    .line 341
    add-int/lit8 v1, v11, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 342
    .local v12, prevItem:Landroid/view/View;
    if-eqz v12, :cond_2

    .line 343
    const v1, 0x7f10003b

    invoke-virtual {v12, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 344
    .local v9, Separator:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 345
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    .end local v9           #Separator:Landroid/view/View;
    .end local v12           #prevItem:Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    .line 352
    .local v6, selection:Ljava/lang/String;
    const/4 v7, 0x0

    .line 353
    .local v7, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mIdentity:Ljava/lang/String;

    if-eqz v1, :cond_c

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mIdNamespace:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 355
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 356
    .local v4, uri:Landroid/net/Uri;
    const-string v6, "mimetype=? AND data1=? AND data2=?"

    .line 358
    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/String;

    .end local v7           #selectionArgs:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.item/identity"

    aput-object v2, v7, v1

    const/4 v1, 0x1

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mIdentity:Ljava/lang/String;

    aput-object v2, v7, v1

    const/4 v1, 0x2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mIdNamespace:Ljava/lang/String;

    aput-object v2, v7, v1

    .line 365
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mPresenceQueryHandler:Lcom/android/calendar/event/AttendeesView$PresenceQueryHandler;

    iget v2, v3, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mUpdateCounts:I

    add-int/lit8 v2, v2, 0x1

    sget-object v5, Lcom/android/calendar/event/AttendeesView;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 290
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #selection:Ljava/lang/String;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v11           #index:I
    .end local v13           #startIndex:I
    .end local v15           #view:Landroid/view/View;
    :pswitch_1
    const/4 v13, 0x0

    .line 291
    .restart local v13       #startIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 292
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_3

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForYes:Landroid/view/View;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 294
    const/4 v10, 0x1

    .line 296
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    .line 297
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v11, v1, 0x0

    .line 298
    .restart local v11       #index:I
    goto/16 :goto_4

    .line 301
    .end local v11           #index:I
    .end local v13           #startIndex:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_5

    const/4 v13, 0x0

    .line 302
    .restart local v13       #startIndex:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 303
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v1, :cond_4

    .line 304
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForNo:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 305
    const/4 v10, 0x1

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    .line 308
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int v11, v13, v1

    .line 309
    .restart local v11       #index:I
    goto/16 :goto_4

    .line 301
    .end local v11           #index:I
    .end local v13           #startIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v13, v1, 0x1

    goto :goto_6

    .line 312
    :pswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_8
    add-int v13, v1, v2

    .line 313
    .restart local v13       #startIndex:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/event/AttendeesView;->mEntries:[Ljava/lang/CharSequence;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v5}, Lcom/android/calendar/event/AttendeesView;->updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V

    .line 314
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    if-nez v1, :cond_6

    .line 315
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/calendar/event/AttendeesView;->mDividerForMaybe:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 316
    const/4 v10, 0x1

    .line 318
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    .line 319
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int v11, v13, v1

    .line 320
    .restart local v11       #index:I
    goto/16 :goto_4

    .line 312
    .end local v11           #index:I
    .end local v13           #startIndex:I
    :cond_7
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 323
    :cond_9
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 362
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v11       #index:I
    .restart local v13       #startIndex:I
    .restart local v15       #view:Landroid/view/View;
    :cond_c
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .restart local v4       #uri:Landroid/net/Uri;
    goto/16 :goto_5

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private constructAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 3
    .parameter "item"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private constructDividerView(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 4
    .parameter "label"

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Lcom/android/calendar/event/AttendeesView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040029

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 150
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 152
    return-object v0
.end method

.method private updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;
    .locals 8
    .parameter "item"

    .prologue
    .line 181
    iget-object v0, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 182
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v5, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mView:Landroid/view/View;

    .line 183
    .local v5, view:Landroid/view/View;
    const v6, 0x7f100038

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 184
    .local v4, nameView:Landroid/widget/TextView;
    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-boolean v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v6, :cond_3

    .line 186
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x10

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 193
    :goto_1
    const v6, 0x7f100039

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 194
    .local v3, button:Landroid/widget/ImageButton;
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    invoke-virtual {v3, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    iget-boolean v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-eqz v6, :cond_5

    .line 197
    const v6, 0x7f020038

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    iget-object v6, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00d7

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :goto_3
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    const v6, 0x7f10003a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    .line 208
    .local v2, badgeView:Landroid/widget/QuickContactBadge;
    const/4 v1, 0x0

    .line 210
    .local v1, badge:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 211
    iget-object v6, p0, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v7, v7, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #badge:Landroid/graphics/drawable/Drawable;
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 213
    .restart local v1       #badge:Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz v1, :cond_1

    .line 214
    iput-object v1, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 216
    :cond_1
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget v6, v6, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    if-nez v6, :cond_6

    .line 219
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponsePhotoAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 223
    :goto_4
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget v6, v6, Lcom/android/calendar/CalendarEventModel$Attendee;->mStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    .line 224
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/calendar/event/AttendeesView;->mGrayscaleFilter:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 232
    :goto_5
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    if-eqz v6, :cond_8

    .line 233
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mContactLookupUri:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 237
    :goto_6
    const/16 v6, 0x3c

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 239
    return-object v5

    .line 184
    .end local v1           #badge:Landroid/graphics/drawable/Drawable;
    .end local v2           #badgeView:Landroid/widget/QuickContactBadge;
    .end local v3           #button:Landroid/widget/ImageButton;
    :cond_2
    iget-object v6, v0, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    goto/16 :goto_0

    .line 188
    :cond_3
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    and-int/lit8 v6, v6, -0x11

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto/16 :goto_1

    .line 194
    .restart local v3       #button:Landroid/widget/ImageButton;
    :cond_4
    const/16 v6, 0x8

    goto :goto_2

    .line 200
    :cond_5
    const v6, 0x7f020040

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    iget-object v6, p0, Lcom/android/calendar/event/AttendeesView;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00cf

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 221
    .restart local v1       #badge:Landroid/graphics/drawable/Drawable;
    .restart local v2       #badgeView:Landroid/widget/QuickContactBadge;
    :cond_6
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/calendar/event/AttendeesView;->mDefaultPhotoAlpha:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_4

    .line 226
    :cond_7
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_5

    .line 235
    :cond_8
    iget-object v6, p1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v6, v6, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto :goto_6
.end method

.method private updateDividerViewLabel(Landroid/view/View;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "divider"
    .parameter "label"
    .parameter "count"

    .prologue
    .line 158
    if-gtz p3, :cond_0

    .line 159
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_0
    return-void

    .line 162
    .restart local p1
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public addAttendees(Ljava/lang/String;)V
    .locals 6
    .parameter "attendees"

    .prologue
    .line 386
    iget-object v4, p0, Lcom/android/calendar/event/AttendeesView;->mValidator:Lcom/android/common/Rfc822Validator;

    invoke-static {p1, v4}, Lcom/android/calendar/event/EditEventHelper;->getAddressesFromList(Ljava/lang/String;Lcom/android/common/Rfc822Validator;)Ljava/util/LinkedHashSet;

    move-result-object v1

    .line 388
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    monitor-enter p0

    .line 389
    :try_start_0
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 390
    .local v0, address:Landroid/text/util/Rfc822Token;
    new-instance v2, Lcom/android/calendar/CalendarEventModel$Attendee;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Lcom/android/calendar/CalendarEventModel$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .local v2, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 392
    iget-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/calendar/CalendarEventModel$Attendee;->mName:Ljava/lang/String;

    .line 394
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 396
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    .end local v2           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    return-void
.end method

.method public addAttendees(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, attendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 372
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 374
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    return-void
.end method

.method public addAttendees(Ljava/util/HashMap;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendar/CalendarEventModel$Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 378
    .local p1, attendees:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/calendar/CalendarEventModel$Attendee;>;"
    monitor-enter p0

    .line 379
    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/CalendarEventModel$Attendee;

    .line 380
    .local v0, attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->addOneAttendee(Lcom/android/calendar/CalendarEventModel$Attendee;)V

    goto :goto_0

    .line 382
    .end local v0           #attendee:Lcom/android/calendar/CalendarEventModel$Attendee;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    return-void
.end method

.method public clearAttendees()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 262
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    .line 263
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 264
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 265
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 266
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 264
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 270
    .local v0, attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-object v4, p0, Lcom/android/calendar/event/AttendeesView;->mRecycledPhotos:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 273
    .end local v0           #attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 274
    iput v7, p0, Lcom/android/calendar/event/AttendeesView;->mYes:I

    .line 275
    iput v7, p0, Lcom/android/calendar/event/AttendeesView;->mNo:I

    .line 276
    iput v7, p0, Lcom/android/calendar/event/AttendeesView;->mMaybe:I

    .line 277
    iput v7, p0, Lcom/android/calendar/event/AttendeesView;->mNoResponse:I

    .line 278
    return-void
.end method

.method public contains(Lcom/android/calendar/CalendarEventModel$Attendee;)Z
    .locals 6
    .parameter "attendee"

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 244
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 245
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 246
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 244
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 250
    .local v0, attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-object v4, p1, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    iget-object v5, v5, Lcom/android/calendar/CalendarEventModel$Attendee;->mEmail:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 251
    const/4 v4, 0x1

    .line 254
    .end local v0           #attendeeItem:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    .end local v3           #view:Landroid/view/View;
    :goto_1
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/calendar/CalendarEventModel$Attendee;
    .locals 2
    .parameter "index"

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 488
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 489
    const/4 v1, 0x0

    .line 491
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    iget-object v1, v1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mAttendee:Lcom/android/calendar/CalendarEventModel$Attendee;

    goto :goto_0
.end method

.method public isMarkAsRemoved(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 405
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 408
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    iget-boolean v1, v1, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 497
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;

    .line 498
    .local v0, item:Lcom/android/calendar/event/EditEventHelper$AttendeeItem;
    iget-boolean v1, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/calendar/event/EditEventHelper$AttendeeItem;->mRemoved:Z

    .line 499
    invoke-direct {p0, v0}, Lcom/android/calendar/event/AttendeesView;->updateAttendeeView(Lcom/android/calendar/event/EditEventHelper$AttendeeItem;)Landroid/view/View;

    .line 500
    return-void

    .line 498
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 6
    .parameter "enabled"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    .line 133
    .local v4, visibility:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 134
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 135
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, child:Landroid/view/View;
    const v5, 0x7f100039

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, minusButton:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 138
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 132
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #minusButton:Landroid/view/View;
    .end local v4           #visibility:I
    :cond_1
    const/16 v4, 0x8

    goto :goto_0

    .line 141
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v4       #visibility:I
    :cond_2
    return-void
.end method

.method public setRfc822Validator(Lcom/android/common/Rfc822Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/calendar/event/AttendeesView;->mValidator:Lcom/android/common/Rfc822Validator;

    .line 145
    return-void
.end method
